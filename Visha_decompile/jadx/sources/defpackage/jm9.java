package defpackage;

import com.google.android.exoplayer2.metadata.Metadata;
import java.nio.ByteBuffer;

public abstract class jm9 implements co6 {
    @Override
    public final Metadata a(eo6 eo6Var) {
        ByteBuffer byteBuffer = (ByteBuffer) zi.e(eo6Var.d);
        zi.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (eo6Var.g()) {
            return null;
        }
        return b(eo6Var, byteBuffer);
    }

    public abstract Metadata b(eo6 eo6Var, ByteBuffer byteBuffer);
}
