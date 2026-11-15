package a3;

import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class d extends a3.b {

    public final long f91a;

    public final boolean f92b;

    public final boolean f93c;

    public final boolean f94d;

    public final boolean f95e;

    public final long f96f;

    public final long f97g;

    public final List f98h;

    public final boolean f99i;

    public final long f100j;

    public final int f101k;

    public final int f102l;

    public final int f103m;

    public static final class b {

        public final int f104a;

        public final long f105b;

        public final long f106c;

        private b(int i10, long j10, long j11) {
            this.f104a = i10;
            this.f105b = j10;
            this.f106c = j11;
        }
    }

    private d(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List list, boolean z14, long j13, int i10, int i11, int i12) {
        this.f91a = j10;
        this.f92b = z10;
        this.f93c = z11;
        this.f94d = z12;
        this.f95e = z13;
        this.f96f = j11;
        this.f97g = j12;
        this.f98h = Collections.unmodifiableList(list);
        this.f99i = z14;
        this.f100j = j13;
        this.f101k = i10;
        this.f102l = i11;
        this.f103m = i12;
    }

    static d b(j0 j0Var, long j10, p0 p0Var) {
        List list;
        boolean z10;
        boolean z11;
        long j11;
        boolean z12;
        long j12;
        int iP;
        int iH;
        int iH2;
        boolean z13;
        boolean z14;
        long J;
        long J2 = j0Var.J();
        boolean z15 = (j0Var.H() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z15) {
            list = listEmptyList;
            z10 = false;
            z11 = false;
            j11 = C.TIME_UNSET;
            z12 = false;
            j12 = C.TIME_UNSET;
            iP = 0;
            iH = 0;
            iH2 = 0;
            z13 = false;
        } else {
            int iH3 = j0Var.H();
            boolean z16 = (iH3 & 128) != 0;
            boolean z17 = (iH3 & 64) != 0;
            boolean z18 = (iH3 & 32) != 0;
            boolean z19 = (iH3 & 16) != 0;
            long jC = (!z17 || z19) ? C.TIME_UNSET : g.c(j0Var, j10);
            if (!z17) {
                int iH4 = j0Var.H();
                ArrayList arrayList = new ArrayList(iH4);
                for (int i10 = 0; i10 < iH4; i10++) {
                    int iH5 = j0Var.H();
                    long jC2 = !z19 ? g.c(j0Var, j10) : C.TIME_UNSET;
                    arrayList.add(new b(iH5, jC2, p0Var.b(jC2)));
                }
                listEmptyList = arrayList;
            }
            if (z18) {
                long jH = j0Var.H();
                boolean z20 = (128 & jH) != 0;
                J = ((((jH & 1) << 32) | j0Var.J()) * 1000) / 90;
                z14 = z20;
            } else {
                z14 = false;
                J = C.TIME_UNSET;
            }
            iP = j0Var.P();
            z13 = z17;
            iH = j0Var.H();
            iH2 = j0Var.H();
            list = listEmptyList;
            long j13 = jC;
            z12 = z14;
            j12 = J;
            z11 = z19;
            z10 = z16;
            j11 = j13;
        }
        return new d(J2, z15, z10, z13, z11, j11, p0Var.b(j11), list, z12, j12, iP, iH, iH2);
    }

    @Override
    public String toString() {
        return "SCTE-35 SpliceInsertCommand { programSplicePts=" + this.f96f + ", programSplicePlaybackPositionUs= " + this.f97g + " }";
    }
}
