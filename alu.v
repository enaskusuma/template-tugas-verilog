//
// File: alu.v
// Mahasiswa hanya boleh mengedit file ini.
//

// Definisi makro untuk kode operasi (opcode)
`define ADD 2'b00
`define SUB 2'b01
`define AND 2'b10
`define OR  2'b11

module alu (
  // Deklarasi port
  input  [7:0] a,
  input  [7:0] b,
  input  [1:0] op,
  output reg [7:0] result
);

  // ===============================================
  // === MAHASISWA WAJIB MENGISI BAGIAN DI BAWAH INI ===
  // ===============================================
  always @(*) begin
    case (op)
      `ADD: begin
        result = a + b;
      end
      `SUB: begin
        result = a - b;
      end
      
      // TODO: Implementasikan operasi AND
      `AND: begin
        result = a & b; 
      end

      // TODO: Implementasikan operasi OR
      `OR: begin
        result = a | b;
      end

      default: begin
        result = 8'bxxxxxxxx; // Nilai default jika operasi tidak dikenal
      end
    endcase
  end
  // ===============================================
  // ===      BATAS AKHIR BAGIAN MAHASISWA       ===
  // ===============================================

endmodule