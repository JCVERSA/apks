package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class e43 extends n83 {
    public e43(t83 t83Var, o83 o83Var, long j, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(o83Var.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + ((long) (i * 16));
        this.a = t83Var.k(byteBufferAllocate, j2);
        this.b = t83Var.k(byteBufferAllocate, j2 + 8);
    }
}
