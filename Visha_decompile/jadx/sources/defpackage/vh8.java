package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class vh8 extends p83 {
    public vh8(t83 t83Var, o83 o83Var, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(o83Var.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = o83Var.c + (j * ((long) o83Var.e));
        this.a = t83Var.o(byteBufferAllocate, j2);
        this.b = t83Var.k(byteBufferAllocate, 8 + j2);
        this.c = t83Var.k(byteBufferAllocate, 16 + j2);
        this.d = t83Var.k(byteBufferAllocate, j2 + 40);
    }
}
