module tb;
  mailbox   mbx = new(2);   //bounded mailbox that can hold upto 2 

    initial begin
    for (int i=0; i < 5; i++) begin
          #1 mbx.put (i);
      $display ("[%0t] Thread0 : Put item #%0d, size =%2d", $time, i, mbx.num());
        end
    end
 
  initial begin
    forever begin
      int idx;
      #2 mbx.get (idx);
      $display ("[%0t] Thread1 : Get item #%0d, size =%2d", $time, idx, mbx.num());
    end
  end
endmodule
