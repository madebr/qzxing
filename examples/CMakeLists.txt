if(NOT QZXING_QML)
    message(FATAL_ERROR "Examples need QZXING_QML enabled")
endif()

add_subdirectory(BarcodeEncoder)
add_subdirectory(QMLBarcodeScanner)
add_subdirectory(QZXingDragNDropTest)
add_subdirectory(QZXingLive)
