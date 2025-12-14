## Altium Designer Database Libraries

## Symbol & Footprint Guidelines
Effective date: 2026
CAD: Altium Designer
Standard: IPC-7351

**Symbol Guidelines** 

Grid: 2.5 mm
Font: Tahoma 10

Mandatory symbol parameters:
Value
Package
Tolerance
Silk

Silk parameter (must be transferred to PCB) is mandatory for:
Connectors
Jumpers
LEDs
Test Points (TP)

Comment field for passives (format):
R 0402 100k 1%
C 0402 150n 16V X7R
C Alum 150u 80V TH

Passive parameters (IPC style):
Value: 4.7uF
Package: 1210
Tolerance: 10%
Voltage: optional
Dielectric: capacitors only

**Footprint Guidelines** 

All footprints must comply with IPC-7351
Density level: Nominal (N)

Mandatory footprint parameters (Altium):
Package
IPC_Standard: IPC-7351
Density_Level: N
Silk

Silk parameter (must be transferred to PCB) is mandatory for:
Connectors
Jumpers
LEDs
Test Points (TP)

Courtyard:
Required for all footprints
IPC-7351 nominal rules
Minimum courtyard clearance: 0.25 mm
Placed on mechanical layer

Silkscreen:
Minimum line width: 0.12 mm

Origin and orientation:
Component origin at body center
Standard IPC orientation
Pin 1 marking required, mark ">" with text

Footprint naming:
<Package>_<Mounting>_IPC7351

Examples:
R_0402_SMD_IPC7351
C_1210_SMD_IPC7351
CONN_USB-C_T
