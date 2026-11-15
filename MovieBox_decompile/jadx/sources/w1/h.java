package w1;

import android.net.Uri;
import androidx.media3.common.u;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class h {

    public final Uri f74097a;

    public final long f74098b;

    public final int f74099c;

    public final byte[] f74100d;

    public final Map f74101e;

    public final long f74102f;

    public final long f74103g;

    public final long f74104h;

    public final String f74105i;

    public final int f74106j;

    public final Object f74107k;

    public static final class b {

        private Uri f74108a;

        private long f74109b;

        private int f74110c;

        private byte[] f74111d;

        private Map f74112e;

        private long f74113f;

        private long f74114g;

        private String f74115h;

        private int f74116i;

        private Object f74117j;

        public h a() {
            androidx.media3.common.util.a.j(this.f74108a, "The uri must be set.");
            return new h(this.f74108a, this.f74109b, this.f74110c, this.f74111d, this.f74112e, this.f74113f, this.f74114g, this.f74115h, this.f74116i, this.f74117j);
        }

        public b b(int i10) {
            this.f74116i = i10;
            return this;
        }

        public b c(byte[] bArr) {
            this.f74111d = bArr;
            return this;
        }

        public b d(int i10) {
            this.f74110c = i10;
            return this;
        }

        public b e(Map map) {
            this.f74112e = map;
            return this;
        }

        public b f(String str) {
            this.f74115h = str;
            return this;
        }

        public b g(long j10) {
            this.f74114g = j10;
            return this;
        }

        public b h(long j10) {
            this.f74113f = j10;
            return this;
        }

        public b i(Uri uri) {
            this.f74108a = uri;
            return this;
        }

        public b j(String str) {
            this.f74108a = Uri.parse(str);
            return this;
        }

        public b k(long j10) {
            this.f74109b = j10;
            return this;
        }

        public b() {
            this.f74110c = 1;
            this.f74112e = Collections.emptyMap();
            this.f74114g = -1L;
        }

        private b(h hVar) {
            this.f74108a = hVar.f74097a;
            this.f74109b = hVar.f74098b;
            this.f74110c = hVar.f74099c;
            this.f74111d = hVar.f74100d;
            this.f74112e = hVar.f74101e;
            this.f74113f = hVar.f74103g;
            this.f74114g = hVar.f74104h;
            this.f74115h = hVar.f74105i;
            this.f74116i = hVar.f74106j;
            this.f74117j = hVar.f74107k;
        }
    }

    static {
        u.a("media3.datasource");
    }

    public static String c(int i10) {
        if (i10 == 1) {
            return "GET";
        }
        if (i10 == 2) {
            return "POST";
        }
        if (i10 == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f74099c);
    }

    public boolean d(int i10) {
        return (this.f74106j & i10) == i10;
    }

    public h e(long j10) {
        long j11 = this.f74104h;
        return f(j10, j11 != -1 ? j11 - j10 : -1L);
    }

    public h f(long j10, long j11) {
        return (j10 == 0 && this.f74104h == j11) ? this : new h(this.f74097a, this.f74098b, this.f74099c, this.f74100d, this.f74101e, this.f74103g + j10, j11, this.f74105i, this.f74106j, this.f74107k);
    }

    public h g(Uri uri) {
        return new h(uri, this.f74098b, this.f74099c, this.f74100d, this.f74101e, this.f74103g, this.f74104h, this.f74105i, this.f74106j, this.f74107k);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f74097a + ", " + this.f74103g + ", " + this.f74104h + ", " + this.f74105i + ", " + this.f74106j + "]";
    }

    public h(Uri uri, long j10, long j11) {
        this(uri, j10, j11, null);
    }

    public h(Uri uri, long j10, long j11, String str) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j10, j11, str, 0, null);
    }

    private h(Uri uri, long j10, int i10, byte[] bArr, Map map, long j11, long j12, String str, int i11, Object obj) {
        byte[] bArr2 = bArr;
        long j13 = j10 + j11;
        androidx.media3.common.util.a.a(j13 >= 0);
        androidx.media3.common.util.a.a(j11 >= 0);
        androidx.media3.common.util.a.a(j12 > 0 || j12 == -1);
        this.f74097a = (Uri) androidx.media3.common.util.a.e(uri);
        this.f74098b = j10;
        this.f74099c = i10;
        this.f74100d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f74101e = Collections.unmodifiableMap(new HashMap(map));
        this.f74103g = j11;
        this.f74102f = j13;
        this.f74104h = j12;
        this.f74105i = str;
        this.f74106j = i11;
        this.f74107k = obj;
    }
}
