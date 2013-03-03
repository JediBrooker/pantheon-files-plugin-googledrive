#include <plugin.h>

MarlinPluginsBase* module_init()
{
	MarlinGoogleDrive* gd = (MarlinGoogleDrive*) marlin_plugins_base_construct(MarlinGoogleDriveClass);
	return MARLIN_PLUGINS_BASE(gd);
}lo