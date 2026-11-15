package androidx.media3.decoder.av1;

import androidx.media3.common.u;
import androidx.media3.common.util.q;

public abstract class b {

    private static final q f10631a;

    class a extends q {
        a(String... strArr) {
            super(strArr);
        }

        @Override
        protected void b(String str) {
            System.loadLibrary(str);
        }
    }

    static {
        u.a("media3.decoder.av1");
        f10631a = new a("gav1JNI");
    }

    public static boolean a() {
        return f10631a.a();
    }
}
