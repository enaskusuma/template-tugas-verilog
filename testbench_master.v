//
// File: testbench_master.v
// JANGAN DIUBAH OLEH MAHASISWA.
// File ini digunakan untuk penilaian otomatis.
//

`timescale 1ns / 1ps
`include "alu.v" // Mengimpor modul yang dibuat mahasiswa

module testbench_master;

  // Sinyal untuk testbench
  reg  [7:0] a, b;
  reg  [1:0] op;
  wire [7:0] result;

  // Instansiasi Device Under Test (DUT) dari alu.v
  alu dut (
    .a(a), 
    .b(b), 
    .op(op), 
    .result(result)
  );

  initial begin
    // Menampilkan judul saat simulasi dimulai
    $display("--- Memulai Pengujian ALU ---");

    // Test Case 1: Penjumlahan
    a = 10; b = 5; op = `ADD; #10;
    if (result === 15) $display("[PASS] Test ADD: 10 + 5 = 15");
    else $display("[FAIL] Test ADD: 10 + 5. Diharapkan 15, Hasil: %d", result);

    // Test Case 2: Pengurangan
    a = 100; b = 40; op = `SUB; #10;
    if (result === 60) $display("[PASS] Test SUB: 100 - 40 = 60");
    else $display("[FAIL] Test SUB: 100 - 40. Diharapkan 60, Hasil: %d", result);

    // Test Case 3: Operasi AND
    a = 8'b11001100; b = 8'b10101010; op = `AND; #10;
    if (result === 8'b10001000) $display("[PASS] Test AND: 11001100 & 10101010");
    else $display("[FAIL] Test AND: Diharapkan 10001000, Hasil: %b", result);

    // Test Case 4: Operasi OR
    a = 8'b11001100; b = 8'b10101010; op = `OR; #10;
    if (result === 8'b11101110) $display("[PASS] Test OR: 11001100 | 10101010");
    else $display("[FAIL] Test OR: Diharapkan 11101110, Hasil: %b", result);

    // Test Case 5: Zero value
    a = 0; b = 0; op = `ADD; #10;
    if (result === 0) $display("[PASS] Test Zero: 0 + 0 = 0");
    else $display("[FAIL] Test Zero: 0 + 0. Diharapkan 0, Hasil: %d", result);

    // Menampilkan pesan selesai dan menghentikan simulasi
    $display("--- Pengujian Selesai ---");
    $finish;
  end

endmodule