package ig;

import java.io.EOFException;
import kotlin.ranges.RangesKt;
import okio.Buffer;

public abstract class d {
    public static final boolean b(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, RangesKt.i(buffer.size(), 64L));
            for (int i10 = 0; i10 < 16 && !buffer2.exhausted(); i10++) {
                int utf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
