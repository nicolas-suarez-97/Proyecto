#############################################################################
# Generated by PAGE version 4.13
# in conjunction with Tcl version 8.6
set vTcl(timestamp) ""


#############################################################################
## vTcl Code to Load User Images see vTcl:save2 in file.tcl

catch {package require Img}

foreach img {

        {{[file join / home nicolas Dropbox Universidad {SEMESTRE VI} {2. Análisis Numérico} Proyecto mapa.png]} {user image} user {}}

            } {
# from vTcl:image:dump_create_image_footer
    eval set _file [lindex $img 0]
    vTcl:image:create_new_image\
        $_file [lindex $img 1] [lindex $img 2] [lindex $img 3]
}

if {!$vTcl(borrow)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top37
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top37
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    set site_3_0 $base.fra39
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top37 {base} {
    if {$base == ""} {
        set base .top37
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m38" -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1002x721+349+169
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 3271 1172
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "APP"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set site_3_0 $top.m38
    menu $site_3_0 \
        -activebackground {#d8d8d8} -activeforeground {#000000} \
        -background {#d9d9d9} -font TkMenuFont -foreground {#000000} \
        -tearoff 0 
    frame $top.fra39 \
        -borderwidth 2 -relief groove -background {#d9d9d9} -height 695 \
        -highlightcolor black -width 985 
    vTcl:DefineAlias "$top.fra39" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra39
    entry $site_3_0.ent41 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black -justify center \
        -selectbackground {#c4c4c4} -selectforeground black \
        -textvariable entry2 
    vTcl:DefineAlias "$site_3_0.ent41" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $site_3_0.tCo43 \
        -values 'Papa','Yuca','Cafe' -justify center -state readonly \
        -textvariable combo2 -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo43" "TCombobox1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Ingrese el Valor de la Inversión} 
    vTcl:DefineAlias "$site_3_0.lab44" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab38 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Ingrese el Número de Hectareas} 
    vTcl:DefineAlias "$site_3_0.lab38" "Label2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab39 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Ingrese el Mes a Sembrar} 
    vTcl:DefineAlias "$site_3_0.lab39" "Label3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab40 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Tipo de cultivo} 
    vTcl:DefineAlias "$site_3_0.lab40" "Label4" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background #d9d9d9
    ttk::style configure TButton -foreground #000000
    ttk::style configure TButton -font TkDefaultFont
    ttk::button $site_3_0.tBu41 \
        -command calcular -takefocus {} -text Enviar 
    vTcl:DefineAlias "$site_3_0.tBu41" "TButton1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab42 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {BIENVENIDO A NUESTRA APP, DONDE APRENDERÁ MÁS SOBRE SU CULTIVO} 
    vTcl:DefineAlias "$site_3_0.lab42" "Label5" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab41 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text RESULTADO: 
    vTcl:DefineAlias "$site_3_0.lab41" "Label6" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Precio Esperado} 
    vTcl:DefineAlias "$site_3_0.lab43" "Label7" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab45 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Producción Esperada} 
    vTcl:DefineAlias "$site_3_0.lab45" "Label8" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent48 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black -justify center \
        -selectbackground {#c4c4c4} -selectforeground black \
        -textvariable entry1 
    vTcl:DefineAlias "$site_3_0.ent48" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ffffff} -foreground {#000000} -highlightcolor black \
        -textvariable precio 
    vTcl:DefineAlias "$site_3_0.lab46" "Label9" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ffffff} -foreground {#000000} -highlightcolor black \
        -textvariable prod 
    vTcl:DefineAlias "$site_3_0.lab47" "Label10" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab49 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ffffff} -foreground {#000000} -highlightcolor black 
    vTcl:DefineAlias "$site_3_0.lab49" "Label11" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ffffff} -borderwidth 3 -compound center \
        -foreground {#000000} -highlightcolor black \
        -image [vTcl:image:get_image [file join / home nicolas Dropbox Universidad {SEMESTRE VI} {2. Análisis Numérico} Proyecto mapa.png]] 
    vTcl:DefineAlias "$site_3_0.lab50" "Map" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but52 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -command destroy_window -foreground {#000000} \
        -highlightcolor black -text Salir 
    vTcl:DefineAlias "$site_3_0.but52" "Button1" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $site_3_0.tCo38 \
        \
        -values 'Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre' \
        -justify center -state readonly -textvariable combo1 \
        -foreground {#000000} -background {#ffffff} -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo38" "TCombobox2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab48 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ffffff} -foreground {#000000} -highlightcolor black \
        -text {$} 
    vTcl:DefineAlias "$site_3_0.lab48" "Label12" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.ent41 \
        -in $site_3_0 -x 290 -y 90 -anchor nw -bordermode ignore 
    place $site_3_0.tCo43 \
        -in $site_3_0 -x 290 -y 150 -width 167 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab44 \
        -in $site_3_0 -x 20 -y 60 -anchor nw -bordermode ignore 
    place $site_3_0.lab38 \
        -in $site_3_0 -x 20 -y 90 -anchor nw -bordermode ignore 
    place $site_3_0.lab39 \
        -in $site_3_0 -x 20 -y 120 -anchor nw -bordermode ignore 
    place $site_3_0.lab40 \
        -in $site_3_0 -x 20 -y 150 -anchor nw -bordermode ignore 
    place $site_3_0.tBu41 \
        -in $site_3_0 -x 150 -y 270 -width 163 -relwidth 0 -height 28 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab42 \
        -in $site_3_0 -x 280 -y 20 -anchor nw -bordermode ignore 
    place $site_3_0.lab41 \
        -in $site_3_0 -x 30 -y 400 -anchor nw -bordermode ignore 
    place $site_3_0.lab43 \
        -in $site_3_0 -x 30 -y 470 -anchor nw -bordermode ignore 
    place $site_3_0.lab45 \
        -in $site_3_0 -x 30 -y 510 -anchor nw -bordermode ignore 
    place $site_3_0.ent48 \
        -in $site_3_0 -x 290 -y 60 -anchor nw -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 290 -y 470 -width 159 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 290 -y 510 -width 159 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 470 -y 360 -width 489 -relwidth 0 -height 311 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 470 -y 60 -width 489 -relwidth 0 -height 281 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but52 \
        -in $site_3_0 -x 150 -y 580 -width 159 -relwidth 0 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tCo38 \
        -in $site_3_0 -x 290 -y 120 -width 167 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 290 -y 470 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra39 \
        -in $top -x 10 -y 10 -width 985 -relwidth 0 -height 695 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top37 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

