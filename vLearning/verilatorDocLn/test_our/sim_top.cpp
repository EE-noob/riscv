#include "Vtop.h"
  #include "verilated.h"
  int main(int argc, char** argv) {
      VerilatedContext* contextp = new VerilatedContext;
      contextp->commandArgs(argc, argv);
      Vtop* top = new Vtop{contextp};
      int test_num=0;
      while (test_num <= 20) {  int a = rand() & 1;
  int b = rand() & 1;
  top->a = a;
  top->b = b;
  top->eval();
  printf("number%d :  a = %d, b = %d, f = %d\n",test_num, a, b, top->f);
  assert(top->f == (a ^ b)); test_num++; }
 
      delete top;
      delete contextp;
      return 0;
  }
