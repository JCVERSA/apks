package defpackage;

import java.util.concurrent.TimeUnit;
import kotlin.time.DurationUnit;

public abstract class x33 {
    public static final double a(double d, DurationUnit durationUnit, DurationUnit durationUnit2) {
        y45.j(durationUnit, "sourceUnit");
        y45.j(durationUnit2, "targetUnit");
        long jConvert = durationUnit2.getTimeUnit().convert(1L, durationUnit.getTimeUnit());
        return jConvert > 0 ? d * jConvert : d / durationUnit.getTimeUnit().convert(1L, durationUnit2.getTimeUnit());
    }

    public static final long b(long j, DurationUnit durationUnit, DurationUnit durationUnit2) {
        y45.j(durationUnit, "sourceUnit");
        y45.j(durationUnit2, "targetUnit");
        return durationUnit2.getTimeUnit().convert(j, durationUnit.getTimeUnit());
    }

    public static final long c(long j, DurationUnit durationUnit, DurationUnit durationUnit2) {
        y45.j(durationUnit, "sourceUnit");
        y45.j(durationUnit2, "targetUnit");
        return durationUnit2.getTimeUnit().convert(j, durationUnit.getTimeUnit());
    }

    public static TimeUnit d(DurationUnit durationUnit) {
        y45.j(durationUnit, "<this>");
        return durationUnit.getTimeUnit();
    }
}
