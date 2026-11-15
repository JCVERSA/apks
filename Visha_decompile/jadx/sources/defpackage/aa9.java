package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class aa9 extends q83 {
    public aa9(t83 t83Var, o83 o83Var, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(o83Var.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.a = t83Var.o(byteBufferAllocate, o83Var.d + ((long) (i * o83Var.g)) + 44);
    }
}
