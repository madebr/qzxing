set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(QZXING_QML ON)

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)

add_executable(QZXingDragNDropTest
    main.cpp
    droparea.cpp
    qtquick2applicationviewer/qtquick2applicationviewer.cpp
)

target_include_directories(QZXingDragNDropTest
    PRIVATE
        qtquick2applicationviewer
)

target_link_libraries(QZXingDragNDropTest
    PRIVATE
        Qt5::Widgets
        Qt5::Quick
        qzxing
)

target_compile_definitions(QZXingDragNDropTest
    PRIVATE
        QT_DEPRECATED_WARNINGS
)
