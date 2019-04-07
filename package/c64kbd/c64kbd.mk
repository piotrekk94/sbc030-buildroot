C64KBD_VERSION = 9d74283
C64KBD_SITE = https://github.com/piotrekk94/sbc030-kbd-linux
C64KBD_SITE_METHOD = git

define C64KBD_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define C64KBD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/c64kbd $(TARGET_DIR)/sbin/c64kbd
endef

define C64KBD_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 -D package/c64kbd/S21c64kbd \
		$(TARGET_DIR)/etc/init.d/S21c64kbd
endef

$(eval $(generic-package))
