package defpackage;

import java.nio.ByteBuffer;

public final class xne extends mxi {
    public xne(String str) {
        super(str);
    }

    @Override
    public final void c(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
