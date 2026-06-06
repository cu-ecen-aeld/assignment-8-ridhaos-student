######################################################################################
#
# ldd
#
######################################################################################

LDD_VERSION = b5a1b1ff14565fc7fdf95fd452ae7d7c30806ab8
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-ridhaos-student.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/etc/init.d/module_load
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/etc/init.d/module_unload
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/etc/init.d/scull_load
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/etc/init.d/scull_unload

endef

$(eval $(kernel-module))
$(eval $(generic-package))
