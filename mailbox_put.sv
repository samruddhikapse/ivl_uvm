program mailbox;
  mailbox m1;
  int i,j;
  initial
    begin
      m1 = new;  // unbounded mailbox, it can store unlimited values
      repeat(5) 
        begin
          m1.put(i); //put value in mailbox
          i++;
          $display("Unbounded mail box value of i = %d",i);
          
        end
    end
endprogram
