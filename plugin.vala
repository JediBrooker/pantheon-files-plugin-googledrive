/*
 * Copyright (C) Chris Reid 2013 <chris@reidsy.com>
 * 
 * Marlin-GoogleDrive is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * Marlin-GoogleDrive is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

using Gtk;
using Marlin;


public class Marlin.Plugins.GoogleDrive : Marlin.Plugins.Base
{
    private InfoBar? infobar = null;

    public GoogleDrive()
    {
        stdout.printf("#### GOOGLE DRIVE PLUGIN ####\n");
        stdout.printf("> http://arturoilhuitemoc.deviantart.com/art/Mockup-File-browser-with-cloud-integration-321439858\n");
    }

    public override void update_sidebar(Gtk.Widget sidebar)
    {
        AbstractSidebar _sidebar = (AbstractSidebar) sidebar;
        _sidebar.add_extra_item("Test");
        //Gtk.TreeStore store = _sidebar.store;
        //sb.add_place("HERP DERP");
        /*
        //appends nothing to the tree so the iter is moved to the end of the sidebar
        gtk_tree_store_append (MARLIN_ABSTRACT_SIDEBAR(sidebar)->store, &iter, NULL);
        //inserts an item to the end of the sidebar
        gtk_tree_store_set (MARLIN_ABSTRACT_SIDEBAR(sidebar)->store, &iter,
                            PLACES_SIDEBAR_COLUMN_ICON, NULL,
                            PLACES_SIDEBAR_COLUMN_NAME, _("Online"),
                            PLACES_SIDEBAR_COLUMN_ROW_TYPE, PLACES_STORAGE_CATEGORY,
                            PLACES_SIDEBAR_COLUMN_EJECT, FALSE,
                            PLACES_SIDEBAR_COLUMN_NO_EJECT, TRUE,
                            PLACES_SIDEBAR_COLUMN_BOOKMARK, FALSE,
                            PLACES_SIDEBAR_COLUMN_TOOLTIP, _("Your online storage services"),
                            -1);
        */
    }

    public override void directory_loaded(void* user_data)
    {
        /*
        GOF.File file = ((Object[])user_data)[2] as GOF.File;
        if (file.location.get_uri_scheme () == "trash")
        {
            assert(((Object[])user_data)[1] is GOF.AbstractSlot);
            GOF.AbstractSlot slot = ((Object[])user_data)[1] as GOF.AbstractSlot;
            
            infobar = new InfoBar();
            (infobar.get_content_area() as Gtk.Box).add(new Gtk.Label(_("These items may be deleted by emptying the trash.")));
            infobar.add_button(_("Empty the Trash"), 0);
            infobar.response.connect( (self, response) => {
                Marlin.FileOperations.empty_trash(self);
                });
            infobar.set_message_type(Gtk.MessageType.INFO);

            infobar.set_response_sensitive (0, !TrashMonitor.is_empty ());

            slot.add_extra_widget(infobar);
            infobar.show_all();
        }
        */
    }
}


public Marlin.Plugins.Base module_init()
{
    return new Marlin.Plugins.GoogleDrive();
}
