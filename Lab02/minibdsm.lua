lib = require 'lgi'
gtk = lib.Gtk

gtk.init()
bld = gtk.Builder()
bld:add_from_file('minibdsm.glade')
ui = bld.objects


c1 = gtk.TreeViewColumn {title = 'NAME' ,{gtk.CellRendererText {},{text = 1}} }
c2 = gtk.TreeViewColumn {title = 'FOLMIN' ,{gtk.CellRendererText {},{text = 2}} }
ui.ID_view:append_column(c1)
ui.ID_view:append_column(c2)

function ui.ID_add:on_clicked(...)
name = ui.ID_name.text
value = tonumber(ui.ID_value.text)

podorognik = ui.listst:append()
ui.listst[podorognik] = {[1] = name, [2] = value}
end

ui.win_bd.on_destroy = gtk.main_quit
ui.win_bd:show_all()

gtk.main()
