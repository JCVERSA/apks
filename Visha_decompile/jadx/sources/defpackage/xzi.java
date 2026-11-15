package defpackage;

import com.google.android.gms.internal.ads.zzhm;
import java.nio.ByteBuffer;

public class xzi extends ezi {
    public erj b;
    public final pzi c = new pzi();
    public ByteBuffer d;
    public boolean e;
    public long f;
    public ByteBuffer g;
    public final int h;

    static {
        sme.b("media3.decoder");
    }

    public xzi(int i, int i2) {
        this.h = i;
    }

    @Override
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.e = false;
    }

    public final void j(int i) {
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer == null) {
            this.d = m(i);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i2 = i + iPosition;
        if (iCapacity >= i2) {
            this.d = byteBuffer;
            return;
        }
        ByteBuffer byteBufferM = m(i2);
        byteBufferM.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferM.put(byteBuffer);
        }
        this.d = byteBufferM;
    }

    public final void k() {
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean l() {
        return d(1073741824);
    }

    public final ByteBuffer m(int i) {
        int i2 = this.h;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.d;
        throw new zzhm(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }
}
