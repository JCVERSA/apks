package t2;

import androidx.media3.common.x;
import java.nio.ByteBuffer;

public abstract class c implements a {
    @Override
    public final x a(b bVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(bVar.f10606c);
        androidx.media3.common.util.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        return b(bVar, byteBuffer);
    }

    protected abstract x b(b bVar, ByteBuffer byteBuffer);
}
