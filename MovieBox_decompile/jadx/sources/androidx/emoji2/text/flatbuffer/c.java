package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class c extends e {
    public static c i(ByteBuffer byteBuffer) {
        return j(byteBuffer, new c());
    }

    public static c j(ByteBuffer byteBuffer, c cVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return cVar.g(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public c g(int i10, ByteBuffer byteBuffer) {
        h(i10, byteBuffer);
        return this;
    }

    public void h(int i10, ByteBuffer byteBuffer) {
        c(i10, byteBuffer);
    }

    public b k(b bVar, int i10) {
        int iB = b(6);
        if (iB != 0) {
            return bVar.g(a(d(iB) + (i10 * 4)), this.f8774b);
        }
        return null;
    }

    public int l() {
        int iB = b(6);
        if (iB != 0) {
            return e(iB);
        }
        return 0;
    }

    public int m() {
        int iB = b(4);
        if (iB != 0) {
            return this.f8774b.getInt(iB + this.f8773a);
        }
        return 0;
    }
}
