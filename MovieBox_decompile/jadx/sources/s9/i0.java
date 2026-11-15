package s9;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.List;

public interface i0 {

    public static final class a {

        public final String f71750a;

        public final int f71751b;

        public final byte[] f71752c;

        public a(String str, int i10, byte[] bArr) {
            this.f71750a = str;
            this.f71751b = i10;
            this.f71752c = bArr;
        }
    }

    public static final class b {

        public final int f71753a;

        public final String f71754b;

        public final List f71755c;

        public final byte[] f71756d;

        public b(int i10, String str, List list, byte[] bArr) {
            this.f71753a = i10;
            this.f71754b = str;
            this.f71755c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f71756d = bArr;
        }
    }

    public interface c {
        i0 a(int i10, b bVar);

        SparseArray createInitialPayloadReaders();
    }

    public static final class d {

        private final String f71757a;

        private final int f71758b;

        private final int f71759c;

        private int f71760d;

        private String f71761e;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        private void d() {
            if (this.f71760d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i10 = this.f71760d;
            this.f71760d = i10 == Integer.MIN_VALUE ? this.f71758b : i10 + this.f71759c;
            this.f71761e = this.f71757a + this.f71760d;
        }

        public String b() {
            d();
            return this.f71761e;
        }

        public int c() {
            d();
            return this.f71760d;
        }

        public d(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + "/";
            } else {
                str = "";
            }
            this.f71757a = str;
            this.f71758b = i11;
            this.f71759c = i12;
            this.f71760d = Integer.MIN_VALUE;
            this.f71761e = "";
        }
    }

    void a(l0 l0Var, i9.n nVar, d dVar);

    void b(com.google.android.exoplayer2.util.d0 d0Var, int i10);

    void seek();
}
