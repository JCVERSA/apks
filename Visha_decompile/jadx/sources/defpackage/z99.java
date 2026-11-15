package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class z99 extends q83 {
    public z99(t83 t83Var, o83 o83Var, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(o83Var.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.a = t83Var.o(byteBufferAllocate, o83Var.d + ((long) (i * o83Var.g)) + 28);
    }
}
