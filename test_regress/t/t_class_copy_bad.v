// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed into the Public Domain, for any use,
// without warranty, 2020 by Wilson Snyder.

class Other;
endclass

class Cls;
   int imembera;
   function int inc_methoda; imembera += 1; return imembera; endfunction
endclass

module t (/*AUTOARG*/);
   initial begin
      Cls c1;
      Other co;
      c1 = new co;  // Bad, incompatible types
   end
endmodule