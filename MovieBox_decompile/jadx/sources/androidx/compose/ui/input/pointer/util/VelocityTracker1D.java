package androidx.compose.ui.input.pointer.util;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import e0.c;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

public final class VelocityTracker1D {

    private final boolean f4732a;

    private final Strategy f4733b;

    private final int f4734c;

    private final e0.a[] f4735d;

    private int f4736e;

    private final float[] f4737f;

    private final float[] f4738g;

    private final float[] f4739h;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;", "", "(Ljava/lang/String;I)V", "Lsq2", "Impulse", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Strategy {
        Lsq2,
        Impulse
    }

    public class a {

        public static final int[] f4740a;

        static {
            int[] iArr = new int[Strategy.values().length];
            try {
                iArr[Strategy.Impulse.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Strategy.Lsq2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4740a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VelocityTracker1D() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    private final float b(float[] fArr, float[] fArr2, int i10) {
        try {
            return c.i(fArr2, fArr, i10, 2, this.f4739h)[1];
        } catch (IllegalArgumentException unused) {
            return 0.0f;
        }
    }

    public final void a(long j10, float f10) {
        int i10 = (this.f4736e + 1) % 20;
        this.f4736e = i10;
        c.j(this.f4735d, i10, j10, f10);
    }

    public final float c() {
        float f10;
        float[] fArr = this.f4737f;
        float[] fArr2 = this.f4738g;
        int i10 = this.f4736e;
        e0.a aVar = this.f4735d[i10];
        if (aVar == null) {
            return 0.0f;
        }
        int i11 = 0;
        e0.a aVar2 = aVar;
        while (true) {
            e0.a aVar3 = this.f4735d[i10];
            if (aVar3 == null) {
                break;
            }
            float fB = aVar.b() - aVar3.b();
            float fAbs = Math.abs(aVar3.b() - aVar2.b());
            e0.a aVar4 = (this.f4733b == Strategy.Lsq2 || this.f4732a) ? aVar3 : aVar;
            if (fB > 100.0f || fAbs > 40.0f) {
                break;
            }
            fArr[i11] = aVar3.a();
            fArr2[i11] = -fB;
            if (i10 == 0) {
                i10 = 20;
            }
            i10--;
            i11++;
            if (i11 >= 20) {
                break;
            }
            aVar2 = aVar4;
        }
        if (i11 < this.f4734c) {
            return 0.0f;
        }
        int i12 = a.f4740a[this.f4733b.ordinal()];
        if (i12 == 1) {
            f10 = c.f(fArr, fArr2, i11, this.f4732a);
        } else {
            if (i12 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            f10 = b(fArr, fArr2, i11);
        }
        return f10 * 1000;
    }

    public final float d(float f10) {
        if (!(f10 > 0.0f)) {
            g0.a.b("maximumVelocity should be a positive value. You specified=" + f10);
        }
        float fC = c();
        if (fC == 0.0f || Float.isNaN(fC)) {
            return 0.0f;
        }
        return fC > 0.0f ? RangesKt.g(fC, f10) : RangesKt.d(fC, -f10);
    }

    public final void e() {
        ArraysKt.y(this.f4735d, null, 0, 0, 6, null);
        this.f4736e = 0;
    }

    public VelocityTracker1D(boolean z10, Strategy strategy) {
        this.f4732a = z10;
        this.f4733b = strategy;
        if (z10 && strategy.equals(Strategy.Lsq2)) {
            throw new IllegalStateException("Lsq2 not (yet) supported for differential axes");
        }
        int i10 = a.f4740a[strategy.ordinal()];
        int i11 = 2;
        if (i10 != 1) {
            if (i10 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            i11 = 3;
        }
        this.f4734c = i11;
        this.f4735d = new e0.a[20];
        this.f4737f = new float[20];
        this.f4738g = new float[20];
        this.f4739h = new float[3];
    }

    public VelocityTracker1D(boolean z10, Strategy strategy, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? Strategy.Lsq2 : strategy);
    }
}
