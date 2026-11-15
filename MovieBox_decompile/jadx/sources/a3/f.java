package a3;

import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class f extends a3.b {

    public final List f107a;

    public static final class b {

        public final int f108a;

        public final long f109b;

        private b(int i10, long j10) {
            this.f108a = i10;
            this.f109b = j10;
        }
    }

    public static final class c {

        public final long f110a;

        public final boolean f111b;

        public final boolean f112c;

        public final boolean f113d;

        public final long f114e;

        public final List f115f;

        public final boolean f116g;

        public final long f117h;

        public final int f118i;

        public final int f119j;

        public final int f120k;

        private c(long j10, boolean z10, boolean z11, boolean z12, List list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
            this.f110a = j10;
            this.f111b = z10;
            this.f112c = z11;
            this.f113d = z12;
            this.f115f = Collections.unmodifiableList(list);
            this.f114e = j11;
            this.f116g = z13;
            this.f117h = j12;
            this.f118i = i10;
            this.f119j = i11;
            this.f120k = i12;
        }

        public static c b(j0 j0Var) {
            ArrayList arrayList;
            boolean z10;
            long j10;
            boolean z11;
            long j11;
            int i10;
            int i11;
            int iH;
            boolean z12;
            boolean z13;
            long J;
            long J2 = j0Var.J();
            boolean z14 = (j0Var.H() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z14) {
                arrayList = arrayList2;
                z10 = false;
                j10 = C.TIME_UNSET;
                z11 = false;
                j11 = C.TIME_UNSET;
                i10 = 0;
                i11 = 0;
                iH = 0;
                z12 = false;
            } else {
                int iH2 = j0Var.H();
                boolean z15 = (iH2 & 128) != 0;
                boolean z16 = (iH2 & 64) != 0;
                boolean z17 = (iH2 & 32) != 0;
                long J3 = z16 ? j0Var.J() : C.TIME_UNSET;
                if (!z16) {
                    int iH3 = j0Var.H();
                    ArrayList arrayList3 = new ArrayList(iH3);
                    for (int i12 = 0; i12 < iH3; i12++) {
                        arrayList3.add(new b(j0Var.H(), j0Var.J()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z17) {
                    long jH = j0Var.H();
                    boolean z18 = (128 & jH) != 0;
                    J = ((((jH & 1) << 32) | j0Var.J()) * 1000) / 90;
                    z13 = z18;
                } else {
                    z13 = false;
                    J = C.TIME_UNSET;
                }
                int iP = j0Var.P();
                int iH4 = j0Var.H();
                z12 = z16;
                iH = j0Var.H();
                j11 = J;
                arrayList = arrayList2;
                long j12 = J3;
                i10 = iP;
                i11 = iH4;
                j10 = j12;
                boolean z19 = z15;
                z11 = z13;
                z10 = z19;
            }
            return new c(J2, z14, z10, z12, arrayList, j10, z11, j11, i10, i11, iH);
        }
    }

    private f(List list) {
        this.f107a = Collections.unmodifiableList(list);
    }

    static f b(j0 j0Var) {
        int iH = j0Var.H();
        ArrayList arrayList = new ArrayList(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            arrayList.add(c.b(j0Var));
        }
        return new f(arrayList);
    }
}
