package defpackage;

import java.nio.ByteBuffer;

public abstract class oxi extends mxi implements qne {
    public int j;

    public oxi(String str) {
        super("mvhd");
    }

    public final int e() {
        if (!this.c) {
            d();
        }
        return this.j;
    }

    public final long f(ByteBuffer byteBuffer) {
        this.j = pne.c(byteBuffer.get());
        pne.d(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
