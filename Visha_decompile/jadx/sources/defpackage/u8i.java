package defpackage;

import com.google.android.gms.internal.ads.n9;
import java.io.IOException;
import java.io.OutputStream;

public final class u8i {
    public final OutputStream a;

    public u8i(OutputStream outputStream) {
        this.a = outputStream;
    }

    public static u8i b(OutputStream outputStream) {
        return new u8i(outputStream);
    }

    public final void a(n9 n9Var) throws IOException {
        try {
            n9Var.k(this.a);
        } finally {
            this.a.close();
        }
    }
}
