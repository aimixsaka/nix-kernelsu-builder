_: {
  perSystem =
    { pkgs, ... }:
    let
      sources = pkgs.callPackage _sources/generated.nix { };
    in
    {
      kernelsu = {
        oneplus-ace3-lineageos-22_1-official = {
          anyKernelVariant = "kernelsu";
          kernelSU.variant = "official";
          clangVersion = "latest";
          susfs = {
            enable = true;
            inherit (sources.susfs-android14-5_15) src;
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
            # For dae proxy, though still not working due to other reason...
            CONFIG_BPF_STREAM_PARSER=y
          '';
          #oemBootImg = ./boot.img;
        };
        oneplus-ace3-lineageos-22_1-next = {
          anyKernelVariant = "kernelsu";
          clangVersion = "latest";
          kernelSU.variant = "next";
          susfs = {
            enable = true;
            inherit (sources.susfs-android14-5_15) src;
            kernelsuPatch = "${sources.wildplus-kernel-patches.src}/next/0001-kernel-patch-susfs-v1.5.5-to-KernelSU-Next-v1.0.5.patch";
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
            # See https://github.com/backslashxx/KernelSU/issues/5
            "${sources.wildplus-kernel-patches.src}/next/next_hooks.patch"
          ];
          kernelSrc = sources.oneplus-ace3-lineageos-22_1.src;
          kernelConfig = ''
            # For dae proxy, though still not working due to other reason...
            CONFIG_BPF_STREAM_PARSER=y
            # Enable manually VFS Hooks
            CONFIG_KSU_WITH_KPROBES=n
            # See 11. in https://gitlab.com/simonpunk/susfs4ksu/-/tree/gki-android14-5.15
            CONFIG_KSU_SUSFS_SUS_SU=n
          '';
          #oemBootImg = ./boot.img;
        };
      };
    };
}
