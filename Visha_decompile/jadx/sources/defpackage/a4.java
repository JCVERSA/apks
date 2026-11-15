package defpackage;

import com.google.common.hash.HashCode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class a4 extends z2 {
    public final ByteBuffer a;
    public final int b;
    public final int c;

    public a4(int i) {
        this(i, i);
    }

    @Override
    public final lo4 c(byte[] bArr, int i, int i2) {
        return m(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override
    public final lo4 d(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return m(byteBuffer);
        } finally {
            byteBuffer.order(byteOrderOrder);
        }
    }

    @Override
    public final lo4 g(char c) {
        this.a.putChar(c);
        j();
        return this;
    }

    public abstract HashCode h();

    @Override
    public final HashCode hash() {
        i();
        g65.a(this.a);
        if (this.a.remaining() > 0) {
            l(this.a);
            ByteBuffer byteBuffer = this.a;
            g65.b(byteBuffer, byteBuffer.limit());
        }
        return h();
    }

    public final void i() {
        g65.a(this.a);
        while (this.a.remaining() >= this.c) {
            k(this.a);
        }
        this.a.compact();
    }

    public final void j() {
        if (this.a.remaining() < 8) {
            i();
        }
    }

    public abstract void k(ByteBuffer byteBuffer);

    public abstract void l(ByteBuffer byteBuffer);

    public final lo4 m(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.a.remaining()) {
            this.a.put(byteBuffer);
            j();
            return this;
        }
        int iPosition = this.b - this.a.position();
        for (int i = 0; i < iPosition; i++) {
            this.a.put(byteBuffer.get());
        }
        i();
        while (byteBuffer.remaining() >= this.c) {
            k(byteBuffer);
        }
        this.a.put(byteBuffer);
        return this;
    }

    @Override
    public final lo4 putInt(int i) {
        this.a.putInt(i);
        j();
        return this;
    }

    @Override
    public final lo4 putLong(long j) {
        this.a.putLong(j);
        j();
        return this;
    }

    public a4(int i, int i2) {
        xd8.d(i2 % i == 0);
        this.a = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.b = i2;
        this.c = i;
    }
}
