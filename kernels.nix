_: {
  perSystem =
    { pkgs, ... }:
    let
      sources = pkgs.callPackage _sources/generated.nix { };
    in
    {
      kernelsu = {
        oneplus-ace3-lineageos-22_1 = {
          anyKernelVariant = "kernelsu";
          clangVersion = "latest";
          kernelSU.variant = "next";
          susfs = {
            enable = true;
            inherit (sources.susfs-android14-5_15) src;
            kernelsuPatch = "${sources.wildplus-kernel-patches.src}/0001-kernel-patch-susfs-v1.5.5-to-KernelSU-Next-v1.0.5.patch";
          };
          kernelDefconfigs = [
            "gki_defconfig "
            "vendor/kalama_GKI.config "
            "vendor/oplus/kalama_GKI.config "
            "vendor/debugfs.config"
          ];
          kernelImageName = "Image";
          kernelMakeFlags = [
            "KCFLAGS=\"-w\""
            "KCPPFLAGS=\"-w\""
          ];
          kernelPatches = [
            "${sources.wildplus-kernel-patches.src}/69_hide_stuff.patch"
          ];
          kernelSrc = sources.oneplus-ace3-lineageos-22_1.src;
          kernelConfig = ''
            CONFIG_BPF_STREAM_PARSER=y
          '';
          #oemBootImg = ./boot.img;
        };
      };
    };
}
