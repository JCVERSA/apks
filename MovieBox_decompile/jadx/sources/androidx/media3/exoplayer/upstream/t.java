package androidx.media3.exoplayer.upstream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class t {

    private static final Comparator f12708h = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return t.g((t.b) obj, (t.b) obj2);
        }
    };

    private static final Comparator f12709i = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return t.h((t.b) obj, (t.b) obj2);
        }
    };

    private final int f12710a;

    private int f12714e;

    private int f12715f;

    private int f12716g;

    private final b[] f12712c = new b[5];

    private final ArrayList f12711b = new ArrayList();

    private int f12713d = -1;

    static class b {

        public int f12717a;

        public int f12718b;

        public float f12719c;

        private b() {
        }
    }

    public t(int i10) {
        this.f12710a = i10;
    }

    private void d() {
        if (this.f12713d != 1) {
            Collections.sort(this.f12711b, f12708h);
            this.f12713d = 1;
        }
    }

    private void e() {
        if (this.f12713d != 0) {
            Collections.sort(this.f12711b, f12709i);
            this.f12713d = 0;
        }
    }

    public static int g(b bVar, b bVar2) {
        return bVar.f12717a - bVar2.f12717a;
    }

    public static int h(b bVar, b bVar2) {
        return Float.compare(bVar.f12719c, bVar2.f12719c);
    }

    public void c(int i10, float f10) {
        b bVar;
        d();
        int i11 = this.f12716g;
        if (i11 > 0) {
            b[] bVarArr = this.f12712c;
            int i12 = i11 - 1;
            this.f12716g = i12;
            bVar = bVarArr[i12];
        } else {
            bVar = new b();
        }
        int i13 = this.f12714e;
        this.f12714e = i13 + 1;
        bVar.f12717a = i13;
        bVar.f12718b = i10;
        bVar.f12719c = f10;
        this.f12711b.add(bVar);
        this.f12715f += i10;
        while (true) {
            int i14 = this.f12715f;
            int i15 = this.f12710a;
            if (i14 <= i15) {
                return;
            }
            int i16 = i14 - i15;
            b bVar2 = (b) this.f12711b.get(0);
            int i17 = bVar2.f12718b;
            if (i17 <= i16) {
                this.f12715f -= i17;
                this.f12711b.remove(0);
                int i18 = this.f12716g;
                if (i18 < 5) {
                    b[] bVarArr2 = this.f12712c;
                    this.f12716g = i18 + 1;
                    bVarArr2[i18] = bVar2;
                }
            } else {
                bVar2.f12718b = i17 - i16;
                this.f12715f -= i16;
            }
        }
    }

    public float f(float f10) {
        e();
        float f11 = f10 * this.f12715f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f12711b.size(); i11++) {
            b bVar = (b) this.f12711b.get(i11);
            i10 += bVar.f12718b;
            if (i10 >= f11) {
                return bVar.f12719c;
            }
        }
        if (this.f12711b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList arrayList = this.f12711b;
        return ((b) arrayList.get(arrayList.size() - 1)).f12719c;
    }

    public void i() {
        this.f12711b.clear();
        this.f12713d = -1;
        this.f12714e = 0;
        this.f12715f = 0;
    }
}
