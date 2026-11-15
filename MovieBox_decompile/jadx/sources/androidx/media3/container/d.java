package androidx.media3.container;

import androidx.media3.common.util.j0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class d {

    public final int f10271a;

    public static final class b extends d {

        public final long f10272b;

        public final List f10273c;

        public final List f10274d;

        public b(int i10, long j10) {
            super(i10);
            this.f10272b = j10;
            this.f10273c = new ArrayList();
            this.f10274d = new ArrayList();
        }

        public void b(b bVar) {
            this.f10274d.add(bVar);
        }

        public void c(c cVar) {
            this.f10273c.add(cVar);
        }

        public b d(int i10) {
            int size = this.f10274d.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = (b) this.f10274d.get(i11);
                if (bVar.f10271a == i10) {
                    return bVar;
                }
            }
            return null;
        }

        public c e(int i10) {
            int size = this.f10273c.size();
            for (int i11 = 0; i11 < size; i11++) {
                c cVar = (c) this.f10273c.get(i11);
                if (cVar.f10271a == i10) {
                    return cVar;
                }
            }
            return null;
        }

        @Override
        public String toString() {
            return d.a(this.f10271a) + " leaves: " + Arrays.toString(this.f10273c.toArray()) + " containers: " + Arrays.toString(this.f10274d.toArray());
        }
    }

    public static final class c extends d {

        public final j0 f10275b;

        public c(int i10, j0 j0Var) {
            super(i10);
            this.f10275b = j0Var;
        }
    }

    public static String a(int i10) {
        return "" + ((char) ((i10 >> 24) & 255)) + ((char) ((i10 >> 16) & 255)) + ((char) ((i10 >> 8) & 255)) + ((char) (i10 & 255));
    }

    public String toString() {
        return a(this.f10271a);
    }

    private d(int i10) {
        this.f10271a = i10;
    }
}
