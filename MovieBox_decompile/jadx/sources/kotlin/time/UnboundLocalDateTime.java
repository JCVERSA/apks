package kotlin.time;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class UnboundLocalDateTime {

    public static final Companion f64640h = new Companion(null);

    private final int f64641a;

    private final int f64642b;

    private final int f64643c;

    private final int f64644d;

    private final int f64645e;

    private final int f64646f;

    private final int f64647g;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/time/UnboundLocalDateTime$Companion;", "", "<init>", "()V", "Lkotlin/time/Instant;", "instant", "Lkotlin/time/UnboundLocalDateTime;", "a", "(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UnboundLocalDateTime a(Instant instant) {
            long j10;
            Intrinsics.h(instant, "instant");
            long epochSeconds = instant.getEpochSeconds();
            long j11 = epochSeconds / 86400;
            if ((epochSeconds ^ 86400) < 0 && j11 * 86400 != epochSeconds) {
                j11--;
            }
            long j12 = epochSeconds % 86400;
            int i10 = (int) (j12 + (86400 & (((j12 ^ 86400) & ((-j12) | j12)) >> 63)));
            long j13 = (j11 + ((long) 719528)) - ((long) 60);
            if (j13 < 0) {
                long j14 = 146097;
                long j15 = ((j13 + 1) / j14) - 1;
                j10 = ((long) 400) * j15;
                j13 += (-j15) * j14;
            } else {
                j10 = 0;
            }
            long j16 = 400;
            long j17 = ((j16 * j13) + ((long) 591)) / ((long) 146097);
            long j18 = 365;
            long j19 = 4;
            long j20 = 100;
            long j21 = j13 - ((((j18 * j17) + (j17 / j19)) - (j17 / j20)) + (j17 / j16));
            if (j21 < 0) {
                j17--;
                j21 = j13 - ((((j18 * j17) + (j17 / j19)) - (j17 / j20)) + (j17 / j16));
            }
            int i11 = (int) j21;
            int i12 = ((i11 * 5) + 2) / 153;
            int i13 = (i11 - (((i12 * 306) + 5) / 10)) + 1;
            int i14 = i10 / 3600;
            int i15 = i10 - (i14 * 3600);
            int i16 = i15 / 60;
            return new UnboundLocalDateTime((int) (j17 + j10 + ((long) (i12 / 10))), ((i12 + 2) % 12) + 1, i13, i14, i16, i15 - (i16 * 60), instant.getNanosecondsOfSecond());
        }

        private Companion() {
        }
    }

    public UnboundLocalDateTime(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f64641a = i10;
        this.f64642b = i11;
        this.f64643c = i12;
        this.f64644d = i13;
        this.f64645e = i14;
        this.f64646f = i15;
        this.f64647g = i16;
    }

    public final int a() {
        return this.f64643c;
    }

    public final int b() {
        return this.f64644d;
    }

    public final int c() {
        return this.f64645e;
    }

    public final int d() {
        return this.f64642b;
    }

    public final int e() {
        return this.f64647g;
    }

    public final int f() {
        return this.f64646f;
    }

    public final int g() {
        return this.f64641a;
    }

    public String toString() {
        return "UnboundLocalDateTime(" + this.f64641a + '-' + this.f64642b + '-' + this.f64643c + ' ' + this.f64644d + ':' + this.f64645e + ':' + this.f64646f + '.' + this.f64647g + ')';
    }
}
