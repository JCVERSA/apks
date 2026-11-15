package i2;

import androidx.media3.common.util.a1;
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

    private final androidx.media3.exoplayer.upstream.e f61597i;

    private final long f61598j;

    private final long f61599k;

    private final long f61600l;

    private final int f61601m;

    private final int f61602n;

    private final float f61603o;

    private final float f61604p;

    private final ImmutableList f61605q;

    private final androidx.media3.common.util.i f61606r;

    private float f61607s;

    private int f61608t;

    private int f61609u;

    private long f61610v;

    private g2.m f61611w;

    private long f61612x;

    public static final class C0752a {

        public final long f61613a;

        public final long f61614b;

        public C0752a(long j10, long j11) {
            this.f61613a = j10;
            this.f61614b = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0752a)) {
                return false;
            }
            C0752a c0752a = (C0752a) obj;
            return this.f61613a == c0752a.f61613a && this.f61614b == c0752a.f61614b;
        }

        public int hashCode() {
            return (((int) this.f61613a) * 31) + ((int) this.f61614b);
        }
    }

    public static class b implements z.b {

        private final int f61615a;

        private final int f61616b;

        private final int f61617c;

        private final int f61618d;

        private final int f61619e;

        private final float f61620f;

        private final float f61621g;

        private final androidx.media3.common.util.i f61622h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final z[] a(z.a[] aVarArr, androidx.media3.exoplayer.upstream.e eVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var) {
            ImmutableList immutableListO = a.o(aVarArr);
            z[] zVarArr = new z[aVarArr.length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                z.a aVar = aVarArr[i10];
                if (aVar != null) {
                    int[] iArr = aVar.f61743b;
                    if (iArr.length != 0) {
                        zVarArr[i10] = iArr.length == 1 ? new a0(aVar.f61742a, iArr[0], aVar.f61744c) : b(aVar.f61742a, iArr, aVar.f61744c, eVar, (ImmutableList) immutableListO.get(i10));
                    }
                }
            }
            return zVarArr;
        }

        protected a b(androidx.media3.common.f0 f0Var, int[] iArr, int i10, androidx.media3.exoplayer.upstream.e eVar, ImmutableList immutableList) {
            return new a(f0Var, iArr, i10, eVar, this.f61615a, this.f61616b, this.f61617c, this.f61618d, this.f61619e, this.f61620f, this.f61621g, immutableList, this.f61622h);
        }

        public b(int i10, int i11, int i12, float f10) {
            this(i10, i11, i12, 1279, 719, f10, 0.75f, androidx.media3.common.util.i.f10075a);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f10, float f11, androidx.media3.common.util.i iVar) {
            this.f61615a = i10;
            this.f61616b = i11;
            this.f61617c = i12;
            this.f61618d = i13;
            this.f61619e = i14;
            this.f61620f = f10;
            this.f61621g = f11;
            this.f61622h = iVar;
        }
    }

    protected a(androidx.media3.common.f0 f0Var, int[] iArr, int i10, androidx.media3.exoplayer.upstream.e eVar, long j10, long j11, long j12, int i11, int i12, float f10, float f11, List list, androidx.media3.common.util.i iVar) {
        long j13;
        super(f0Var, iArr, i10);
        if (j12 < j10) {
            androidx.media3.common.util.u.h("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j13 = j10;
        } else {
            j13 = j12;
        }
        this.f61597i = eVar;
        this.f61598j = j10 * 1000;
        this.f61599k = j11 * 1000;
        this.f61600l = j13 * 1000;
        this.f61601m = i11;
        this.f61602n = i12;
        this.f61603o = f10;
        this.f61604p = f11;
        this.f61605q = ImmutableList.copyOf((Collection) list);
        this.f61606r = iVar;
        this.f61607s = 1.0f;
        this.f61609u = 0;
        this.f61610v = C.TIME_UNSET;
        this.f61612x = -2147483647L;
    }

    private static void l(List list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ImmutableList.a aVar = (ImmutableList.a) list.get(i10);
            if (aVar != null) {
                aVar.a(new C0752a(j10, jArr[i10]));
            }
        }
    }

    private int n(long j10, long j11) {
        long jP = p(j11);
        int i10 = 0;
        for (int i11 = 0; i11 < this.f61634b; i11++) {
            if (j10 == Long.MIN_VALUE || !d(i11, j10)) {
                androidx.media3.common.r format = getFormat(i11);
                if (m(format, format.f9844j, jP)) {
                    return i11;
                }
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList o(z.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (z.a aVar : aVarArr) {
            if (aVar == null || aVar.f61743b.length <= 1) {
                arrayList.add(null);
            } else {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                aVarBuilder.a(new C0752a(0L, 0L));
                arrayList.add(aVarBuilder);
            }
        }
        long[][] jArrT = t(aVarArr);
        int[] iArr = new int[jArrT.length];
        long[] jArr = new long[jArrT.length];
        for (int i10 = 0; i10 < jArrT.length; i10++) {
            long[] jArr2 = jArrT[i10];
            jArr[i10] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        l(arrayList, jArr);
        ImmutableList immutableListU = u(jArrT);
        for (int i11 = 0; i11 < immutableListU.size(); i11++) {
            int iIntValue = ((Integer) immutableListU.get(i11)).intValue();
            int i12 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i12;
            jArr[iIntValue] = jArrT[iIntValue][i12];
            l(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        l(arrayList, jArr);
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i14);
            aVarBuilder2.a(aVar2 == null ? ImmutableList.of() : aVar2.e());
        }
        return aVarBuilder2.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long p(long j10) {
        long jV = v(j10);
        if (this.f61605q.isEmpty()) {
            return jV;
        }
        int i10 = 1;
        while (i10 < this.f61605q.size() - 1 && ((C0752a) this.f61605q.get(i10)).f61613a < jV) {
            i10++;
        }
        C0752a c0752a = (C0752a) this.f61605q.get(i10 - 1);
        C0752a c0752a2 = (C0752a) this.f61605q.get(i10);
        long j11 = c0752a.f61613a;
        float f10 = (jV - j11) / (c0752a2.f61613a - j11);
        long j12 = c0752a.f61614b;
        return j12 + ((long) (f10 * (c0752a2.f61614b - j12)));
    }

    private long q(List list) {
        if (list.isEmpty()) {
            return C.TIME_UNSET;
        }
        g2.m mVar = (g2.m) g3.g(list);
        long j10 = mVar.f60601g;
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j11 = mVar.f60602h;
        return j11 != C.TIME_UNSET ? j11 - j10 : C.TIME_UNSET;
    }

    private long s(g2.n[] nVarArr, List list) {
        int i10 = this.f61608t;
        if (i10 < nVarArr.length && nVarArr[i10].next()) {
            g2.n nVar = nVarArr[this.f61608t];
            return nVar.b() - nVar.a();
        }
        for (g2.n nVar2 : nVarArr) {
            if (nVar2.next()) {
                return nVar2.b() - nVar2.a();
            }
        }
        return q(list);
    }

    private static long[][] t(z.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            z.a aVar = aVarArr[i10];
            if (aVar == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[aVar.f61743b.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = aVar.f61743b;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    long j10 = aVar.f61742a.a(iArr[i11]).f9844j;
                    long[] jArr2 = jArr[i10];
                    if (j10 == -1) {
                        j10 = 0;
                    }
                    jArr2[i11] = j10;
                    i11++;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        return jArr;
    }

    private static ImmutableList u(long[][] jArr) {
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

    private long v(long j10) {
        long bitrateEstimate = this.f61597i.getBitrateEstimate();
        this.f61612x = bitrateEstimate;
        long j11 = (long) (bitrateEstimate * this.f61603o);
        long jA = this.f61597i.a();
        if (jA == C.TIME_UNSET || j10 == C.TIME_UNSET) {
            return (long) (j11 / this.f61607s);
        }
        float f10 = j10;
        return (long) ((j11 * Math.max((f10 / this.f61607s) - jA, 0.0f)) / f10);
    }

    private long w(long j10, long j11) {
        if (j10 == C.TIME_UNSET) {
            return this.f61598j;
        }
        if (j11 != C.TIME_UNSET) {
            j10 -= j11;
        }
        return Math.min((long) (j10 * this.f61604p), this.f61598j);
    }

    @Override
    public void disable() {
        this.f61611w = null;
    }

    @Override
    public void enable() {
        this.f61610v = C.TIME_UNSET;
        this.f61611w = null;
    }

    @Override
    public int evaluateQueueSize(long j10, List list) {
        int i10;
        int i11;
        long jElapsedRealtime = this.f61606r.elapsedRealtime();
        if (!x(jElapsedRealtime, list)) {
            return list.size();
        }
        this.f61610v = jElapsedRealtime;
        this.f61611w = list.isEmpty() ? null : (g2.m) g3.g(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jL0 = a1.l0(((g2.m) list.get(size - 1)).f60601g - j10, this.f61607s);
        long jR = r();
        if (jL0 < jR) {
            return size;
        }
        androidx.media3.common.r format = getFormat(n(jElapsedRealtime, q(list)));
        for (int i12 = 0; i12 < size; i12++) {
            g2.m mVar = (g2.m) list.get(i12);
            androidx.media3.common.r rVar = mVar.f60598d;
            if (a1.l0(mVar.f60601g - j10, this.f61607s) >= jR && rVar.f9844j < format.f9844j && (i10 = rVar.f9857w) != -1 && i10 <= this.f61602n && (i11 = rVar.f9856v) != -1 && i11 <= this.f61601m && i10 < format.f9857w) {
                return i12;
            }
        }
        return size;
    }

    @Override
    public void f(long j10, long j11, long j12, List list, g2.n[] nVarArr) {
        long jElapsedRealtime = this.f61606r.elapsedRealtime();
        long jS = s(nVarArr, list);
        int i10 = this.f61609u;
        if (i10 == 0) {
            this.f61609u = 1;
            this.f61608t = n(jElapsedRealtime, jS);
            return;
        }
        int i11 = this.f61608t;
        int iE = list.isEmpty() ? -1 : e(((g2.m) g3.g(list)).f60598d);
        if (iE != -1) {
            i10 = ((g2.m) g3.g(list)).f60599e;
            i11 = iE;
        }
        int iN = n(jElapsedRealtime, jS);
        if (iN != i11 && !d(i11, jElapsedRealtime)) {
            androidx.media3.common.r format = getFormat(i11);
            androidx.media3.common.r format2 = getFormat(iN);
            long jW = w(j12, jS);
            int i12 = format2.f9844j;
            int i13 = format.f9844j;
            if ((i12 > i13 && j11 < jW) || (i12 < i13 && j11 >= this.f61599k)) {
                iN = i11;
            }
        }
        if (iN != i11) {
            i10 = 3;
        }
        this.f61609u = i10;
        this.f61608t = iN;
    }

    @Override
    public int getSelectedIndex() {
        return this.f61608t;
    }

    @Override
    public Object getSelectionData() {
        return null;
    }

    @Override
    public int getSelectionReason() {
        return this.f61609u;
    }

    protected boolean m(androidx.media3.common.r rVar, int i10, long j10) {
        return ((long) i10) <= j10;
    }

    @Override
    public void onPlaybackSpeed(float f10) {
        this.f61607s = f10;
    }

    protected long r() {
        return this.f61600l;
    }

    protected boolean x(long j10, List list) {
        long j11 = this.f61610v;
        return j11 == C.TIME_UNSET || j10 - j11 >= 1000 || !(list.isEmpty() || ((g2.m) g3.g(list)).equals(this.f61611w));
    }
}
