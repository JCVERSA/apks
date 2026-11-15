package na;

import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.g3;
import com.google.common.collect.i3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class a extends c {

    private final com.google.android.exoplayer2.upstream.e f66981h;

    private final long f66982i;

    private final long f66983j;

    private final long f66984k;

    private final int f66985l;

    private final int f66986m;

    private final float f66987n;

    private final float f66988o;

    private final ImmutableList f66989p;

    private final com.google.android.exoplayer2.util.e f66990q;

    private float f66991r;

    private int f66992s;

    private int f66993t;

    private long f66994u;

    private x9.n f66995v;

    public static final class C0821a {

        public final long f66996a;

        public final long f66997b;

        public C0821a(long j10, long j11) {
            this.f66996a = j10;
            this.f66997b = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0821a)) {
                return false;
            }
            C0821a c0821a = (C0821a) obj;
            return this.f66996a == c0821a.f66996a && this.f66997b == c0821a.f66997b;
        }

        public int hashCode() {
            return (((int) this.f66996a) * 31) + ((int) this.f66997b);
        }
    }

    public static class b implements s.b {

        private final int f66998a;

        private final int f66999b;

        private final int f67000c;

        private final int f67001d;

        private final int f67002e;

        private final float f67003f;

        private final float f67004g;

        private final com.google.android.exoplayer2.util.e f67005h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final s[] a(s.a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var) {
            ImmutableList immutableListN = a.n(aVarArr);
            s[] sVarArr = new s[aVarArr.length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                s.a aVar = aVarArr[i10];
                if (aVar != null) {
                    int[] iArr = aVar.f67095b;
                    if (iArr.length != 0) {
                        sVarArr[i10] = iArr.length == 1 ? new t(aVar.f67094a, iArr[0], aVar.f67096c) : b(aVar.f67094a, iArr, aVar.f67096c, eVar, (ImmutableList) immutableListN.get(i10));
                    }
                }
            }
            return sVarArr;
        }

        protected a b(v9.w wVar, int[] iArr, int i10, com.google.android.exoplayer2.upstream.e eVar, ImmutableList immutableList) {
            return new a(wVar, iArr, i10, eVar, this.f66998a, this.f66999b, this.f67000c, this.f67001d, this.f67002e, this.f67003f, this.f67004g, immutableList, this.f67005h);
        }

        public b(int i10, int i11, int i12, float f10) {
            this(i10, i11, i12, 1279, 719, f10, 0.75f, com.google.android.exoplayer2.util.e.f26795a);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f10, float f11, com.google.android.exoplayer2.util.e eVar) {
            this.f66998a = i10;
            this.f66999b = i11;
            this.f67000c = i12;
            this.f67001d = i13;
            this.f67002e = i14;
            this.f67003f = f10;
            this.f67004g = f11;
            this.f67005h = eVar;
        }
    }

    protected a(v9.w wVar, int[] iArr, int i10, com.google.android.exoplayer2.upstream.e eVar, long j10, long j11, long j12, int i11, int i12, float f10, float f11, List list, com.google.android.exoplayer2.util.e eVar2) {
        long j13;
        super(wVar, iArr, i10);
        if (j12 < j10) {
            com.google.android.exoplayer2.util.s.i("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j13 = j10;
        } else {
            j13 = j12;
        }
        this.f66981h = eVar;
        this.f66982i = j10 * 1000;
        this.f66983j = j11 * 1000;
        this.f66984k = j13 * 1000;
        this.f66985l = i11;
        this.f66986m = i12;
        this.f66987n = f10;
        this.f66988o = f11;
        this.f66989p = ImmutableList.copyOf((Collection) list);
        this.f66990q = eVar2;
        this.f66991r = 1.0f;
        this.f66993t = 0;
        this.f66994u = C.TIME_UNSET;
    }

    private static void k(List list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ImmutableList.a aVar = (ImmutableList.a) list.get(i10);
            if (aVar != null) {
                aVar.a(new C0821a(j10, jArr[i10]));
            }
        }
    }

    private int m(long j10, long j11) {
        long jO = o(j11);
        int i10 = 0;
        for (int i11 = 0; i11 < this.f67009b; i11++) {
            if (j10 == Long.MIN_VALUE || !d(i11, j10)) {
                p1 format = getFormat(i11);
                if (l(format, format.f24897h, jO)) {
                    return i11;
                }
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList n(s.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (s.a aVar : aVarArr) {
            if (aVar == null || aVar.f67095b.length <= 1) {
                arrayList.add(null);
            } else {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                aVarBuilder.a(new C0821a(0L, 0L));
                arrayList.add(aVarBuilder);
            }
        }
        long[][] jArrS = s(aVarArr);
        int[] iArr = new int[jArrS.length];
        long[] jArr = new long[jArrS.length];
        for (int i10 = 0; i10 < jArrS.length; i10++) {
            long[] jArr2 = jArrS[i10];
            jArr[i10] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        k(arrayList, jArr);
        ImmutableList immutableListT = t(jArrS);
        for (int i11 = 0; i11 < immutableListT.size(); i11++) {
            int iIntValue = ((Integer) immutableListT.get(i11)).intValue();
            int i12 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i12;
            jArr[iIntValue] = jArrS[iIntValue][i12];
            k(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        k(arrayList, jArr);
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i14);
            aVarBuilder2.a(aVar2 == null ? ImmutableList.of() : aVar2.e());
        }
        return aVarBuilder2.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long o(long j10) {
        long jU = u(j10);
        if (this.f66989p.isEmpty()) {
            return jU;
        }
        int i10 = 1;
        while (i10 < this.f66989p.size() - 1 && ((C0821a) this.f66989p.get(i10)).f66996a < jU) {
            i10++;
        }
        C0821a c0821a = (C0821a) this.f66989p.get(i10 - 1);
        C0821a c0821a2 = (C0821a) this.f66989p.get(i10);
        long j11 = c0821a.f66996a;
        float f10 = (jU - j11) / (c0821a2.f66996a - j11);
        long j12 = c0821a.f66997b;
        return j12 + ((long) (f10 * (c0821a2.f66997b - j12)));
    }

    private long p(List list) {
        if (list.isEmpty()) {
            return C.TIME_UNSET;
        }
        x9.n nVar = (x9.n) g3.g(list);
        long j10 = nVar.f75190g;
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j11 = nVar.f75191h;
        return j11 != C.TIME_UNSET ? j11 - j10 : C.TIME_UNSET;
    }

    private long r(x9.o[] oVarArr, List list) {
        int i10 = this.f66992s;
        if (i10 < oVarArr.length && oVarArr[i10].next()) {
            x9.o oVar = oVarArr[this.f66992s];
            return oVar.b() - oVar.a();
        }
        for (x9.o oVar2 : oVarArr) {
            if (oVar2.next()) {
                return oVar2.b() - oVar2.a();
            }
        }
        return p(list);
    }

    private static long[][] s(s.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            s.a aVar = aVarArr[i10];
            if (aVar == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[aVar.f67095b.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = aVar.f67095b;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    jArr[i10][i11] = aVar.f67094a.c(iArr[i11]).f24897h;
                    i11++;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        return jArr;
    }

    private static ImmutableList t(long[][] jArr) {
        i3 i3VarG = MultimapBuilder.e().a().g();
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long[] jArr2 = jArr[i10];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i11 = 0;
                while (true) {
                    long[] jArr3 = jArr[i10];
                    double dLog = 0.0d;
                    if (i11 >= jArr3.length) {
                        break;
                    }
                    long j10 = jArr3[i11];
                    if (j10 != -1) {
                        dLog = Math.log(j10);
                    }
                    dArr[i11] = dLog;
                    i11++;
                }
                int i12 = length - 1;
                double d10 = dArr[i12] - dArr[0];
                int i13 = 0;
                while (i13 < i12) {
                    double d11 = dArr[i13];
                    i13++;
                    i3VarG.put(Double.valueOf(d10 == 0.0d ? 1.0d : (((d11 + dArr[i13]) * 0.5d) - dArr[0]) / d10), Integer.valueOf(i10));
                }
            }
        }
        return ImmutableList.copyOf(i3VarG.values());
    }

    private long u(long j10) {
        long bitrateEstimate = (long) (this.f66981h.getBitrateEstimate() * this.f66987n);
        long jA = this.f66981h.a();
        if (jA == C.TIME_UNSET || j10 == C.TIME_UNSET) {
            return (long) (bitrateEstimate / this.f66991r);
        }
        float f10 = j10;
        return (long) ((bitrateEstimate * Math.max((f10 / this.f66991r) - jA, 0.0f)) / f10);
    }

    private long v(long j10, long j11) {
        if (j10 == C.TIME_UNSET) {
            return this.f66982i;
        }
        if (j11 != C.TIME_UNSET) {
            j10 -= j11;
        }
        return Math.min((long) (j10 * this.f66988o), this.f66982i);
    }

    @Override
    public void disable() {
        this.f66995v = null;
    }

    @Override
    public void enable() {
        this.f66994u = C.TIME_UNSET;
        this.f66995v = null;
    }

    @Override
    public int evaluateQueueSize(long j10, List list) {
        int i10;
        int i11;
        long jElapsedRealtime = this.f66990q.elapsedRealtime();
        if (!w(jElapsedRealtime, list)) {
            return list.size();
        }
        this.f66994u = jElapsedRealtime;
        this.f66995v = list.isEmpty() ? null : (x9.n) g3.g(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jF0 = p0.f0(((x9.n) list.get(size - 1)).f75190g - j10, this.f66991r);
        long jQ = q();
        if (jF0 < jQ) {
            return size;
        }
        p1 format = getFormat(m(jElapsedRealtime, p(list)));
        for (int i12 = 0; i12 < size; i12++) {
            x9.n nVar = (x9.n) list.get(i12);
            p1 p1Var = nVar.f75187d;
            if (p0.f0(nVar.f75190g - j10, this.f66991r) >= jQ && p1Var.f24897h < format.f24897h && (i10 = p1Var.f24907r) != -1 && i10 <= this.f66986m && (i11 = p1Var.f24906q) != -1 && i11 <= this.f66985l && i10 < format.f24907r) {
                return i12;
            }
        }
        return size;
    }

    @Override
    public void f(long j10, long j11, long j12, List list, x9.o[] oVarArr) {
        long jElapsedRealtime = this.f66990q.elapsedRealtime();
        long jR = r(oVarArr, list);
        int i10 = this.f66993t;
        if (i10 == 0) {
            this.f66993t = 1;
            this.f66992s = m(jElapsedRealtime, jR);
            return;
        }
        int i11 = this.f66992s;
        int iG = list.isEmpty() ? -1 : g(((x9.n) g3.g(list)).f75187d);
        if (iG != -1) {
            i10 = ((x9.n) g3.g(list)).f75188e;
            i11 = iG;
        }
        int iM = m(jElapsedRealtime, jR);
        if (!d(i11, jElapsedRealtime)) {
            p1 format = getFormat(i11);
            p1 format2 = getFormat(iM);
            long jV = v(j12, jR);
            int i12 = format2.f24897h;
            int i13 = format.f24897h;
            if ((i12 > i13 && j11 < jV) || (i12 < i13 && j11 >= this.f66983j)) {
                iM = i11;
            }
        }
        if (iM != i11) {
            i10 = 3;
        }
        this.f66993t = i10;
        this.f66992s = iM;
    }

    @Override
    public int getSelectedIndex() {
        return this.f66992s;
    }

    @Override
    public Object getSelectionData() {
        return null;
    }

    @Override
    public int getSelectionReason() {
        return this.f66993t;
    }

    protected boolean l(p1 p1Var, int i10, long j10) {
        return ((long) i10) <= j10;
    }

    @Override
    public void onPlaybackSpeed(float f10) {
        this.f66991r = f10;
    }

    protected long q() {
        return this.f66984k;
    }

    protected boolean w(long j10, List list) {
        long j11 = this.f66994u;
        return j11 == C.TIME_UNSET || j10 - j11 >= 1000 || !(list.isEmpty() || ((x9.n) g3.g(list)).equals(this.f66995v));
    }
}
