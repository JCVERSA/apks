package defpackage;

import java.nio.ByteBuffer;

public abstract class rii {
    public static final eri a = eri.b(new byte[0]);

    public static final eri a(int i) {
        return eri.b(ByteBuffer.allocate(5).put((byte) 0).putInt(i).array());
    }

    public static final eri b(int i) {
        return eri.b(ByteBuffer.allocate(5).put((byte) 1).putInt(i).array());
    }
}
