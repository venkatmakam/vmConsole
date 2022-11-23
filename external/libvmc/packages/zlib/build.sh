PACKAGE_VERSION="1.2.13"
PACKAGE_SRCURL="https://www.zlib.net/zlib-$PACKAGE_VERSION.tar.xz"
PACKAGE_SHA256="d14c38e313afc35a9a8760dadf26042f51ea0f5d154b0630a31da0540107fb98"

builder_step_configure() {
	CFLAGS+=" $CPPFLAGS -fPIC"
	LDFLAGS+=" -fPIC"
	"$PACKAGE_SRCDIR"/configure \
		--prefix="$PACKAGE_INSTALL_PREFIX" --static
}
