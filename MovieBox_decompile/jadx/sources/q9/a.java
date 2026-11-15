package q9;

import com.google.android.exoplayer2.util.d0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

abstract class a {

    public final int f69406a;

    static final class C0859a extends a {

        public final long f69407b;

        public final List f69408c;

        public final List f69409d;

        public C0859a(int i10, long j10) {
            super(i10);
            this.f69407b = j10;
            this.f69408c = new ArrayList();
            this.f69409d = new ArrayList();
        }

        public void d(C0859a c0859a) {
            this.f69409d.add(c0859a);
        }

        public void e(b bVar) {
            this.f69408c.add(bVar);
        }

        public C0859a f(int i10) {
            int size = this.f69409d.size();
            for (int i11 = 0; i11 < size; i11++) {
                C0859a c0859a = (C0859a) this.f69409d.get(i11);
                if (c0859a.f69406a == i10) {
                    return c0859a;
                }
            }
            return null;
        }

        public b g(int i10) {
            int size = this.f69408c.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = (b) this.f69408c.get(i11);
                if (bVar.f69406a == i10) {
                    return bVar;
                }
            }
            return null;
        }

        @Override
        public String toString() {
            return a.a(this.f69406a) + " leaves: " + Arrays.toString(this.f69408c.toArray()) + " containers: " + Arrays.toString(this.f69409d.toArray());
        }
    }

    static final class b extends a {

        public final d0 f69410b;

        public b(int i10, d0 d0Var) {
            super(i10);
            this.f69410b = d0Var;
        }
    }

    public a(int i10) {
        this.f69406a = i10;
    }

    public static String a(int i10) {
        return "" + ((char) ((i10 >> 24) & 255)) + ((char) ((i10 >> 16) & 255)) + ((char) ((i10 >> 8) & 255)) + ((char) (i10 & 255));
    }

    public static int b(int i10) {
        return i10 & 16777215;
    }

    public static int c(int i10) {
        return (i10 >> 24) & 255;
    }

    public String toString() {
        return a(this.f69406a);
    }
}
