package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.i;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.MultimapBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class f8 extends ad0 {
    public final o70 h;
    public final long i;
    public final long j;
    public final long k;
    public final int l;
    public final int m;
    public final float n;
    public final float o;
    public final ImmutableList p;
    public final ey0 q;
    public float r;
    public int s;
    public int t;
    public long u;

    public static final class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            return (((int) this.a) * 31) + ((int) this.b);
        }
    }

    public static class b implements qi3.b {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final float f;
        public final float g;
        public final ey0 h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final qi3[] a(qi3.a[] aVarArr, o70 o70Var, i.b bVar, a0 a0Var) {
            ImmutableList immutableListE = f8.e(aVarArr);
            qi3[] qi3VarArr = new qi3[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                qi3.a aVar = aVarArr[i];
                if (aVar != null) {
                    int[] iArr = aVar.b;
                    if (iArr.length != 0) {
                        qi3VarArr[i] = iArr.length == 1 ? new lx3(aVar.a, iArr[0], aVar.c) : b(aVar.a, iArr, aVar.c, o70Var, (ImmutableList) immutableListE.get(i));
                    }
                }
            }
            return qi3VarArr;
        }

        public f8 b(zua zuaVar, int[] iArr, int i, o70 o70Var, ImmutableList immutableList) {
            return new f8(zuaVar, iArr, i, o70Var, this.a, this.b, this.c, this.d, this.e, this.f, this.g, immutableList, this.h);
        }

        public b(int i, int i2, int i3, float f) {
            this(i, i2, i3, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f, 0.75f, ey0.a);
        }

        public b(int i, int i2, int i3, int i4, int i5, float f, float f2, ey0 ey0Var) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = f;
            this.g = f2;
            this.h = ey0Var;
        }
    }

    public f8(zua zuaVar, int[] iArr, int i, o70 o70Var, long j, long j2, long j3, int i2, int i3, float f, float f2, List list, ey0 ey0Var) {
        long j4;
        super(zuaVar, iArr, i);
        if (j3 < j) {
            op5.i("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j4 = j;
        } else {
            j4 = j3;
        }
        this.h = o70Var;
        this.i = j * 1000;
        this.j = j2 * 1000;
        this.k = j4 * 1000;
        this.l = i2;
        this.m = i3;
        this.n = f;
        this.o = f2;
        this.p = ImmutableList.copyOf((Collection) list);
        this.q = ey0Var;
        this.r = 1.0f;
        this.t = 0;
        this.u = C.TIME_UNSET;
    }

    public static void d(List list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            ImmutableList.a aVar = (ImmutableList.a) list.get(i);
            if (aVar != null) {
                aVar.a(new a(j, jArr[i]));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList e(qi3.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (qi3.a aVar : aVarArr) {
            if (aVar == null || aVar.b.length <= 1) {
                arrayList.add(null);
            } else {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                aVarBuilder.a(new a(0L, 0L));
                arrayList.add(aVarBuilder);
            }
        }
        long[][] jArrF = f(aVarArr);
        int[] iArr = new int[jArrF.length];
        long[] jArr = new long[jArrF.length];
        for (int i = 0; i < jArrF.length; i++) {
            long[] jArr2 = jArrF[i];
            jArr[i] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        d(arrayList, jArr);
        ImmutableList immutableListG = g(jArrF);
        for (int i2 = 0; i2 < immutableListG.size(); i2++) {
            int iIntValue = ((Integer) immutableListG.get(i2)).intValue();
            int i3 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i3;
            jArr[iIntValue] = jArrF[iIntValue][i3];
            d(arrayList, jArr);
        }
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            if (arrayList.get(i4) != null) {
                jArr[i4] = jArr[i4] * 2;
            }
        }
        d(arrayList, jArr);
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i5);
            aVarBuilder2.a(aVar2 == null ? ImmutableList.of() : aVar2.e());
        }
        return aVarBuilder2.e();
    }

    public static long[][] f(qi3.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i = 0; i < aVarArr.length; i++) {
            qi3.a aVar = aVarArr[i];
            if (aVar == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[aVar.b.length];
                int i2 = 0;
                while (true) {
                    int[] iArr = aVar.b;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    jArr[i][i2] = aVar.a.c(iArr[i2]).i;
                    i2++;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    public static ImmutableList g(long[][] jArr) {
        fm5 fm5VarG = MultimapBuilder.e().a().g();
        for (int i = 0; i < jArr.length; i++) {
            long[] jArr2 = jArr[i];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    long[] jArr3 = jArr[i];
                    double dLog = 0.0d;
                    if (i2 >= jArr3.length) {
                        break;
                    }
                    long j = jArr3[i2];
                    if (j != -1) {
                        dLog = Math.log(j);
                    }
                    dArr[i2] = dLog;
                    i2++;
                }
                int i3 = length - 1;
                double d = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d2 = dArr[i4];
                    i4++;
                    fm5VarG.put(Double.valueOf(d == 0.0d ? 1.0d : (((d2 + dArr[i4]) * 0.5d) - dArr[0]) / d), Integer.valueOf(i));
                }
            }
        }
        return ImmutableList.copyOf(fm5VarG.values());
    }

    @Override
    public void disable() {
    }

    @Override
    public void enable() {
        this.u = C.TIME_UNSET;
    }

    @Override
    public int getSelectedIndex() {
        return this.s;
    }

    @Override
    public void onPlaybackSpeed(float f) {
        this.r = f;
    }
}
