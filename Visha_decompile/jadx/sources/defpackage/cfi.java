package defpackage;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class cfi {
    public static final int h = 0;
    public final Uri a;
    public final int b;
    public final byte[] c;
    public final Map d;
    public final long e;
    public final long f;
    public final int g;

    static {
        sme.b("media3.datasource");
    }

    public final zci a() {
        return new zci(this, null);
    }

    public final boolean b(int i) {
        return (this.g & i) == i;
    }

    public final String toString() {
        return "DataSpec[" + ShareTarget.METHOD_GET + " " + this.a.toString() + ", " + this.e + ", " + this.f + ", null, " + this.g + "]";
    }

    public cfi(Uri uri, long j, int i, byte[] bArr, Map map, long j2, long j3, String str, int i2, Object obj) {
        boolean z = false;
        boolean z2 = j2 >= 0;
        n7g.d(z2);
        n7g.d(z2);
        if (j3 > 0) {
            z = true;
        } else if (j3 == -1) {
            j3 = -1;
            z = true;
        }
        n7g.d(z);
        uri.getClass();
        this.a = uri;
        this.b = 1;
        this.c = null;
        this.d = Collections.unmodifiableMap(new HashMap(map));
        this.e = j2;
        this.f = j3;
        this.g = i2;
    }

    public cfi(Uri uri, long j, long j2, String str) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j, j2, null, 0, null);
    }
}
