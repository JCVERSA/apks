package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

public final class b extends e {
    public b g(int i10, ByteBuffer byteBuffer) {
        h(i10, byteBuffer);
        return this;
    }

    public void h(int i10, ByteBuffer byteBuffer) {
        c(i10, byteBuffer);
    }

    public int i(int i10) {
        int iB = b(16);
        if (iB != 0) {
            return this.f8774b.getInt(d(iB) + (i10 * 4));
        }
        return 0;
    }

    public int j() {
        int iB = b(16);
        if (iB != 0) {
            return e(iB);
        }
        return 0;
    }

    public boolean k() {
        int iB = b(6);
        return (iB == 0 || this.f8774b.get(iB + this.f8773a) == 0) ? false : true;
    }

    public short l() {
        int iB = b(14);
        if (iB != 0) {
            return this.f8774b.getShort(iB + this.f8773a);
        }
        return (short) 0;
    }

    public int m() {
        int iB = b(4);
        if (iB != 0) {
            return this.f8774b.getInt(iB + this.f8773a);
        }
        return 0;
    }

    public short n() {
        int iB = b(8);
        if (iB != 0) {
            return this.f8774b.getShort(iB + this.f8773a);
        }
        return (short) 0;
    }

    public short o() {
        int iB = b(12);
        if (iB != 0) {
            return this.f8774b.getShort(iB + this.f8773a);
        }
        return (short) 0;
    }
}
