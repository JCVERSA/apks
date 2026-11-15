package defpackage;

import android.util.SparseArray;
import java.util.Collections;
import java.util.List;

public interface nab {

    public static final class a {
        public final String a;
        public final int b;
        public final byte[] c;

        public a(String str, int i, byte[] bArr) {
            this.a = str;
            this.b = i;
            this.c = bArr;
        }
    }

    public static final class b {
        public final int a;
        public final String b;
        public final List c;
        public final byte[] d;

        public b(int i, String str, List list, byte[] bArr) {
            this.a = i;
            this.b = str;
            this.c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.d = bArr;
        }
    }

    public interface c {
        nab a(int i, b bVar);

        SparseArray createInitialPayloadReaders();
    }

    public static final class d {
        public final String a;
        public final int b;
        public final int c;
        public int d;
        public String e;

        public d(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public void a() {
            int i = this.d;
            this.d = i == Integer.MIN_VALUE ? this.b : i + this.c;
            this.e = this.a + this.d;
        }

        public String b() {
            d();
            return this.e;
        }

        public int c() {
            d();
            return this.d;
        }

        public final void d() {
            if (this.d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.a = str;
            this.b = i2;
            this.c = i3;
            this.d = Integer.MIN_VALUE;
            this.e = "";
        }
    }

    void a(qw7 qw7Var, int i);

    void b(poa poaVar, qk3 qk3Var, d dVar);

    void seek();
}
