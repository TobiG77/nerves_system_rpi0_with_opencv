use Mix.Config

version =
    Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.trim

pkg = :nerves_system_rpi0_with_opencv

config pkg, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig"
  ],
  checksum: [
    "nerves_defconfig",
    "rootfs_overlay",
    "linux-4.4.defconfig",
    "fwup.conf",
    "cmdline.txt",
    "config.txt",
    "post-createfs.sh",
    "VERSION"
  ]
