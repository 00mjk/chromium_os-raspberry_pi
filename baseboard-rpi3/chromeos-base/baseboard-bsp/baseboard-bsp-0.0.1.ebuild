# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="5"

DESCRIPTION="Baseboard BSP definition"
HOMEPAGE="https://fydeos.io"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
  chromeos-base/rpi-boot-bin
  chromeos-base/rpi-firmware
  media-libs/raspberrypi-userland
  sys-apps/haveged
"

DEPEND="${RDEPEND}"

S=$WORKDIR

src_install() {
  insinto /etc/init
  doins ${FILESDIR}/powerd/never-suspend.conf
}
