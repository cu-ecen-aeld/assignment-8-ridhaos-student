######################################################################################
#
# ldd
#
######################################################################################

LDD_VERSION = ecd408f4518155e2eb2fe83fde8dde2676e76fcf
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-ridhaos-student.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/etc/init.d/module_load
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/etc/init.d/module_unload	
endef

$(eval $(kernel-module))
$(eval $(generic-package))
