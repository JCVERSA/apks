package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class d43 extends n83 {
    public d43(t83 t83Var, o83 o83Var, long j, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(o83Var.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + ((long) (i * 8));
        this.a = t83Var.o(byteBufferAllocate, j2);
        this.b = t83Var.o(byteBufferAllocate, j2 + 4);
    }
}
