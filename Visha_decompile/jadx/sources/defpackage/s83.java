package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class s83 extends o83 {
    public final t83 j;

    public s83(boolean z, t83 t83Var) {
        this.a = z;
        this.j = t83Var;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = t83Var.h(byteBufferAllocate, 16L);
        this.c = t83Var.k(byteBufferAllocate, 32L);
        this.d = t83Var.k(byteBufferAllocate, 40L);
        this.e = t83Var.h(byteBufferAllocate, 54L);
        this.f = t83Var.h(byteBufferAllocate, 56L);
        this.g = t83Var.h(byteBufferAllocate, 58L);
        this.h = t83Var.h(byteBufferAllocate, 60L);
        this.i = t83Var.h(byteBufferAllocate, 62L);
    }

    @Override
    public n83 a(long j, int i) {
        return new e43(this.j, this, j, i);
    }

    @Override
    public p83 b(long j) {
        return new vh8(this.j, this, j);
    }

    @Override
    public q83 c(int i) {
        return new aa9(this.j, this, i);
    }
}
