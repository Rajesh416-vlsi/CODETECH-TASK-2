# CODETECH-TASK2    :RAM DESIGN
**COMPANY**         :CODETECH IT SOLUTIONS
**NAME**            :RAJESH BOKKA
**INTERN ID**       :CT04WA63
**DOMAIN**          :VLSI
**BATCH DURATION**  :MARCH 15th,2025 TO APRIL 15th,2025
**MENTOR**          :NELLA SANTHOSH KUMAR


**Overview**
This project provides the Verilog implementation of a 4-bit RAM (Random Access Memory) module. The module is designed for a 4-bit wide data bus, with the ability to store and retrieve data at different memory locations. It accepts a clock signal, write enable signal, 4-bit data input, and 4-bit address input. Based on the write enable signal, it either writes the provided data to a specific memory location or reads from the location and outputs the data.

This document provides an explanation of the module's design, functionality, and usage.

**Functional Description**
Inputs and Outputs
The RAM module has the following inputs and outputs:

**Inputs**:
**clk **(1 bit): The clock signal used for synchronizing the write and read operations. The module is designed to be clocked, meaning the state of the memory changes on the rising edge of the clock signal.

**write_en** (1 bit): A control signal that determines whether the operation is a write or a read. If write_en is high (1), the module will write data to the memory. If write_en is low (0), it will perform a read operation from the memory.

**data_in** (4 bits): The data input to the RAM module. This 4-bit wide data is written to the memory when write_en is high.

**address** (4 bits): The address input specifying the location in memory where the data should be written or read from. Since the address is 4 bits wide, the RAM can store a total of 16 different values (i.e., 16 memory locations, ranging from address 0 to 15).

**Outputs**:
**data_out** (4 bits): The 4-bit wide output data that is read from the RAM. The data corresponding to the provided address is output if write_en is low.

**Memory Structure**
The RAM module is implemented using an array of registers to simulate the memory storage. Specifically, a 16x4-bit register array, ram_block, is used to represent 16 memory locations, each capable of holding a 4-bit value.

*KEY OPERATIONS**
**Write Operation**
When the write_en signal is high, the module writes the data_in value to the memory location specified by the address input. The write operation occurs on the rising edge of the clock. The non-blocking assignment <= is used for writing to the memory, ensuring that the assignment takes effect in the next simulation cycle.

**Read Operation**
When the write_en signal is low, the module outputs the value stored at the memory location specified by the address input. The data_out is updated with the value stored in the ram_block[address] during the rising edge of the clock. This ensures synchronous behavior.

**output of the TASK**:
![RAM](https://github.com/user-attachments/assets/57947916-fff0-4bb5-bfea-51fac26755c4)




This 4-bit RAM module is a basic example of implementing synchronous memory in Verilog. It demonstrates how to design a simple memory structure with read and write operations, providing a useful template for more complex memory designs in digital systems. It also emphasizes the importance of using proper timing and synchronization in hardware design to ensure reliable and predictable behavior.

This module can be expanded or modified to accommodate more complex memory requirements, such as adding additional control signals, increasing the data width, or incorporating different memory types (e.g., ROM, dual-port RAM).
