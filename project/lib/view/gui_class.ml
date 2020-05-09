(** [window] is a class generated by [lablgladecc3] with [gui.glace] xml. *)

class window ?translation_domain () =
  let builder = GBuilder.builder ?translation_domain () in
  let _ = builder#add_objects_from_file "resources/gui.glade" ["window"] in
  object
    val toplevel =
      new GWindow.window (GtkWindow.Window.cast (builder#get_object "window"))
    method toplevel = toplevel
    val window =
      new GWindow.window (GtkWindow.Window.cast (builder#get_object "window"))
    method window = window
    val hor =
      new GPack.box (GtkPack.Box.cast (builder#get_object "hor"))
    method hor = hor
    val leftv =
      new GPack.box (GtkPack.Box.cast (builder#get_object "leftv"))
    method leftv = leftv
    val agent =
      new GPack.grid (GtkPack.Grid.cast (builder#get_object "agent"))
    method agent = agent
    val input =
      new GEdit.entry (GtkEdit.Entry.cast (builder#get_object "input"))
    method input = input
    val rightv =
      new GPack.box (GtkPack.Box.cast (builder#get_object "rightv"))
    method rightv = rightv
    val win =
      new GPack.grid (GtkPack.Grid.cast (builder#get_object "win"))
    method win = win
    val buttongrid =
      new GPack.box (GtkPack.Box.cast (builder#get_object "buttongrid"))
    method buttongrid = buttongrid
    val compile =
      new GButton.button (GtkButton.Button.cast (builder#get_object "compile"))
    method compile = compile
    val next =
      new GButton.button (GtkButton.Button.cast (builder#get_object "next"))
    method next = next
    val play =
      new GButton.button (GtkButton.Button.cast (builder#get_object "play"))
    method play = play
    val retry =
      new GButton.button (GtkButton.Button.cast (builder#get_object "retry"))
    method retry = retry
    val msg =
      new GText.view (GtkText.View.cast (builder#get_object "msg"))
    method msg = msg
    val instr =
      new GText.view (GtkText.View.cast (builder#get_object "instr"))
    method instr = instr
    val quit =
      new GButton.button (GtkButton.Button.cast (builder#get_object "quit"))
    method quit = quit
    method reparent parent =
      hor#misc#reparent parent;
      toplevel#destroy ()
  end