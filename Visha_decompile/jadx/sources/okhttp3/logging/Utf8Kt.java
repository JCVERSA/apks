package okhttp3.logging;

import defpackage.wn8;
import defpackage.y45;
import java.io.EOFException;
import kotlin.Metadata;
import okio.Buffer;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"isProbablyUtf8", "", "Lokio/Buffer;", "okhttp-logging-interceptor"}, k = 2, mv = {1, 6, 0}, xi = 48)
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(Buffer buffer) {
        y45.j(buffer, "<this>");
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, wn8.h(buffer.size(), 64L));
            int i = 0;
            while (i < 16) {
                i++;
                if (buffer2.exhausted()) {
                    return true;
                }
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
