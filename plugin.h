#ifndef MARLIN_GOOGLEDRIVE_H
#define MARLIN_GOOGLEDRIVE_H

#include <gtk/gtk.h>
#include <marlincore.h>

#define MARLIN_TYPE_GOOGLEDRIVE (marlin_googledrive_get_type())

typedef struct _MarlinGoogleDrive MarlinGoogleDrive;
typedef struct _MarlinGoogleDriveClass MarlinGoogleDriveClass;

struct _MarlinGoogleDrive {
	MarlinPluginsBase parent_instance;
};

struct _MarlinGoogleDriveClass {
	MarlinPluginsBaseClass parent_class;
};

#endif