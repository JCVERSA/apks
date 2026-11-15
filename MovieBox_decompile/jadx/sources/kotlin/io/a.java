package kotlin.io;

import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;

final class a extends ByteArrayOutputStream {
    public a(int i10) {
        super(i10);
    }

    public final byte[] d() {
        byte[] buf = ((ByteArrayOutputStream) this).buf;
        Intrinsics.g(buf, "buf");
        return buf;
    }
}
