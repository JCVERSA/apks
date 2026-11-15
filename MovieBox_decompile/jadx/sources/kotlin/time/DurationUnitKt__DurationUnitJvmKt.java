package kotlin.time;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

class DurationUnitKt__DurationUnitJvmKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public class WhenMappings {

        public static final int[] f64625a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f64625a = iArr;
        }
    }

    public static final double a(double d10, DurationUnit sourceUnit, DurationUnit targetUnit) {
        Intrinsics.h(sourceUnit, "sourceUnit");
        Intrinsics.h(targetUnit, "targetUnit");
        long jConvert = targetUnit.getTimeUnit().convert(1L, sourceUnit.getTimeUnit());
        return jConvert > 0 ? d10 * jConvert : d10 / sourceUnit.getTimeUnit().convert(1L, targetUnit.getTimeUnit());
    }

    public static final long b(long j10, DurationUnit sourceUnit, DurationUnit targetUnit) {
        Intrinsics.h(sourceUnit, "sourceUnit");
        Intrinsics.h(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit().convert(j10, sourceUnit.getTimeUnit());
    }

    public static final long c(long j10, DurationUnit sourceUnit, DurationUnit targetUnit) {
        Intrinsics.h(sourceUnit, "sourceUnit");
        Intrinsics.h(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit().convert(j10, sourceUnit.getTimeUnit());
    }
}
