package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

public class e {

    protected int f8773a;

    protected ByteBuffer f8774b;

    private int f8775c;

    private int f8776d;

    f f8777e = f.a();

    protected int a(int i10) {
        return i10 + this.f8774b.getInt(i10);
    }

    protected int b(int i10) {
        if (i10 < this.f8776d) {
            return this.f8774b.getShort(this.f8775c + i10);
        }
        return 0;
    }

    protected void c(int i10, ByteBuffer byteBuffer) {
        this.f8774b = byteBuffer;
        if (byteBuffer == null) {
            this.f8773a = 0;
            this.f8775c = 0;
            this.f8776d = 0;
        } else {
            this.f8773a = i10;
            int i11 = i10 - byteBuffer.getInt(i10);
            this.f8775c = i11;
            this.f8776d = this.f8774b.getShort(i11);
        }
    }

    protected int d(int i10) {
        int i11 = i10 + this.f8773a;
        return i11 + this.f8774b.getInt(i11) + 4;
    }

    protected int e(int i10) {
        int i11 = i10 + this.f8773a;
        return this.f8774b.getInt(i11 + this.f8774b.getInt(i11));
    }

    protected int f(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }
}
