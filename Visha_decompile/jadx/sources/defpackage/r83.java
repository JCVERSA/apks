package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class r83 extends o83 {
    public final t83 j;

    public r83(boolean z, t83 t83Var) {
        this.a = z;
        this.j = t83Var;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = t83Var.h(byteBufferAllocate, 16L);
        this.c = t83Var.o(byteBufferAllocate, 28L);
        this.d = t83Var.o(byteBufferAllocate, 32L);
        this.e = t83Var.h(byteBufferAllocate, 42L);
        this.f = t83Var.h(byteBufferAllocate, 44L);
        this.g = t83Var.h(byteBufferAllocate, 46L);
        this.h = t83Var.h(byteBufferAllocate, 48L);
        this.i = t83Var.h(byteBufferAllocate, 50L);
    }

    @Override
    public n83 a(long j, int i) {
        return new d43(this.j, this, j, i);
    }

    @Override
    public p83 b(long j) {
        return new uh8(this.j, this, j);
    }

    @Override
    public q83 c(int i) {
        return new z99(this.j, this, i);
    }
}
