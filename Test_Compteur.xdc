# Cheat sheet :
# Switches:
# R2, T1, U1, W2, R3, T2, T3, V2, W13, W14, V15, W15, W17, W16, V16, V17
# Buttons:
# T18, W19, U18, T17, U17
# LEDs:
# L1, P1, N3, P3, U3, W3, V3, V13, V14, U14, U15, W18, V19, U19, E19, U16

#Horloge sur un bouton
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CK]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports CK]

#Horloge avec un oscillateur
set_property -dist { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports { CK} ]
create_clock -add -name sysclk_pin -period 10.00 -waveform { 0 5 } [get_ports { CK } ]

# Signal binaire
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports RST]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports LOAD]
set_property -dict {PACKAGE_PIN W2 IOSTANDARD LVCMOS33} [get_ports SENS]
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports EN]

# Signal vectoriel
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {Din[0]}]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports {Din[1]}]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {Din[2]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {Din[3]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {Din[4]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {Din[5]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {Din[6]}]
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {Din[7]}]

set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {Dout[0]}]
set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVCMOS33} [get_ports {Dout[1]}]
set_property -dict {PACKAGE_PIN W3 IOSTANDARD LVCMOS33} [get_ports {Dout[2]}]
set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS33} [get_ports {Dout[3]}]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports {Dout[4]}]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports {Dout[5]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {Dout[6]}]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports {Dout[7]}]