package defpackage;

import com.google.android.gms.internal.ads.n9;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class r8i {
    public final InputStream a;

    public r8i(InputStream inputStream) {
        this.a = inputStream;
    }

    public static r8i b(byte[] bArr) {
        return new r8i(new ByteArrayInputStream(bArr));
    }

    public final n9 a() throws IOException {
        try {
            return n9.g0(this.a, esi.a());
        } finally {
            this.a.close();
        }
    }
}
