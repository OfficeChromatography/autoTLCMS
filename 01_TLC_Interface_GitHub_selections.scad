// Selection GitHub v1.1
// TLC interface automatisation for CAMAG interface
// 2019 February by Tim Häbe

// part names in the code and in the instructions can vary slightly.

use <02_TLC_Interface_GitHub_base.scad>
use <03_TLC_Interface_GitHub_connections.scad>
use <04_TLC_Interface_GitHub_rodholder.scad>
use <05_TLC_Interface_GitHub_Ydrives.scad>
use <06_TLC_Interface_GitHub_plate_frame.scad>
use <07_TLC_Interface_GitHub_top_covers.scad>

////base
//full_base_view();                 //shows the CAMAG TLC-Interface base

////full views
//full_view_selection();    
//full_print_jobs();                //total 34 parts


////Selection: please uncomment for rendering and STL export////


//STL: 01/02_connection_plate
//connection_view();                //just for view
    //connection_plate_print();     //for export (4 parts)

//STL: 03_rod_holder_all 
//rod_holder_view();             //just for view  
    rod_adjust_print();           //for export (4 parts)    
    //rod_holder_print();           //for export (4 parts)    
 
//STL: 04_Y_carrier_all
//Y_carriers_view();             //just for view    
    //Y_carriers_print();           //for export (2 parts)   
    //X_rod_adjust_print_R();       //for export (1 parts)
    //X_rod_adjust_print_L();       //for export (1 parts)    
    //base_traverse_print();        //for export (1 parts)  
    //bearing_cover_R_print();      //for export (2 parts)
    //bearing_cover_L_print();      //for export (2 parts)

//STL: 05_plate_frame_all
//plate_frame_view();             //just for view
    //full_plate_frame_print();      //for export (1 part)
    //X_carrier_side_L_print();      //for export (1 part)
    //X_carrier_side_R_print();      //for export (1 part)

//STL: 06/07_top_covers_all
//top_covers_view();              //just for view
    //stamp_cover_print();           //for export (1 part)
    //stamp_cover_back_print();      //for export (1 part)
    //electronic_port_print();       //for export (1 part)
    //stamp_cover_no_monitor_print();//for export (1 part) if no monitor

//STL: 08/09_monitor_all
//monitor_all_view();             //just for view
    //monitor_back1_print();         //for export (1 part)
    //monitor_back2_print();         //for export (1 part)   
    //monitor_back3_print();         //for export (1 part)
    //monitor_mount_print();         //for export (1 part)

//STL: 10_purger
//purger_view();                  //just for view
    //purger_print();                //for export (1 part)

//STL: 11_nuc_extension
//nuc_view();                     //just for view
    //nuc_print();                   //for export (1 part)


module full_view_selection(){
    full_base_view();
    
    connection_plate_view();      //just for view
    rod_holder_view();            //just for view
    Y_carriers_view();            //just for view
    plate_frame_view();           //just for view
    top_covers_view();            //just for view
    monitor_all_view();           //just for view
    purger_view();                //just for view
    nuc_view();                      //just for view 
    
    ////gearing etc.
    X_gearing();                     //just for view 
    Y_gearing_all();                 //just for view 
    pedestals02();                   //just for view 
}

module full_print_jobs(){
    connection_plate_print();        //for export (4 parts)      
    
    rod_adjust_print();              //for export (4 parts)    
    rod_holder_print();              //for export (4 parts)       
    
    Y_carriers_print();              //for export (2 parts)   
    X_rod_adjust_R_print();          //for export (1 parts)
    X_rod_adjust_L_print();          //for export (1 parts)    
    base_traverse_print();           //for export (1 parts)  
    bearing_cover_R_print();         //for export (2 parts)
    bearing_cover_L_print();         //for export (2 parts)           
    
    full_plate_frame_print();        //for export (1 part)
    X_carrier_side_L_print();        //for export (1 part)
    X_carrier_side_R_print();        //for export (1 part)
   
    stamp_cover_print();             //for export (1 part)
    stamp_cover_back_print();        //for export (1 part)
    electronic_port_print();         //for export (1 part)
    stamp_cover_no_monitor_print();  //for export (1 part) if no monitor

    monitor_back1_print();           //for export (1 part)
    monitor_back2_print();           //for export (1 part)   
    monitor_back3_print();           //for export (1 part)
    monitor_mount_print();           //for export (1 part)

    purger_print();                  //for export (1 part)

    nuc_print();                     //for export (1 part)
}
