package r3;

import android.util.SparseArray;
import androidx.media3.common.util.p0;
import java.util.Collections;
import java.util.List;

public interface l0 {

    public static final class a {

        public final String f70578a;

        public final int f70579b;

        public final byte[] f70580c;

        public a(String str, int i10, byte[] bArr) {
            this.f70578a = str;
            this.f70579b = i10;
            this.f70580c = bArr;
        }
    }

    public static final class b {

        public final int f70581a;

        public final String f70582b;

        public final int f70583c;

        public final List f70584d;

        public final byte[] f70585e;

        public b(int i10, String str, int i11, List list, byte[] bArr) {
            this.f70581a = i10;
            this.f70582b = str;
            this.f70583c = i11;
            this.f70584d = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f70585e = bArr;
        }

        public int a() {
            int i10 = this.f70583c;
            if (i10 != 2) {
                return i10 != 3 ? 0 : 512;
            }
            return 2048;
        }
    }

    public interface c {
        l0 a(int i10, b bVar);

        SparseArray createInitialPayloadReaders();
    }

    public static final class d {

        private final String f70586a;

        private final int f70587b;

        private final int f70588c;

        private int f70589d;

        private String f70590e;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        private void d() {
            if (this.f70589d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i10 = this.f70589d;
            this.f70589d = i10 == Integer.MIN_VALUE ? this.f70587b : i10 + this.f70588c;
            this.f70590e = this.f70586a + this.f70589d;
        }

        public String b() {
            d();
            return this.f70590e;
        }

        public int c() {
            d();
            return this.f70589d;
        }

        public d(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + "/";
            } else {
                str = "";
            }
            this.f70586a = str;
            this.f70587b = i11;
            this.f70588c = i12;
            this.f70589d = Integer.MIN_VALUE;
            this.f70590e = "";
        }
    }

    void a(androidx.media3.common.util.j0 j0Var, int i10);

    void b(p0 p0Var, k2.t tVar, d dVar);

    void seek();
}
