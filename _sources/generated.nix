# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  anykernel-kernelsu = {
    pname = "anykernel-kernelsu";
    version = "ee30bad85a483cad2b1e4ff34e69f983a04f875a";
    src = fetchFromGitHub {
      owner = "Kernel-SU";
      repo = "AnyKernel3";
      rev = "ee30bad85a483cad2b1e4ff34e69f983a04f875a";
      fetchSubmodules = false;
      sha256 = "sha256-QJS4+1teNcgUOy2gD+KuoEG/9pUNd/6uSH84AkAlVoQ=";
    };
    date = "2023-10-30";
  };
  anykernel-osm0sis = {
    pname = "anykernel-osm0sis";
    version = "db90e19aae369c9c10b956a08003cee3958d50a0";
    src = fetchFromGitHub {
      owner = "osm0sis";
      repo = "AnyKernel3";
      rev = "db90e19aae369c9c10b956a08003cee3958d50a0";
      fetchSubmodules = false;
      sha256 = "sha256-MofvAxGUB4kcOmm42u3rDFPR7Pj63OjaC4FRP9jAy0k=";
    };
    date = "2024-12-17";
  };
  gcc-aarch64-linux-android = {
    pname = "gcc-aarch64-linux-android";
    version = "5797d7f622321e734558bd3372a9ab5ad6e6a48e";
    src = fetchFromGitHub {
      owner = "kindle4jerry";
      repo = "aarch64-linux-android-4.9-bakup";
      rev = "5797d7f622321e734558bd3372a9ab5ad6e6a48e";
      fetchSubmodules = false;
      sha256 = "sha256-ZrQmFyiDOKg+qcgdpZqtz+LgDDaao2W27kdZZ2As8XU=";
    };
    date = "2020-02-22";
  };
  gcc-arm-linux-androideabi = {
    pname = "gcc-arm-linux-androideabi";
    version = "3ecb542702c2ca0e502533c3f6d02f0f06f584f1";
    src = fetchFromGitHub {
      owner = "KudProject";
      repo = "arm-linux-androideabi-4.9";
      rev = "3ecb542702c2ca0e502533c3f6d02f0f06f584f1";
      fetchSubmodules = false;
      sha256 = "sha256-5aF2Pl+h6J8/5TfQf2ojp3FCnoKakWH6KBCkWdy5ho8=";
    };
    date = "2019-11-25";
  };
  kernelsu-next = {
    pname = "kernelsu-next";
    version = "v1.0.5";
    src = fetchgit {
      url = "https://github.com/KernelSU-Next/KernelSU-Next.git";
      rev = "v1.0.5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-XAsZH9NJX4WaKico03T542JZsbL4Gdb5WuURWg6VIRQ=";
    };
  };
  kernelsu-next-revision-code = {
    pname = "kernelsu-next-revision-code";
    version = "12430";
    src = fetchurl {
      url = "https://example.com";
      sha256 = "sha256-6o+sfGX7WJsNU1YPUlH3T56bJDR43Laz6nm142RJyNk=";
    };
  };
  kernelsu-stable = {
    pname = "kernelsu-stable";
    version = "v0.9.5";
    src = fetchgit {
      url = "https://github.com/tiann/KernelSU.git";
      rev = "v0.9.5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-pvaL6KEB7X3s8zyLQSPhBhoXaNdVDthH7HnAZRE9JYk=";
    };
  };
  kernelsu-stable-revision-code = {
    pname = "kernelsu-stable-revision-code";
    version = "11872";
    src = fetchurl {
      url = "https://example.com";
      sha256 = "sha256-6o+sfGX7WJsNU1YPUlH3T56bJDR43Laz6nm142RJyNk=";
    };
  };
  oneplus-ace3-lineageos-22_1 = {
    pname = "oneplus-ace3-lineageos-22_1";
    version = "e4621a167b4cd806178eb76f1c481d8ee07a0e7a";
    src = fetchFromGitHub {
      owner = "OnePlus12R-development";
      repo = "android_kernel_oneplus_sm8550";
      rev = "e4621a167b4cd806178eb76f1c481d8ee07a0e7a";
      fetchSubmodules = false;
      sha256 = "sha256-grgtJulkBH3IgNlaQX/u91Vq8j2wMTv6rEt3dWwm5gE=";
    };
    date = "2025-02-23";
  };
  susfs-android14-5_15 = {
    pname = "susfs-android14-5_15";
    version = "9c3bd9a87710b871574b8d7e1f8099cb8db91fe3";
    src = fetchgit {
      url = "https://gitlab.com/simonpunk/susfs4ksu.git";
      rev = "9c3bd9a87710b871574b8d7e1f8099cb8db91fe3";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-tm2ZrvpPhPD1H+DhZU8CjRi0X1gU6OXcd3BSjoWQ5OQ=";
    };
    date = "2025-02-23";
  };
  wildplus-kernel-patches = {
    pname = "wildplus-kernel-patches";
    version = "cbc169cb159cf5d11b9c402db74898d53766449d";
    src = fetchFromGitHub {
      owner = "WildPlusKernel";
      repo = "kernel_patches";
      rev = "cbc169cb159cf5d11b9c402db74898d53766449d";
      fetchSubmodules = false;
      sha256 = "sha256-ikC50g77+/F14BoPDwv9NFBcwoQg2DAcrLFJHdJ/4PI=";
    };
    date = "2025-03-02";
  };
}
