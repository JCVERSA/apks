package defpackage;

import androidx.core.app.FrameMetricsAggregator;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class fcb {
    public static final a k = new a(null);
    public static final fcb l;
    public static final fcb m;
    public static final fcb n;
    public static final fcb o;
    public static final fcb p;
    public static final fcb q;
    public static final fcb r;
    public static final fcb s;
    public static final fcb t;
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final fcb f;
    public final boolean g;
    public final fcb h;
    public final fcb i;
    public final boolean j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.INVARIANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        fcb fcbVar = null;
        boolean z5 = false;
        fcb fcbVar2 = null;
        fcb fcbVar3 = null;
        boolean z6 = false;
        fcb fcbVar4 = new fcb(z, false, z2, z3, z4, fcbVar, z5, fcbVar2, fcbVar3, z6, AnalyticsListener.EVENT_DRM_KEYS_LOADED, defaultConstructorMarker);
        l = fcbVar4;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        fcb fcbVar5 = null;
        fcb fcbVar6 = null;
        boolean z13 = true;
        fcb fcbVar7 = new fcb(z7, z8, z9, z10, z11, null, z12, fcbVar5, fcbVar6, z13, FrameMetricsAggregator.EVERY_DURATION, defaultConstructorMarker2);
        m = fcbVar7;
        n = new fcb(z, true, z2, z3, z4, fcbVar, z5, fcbVar2, fcbVar3, z6, 1021, defaultConstructorMarker);
        int i = 988;
        o = new fcb(z, false, z2, z3, z4, fcbVar4, z5, fcbVar2, fcbVar3, z6, i, defaultConstructorMarker);
        p = new fcb(z7, z8, z9, z10, z11, fcbVar7, z12, fcbVar5, fcbVar6, z13, 476, defaultConstructorMarker2);
        q = new fcb(z, true, z2, z3, z4, fcbVar4, z5, fcbVar2, fcbVar3, z6, i, defaultConstructorMarker);
        boolean z14 = false;
        boolean z15 = true;
        r = new fcb(z, z14, z2, z15, z4, fcbVar4, z5, fcbVar2, fcbVar3, z6, 983, defaultConstructorMarker);
        s = new fcb(z, z14, z2, z15, z4, fcbVar4, z5, fcbVar2, fcbVar3, z6, 919, defaultConstructorMarker);
        t = new fcb(z, z14, true, false, z4, fcbVar4, z5, fcbVar2, fcbVar3, z6, 984, defaultConstructorMarker);
    }

    public fcb(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, fcb fcbVar, boolean z6, fcb fcbVar2, fcb fcbVar3, boolean z7) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z4;
        this.e = z5;
        this.f = fcbVar;
        this.g = z6;
        this.h = fcbVar2;
        this.i = fcbVar3;
        this.j = z7;
    }

    public final boolean a() {
        return this.g;
    }

    public final boolean b() {
        return this.j;
    }

    public final boolean c() {
        return this.b;
    }

    public final boolean d() {
        return this.a;
    }

    public final boolean e() {
        return this.c;
    }

    public final fcb f(Variance variance, boolean z) {
        fcb fcbVar;
        y45.j(variance, "effectiveVariance");
        if (z && this.c) {
            return this;
        }
        int i = b.a[variance.ordinal()];
        if (i == 1) {
            fcbVar = this.h;
            if (fcbVar == null) {
                return this;
            }
        } else if (i != 2) {
            fcbVar = this.f;
            if (fcbVar == null) {
                return this;
            }
        } else {
            fcbVar = this.i;
            if (fcbVar == null) {
                return this;
            }
        }
        return fcbVar;
    }

    public final fcb g() {
        return new fcb(this.a, true, this.c, this.d, this.e, this.f, this.g, this.h, this.i, false, 512, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public fcb(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, fcb fcbVar, boolean z6, fcb fcbVar2, fcb fcbVar3, boolean z7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i & 1) != 0 ? true : z;
        z2 = (i & 2) != 0 ? true : z2;
        z3 = (i & 4) != 0 ? false : z3;
        z4 = (i & 8) != 0 ? false : z4;
        z5 = (i & 16) != 0 ? false : z5;
        fcbVar = (i & 32) != 0 ? null : fcbVar;
        this(z, z2, z3, z4, z5, fcbVar, (i & 64) != 0 ? true : z6, (i & 128) != 0 ? fcbVar : fcbVar2, (i & 256) != 0 ? fcbVar : fcbVar3, (i & 512) != 0 ? false : z7);
    }
}
