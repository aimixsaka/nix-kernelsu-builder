{
  stdenv,
  lib,
  zip,
  callPackage,
  # User args
  arch,
  kernel,
  kernelImageName,
  variant,
  initBootSupport,
  ...
}:
let
  sources = callPackage ../_sources/generated.nix { };
in
stdenv.mkDerivation {
  name = "anykernel-zip";
  inherit (sources."anykernel-${variant}") src;

  nativeBuildInputs = [ zip ];

  # BLOCK=auto not always working...
  postPatch =
    lib.optionalString (variant == "osm0sis") ''
      sed -i 's/do.devicecheck=1/do.devicecheck=0/g' anykernel.sh
      sed -i 's/IS_SLOT_DEVICE=0;/IS_SLOT_DEVICE=auto;/g' anykernel.sh
    ''
    + (
      if initBootSupport then
        ''
          sed -i 's!BLOCK=/dev/block/platform/omap/omap_hsmmc.0/by-name/boot;!BLOCK=boot;!g' anykernel.sh
          sed -i 's/^dump_boot;/split_boot;/g' anykernel.sh
          sed -i 's/^write_boot;/flash_boot;/g' anykernel.sh
        ''
      else
        ''
          sed -i 's!BLOCK=/dev/block/platform/omap/omap_hsmmc.0/by-name/boot;!BLOCK=auto;!g' anykernel.sh
        ''
    );

  buildPhase = ''
    runHook preBuild

    cp ${kernel}/arch/${arch}/boot/${kernelImageName} .
    if [ -f ${kernel}/arch/${arch}/boot/dtbo.img ]; then
      cp ${kernel}/arch/${arch}/boot/dtbo.img .
    fi

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out
    zip -r $out/anykernel.zip *

    runHook postInstall
  '';

  dontFixup = true;
}
