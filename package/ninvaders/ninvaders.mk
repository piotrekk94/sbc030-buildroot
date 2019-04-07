#############
# nInvaders #
#############
NINVADERS_VERSION = 0.1.1
NINVADERS_SOURCE = ninvaders-$(NINVADERS_VERSION).tar.gz
NINVADERS_SITE = https://netix.dl.sourceforge.net/project/ninvaders/ninvaders/$(NINVADERS_VERSION)

define NINVADERS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define NINVADERS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/nInvaders $(TARGET_DIR)/usr/bin/nInvaders
endef

$(eval $(generic-package))
