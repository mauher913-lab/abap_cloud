CLASS zmh_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmh_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: it_art TYPE STANDARD TABLE OF zmh_tab_art.

    it_art = VALUE #(
      ( client = sy-mandt id_art = 1 descr = 'Mini colores' descr2 = 'Un mini estuche, con mini colores'
        color = 'Varios' piezas = 12 stock = 10
        url = 'https://www.cyberpuerta.mx/img/product/S/CP-PRISMACOLOR-2153017-ee395a.png' )

      ( client = sy-mandt id_art = 2 descr = 'MONTHLY PLANNER' descr2 = 'deal para planificar tus metas y proyectos'
        color = 'Negro' piezas = 1 stock = 100
        url = 'https://www.cyberpuerta.mx/img/product/S/CP-APOLOSING-APOLOSING21-5-1.png' )

      ( client = sy-mandt id_art = 3 descr = 'Marcadores' descr2 = 'Zebra mildliner colores pasteles'
        color = 'Varios' piezas = 5 stock = 20
        url = 'https://www.cyberpuerta.mx/img/product/S/CP-AZOR-3018358P-b1bc4c.jpg' )


      ( client = sy-mandt id_art = 4 descr = 'Lapiz' descr2 = 'Tomvow 2558 #HB'
        color = 'Negro' piezas = 1 stock = 1
        url = 'https://www.cyberpuerta.mx/img/product/S/CP-MAPED-851759ZT-232c83.jpg' )

      ).

      INSERT zmh_tab_art FROM TABLE @it_art.
  ENDMETHOD.
ENDCLASS.
