package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.time.DurationUnit;

public abstract class y33 extends x33 {
    public static final DurationUnit e(char c, boolean z) {
        if (!z) {
            if (c == 'D') {
                return DurationUnit.DAYS;
            }
            throw new IllegalArgumentException("Invalid or unsupported duration ISO non-time unit: " + c);
        }
        if (c == 'H') {
            return DurationUnit.HOURS;
        }
        if (c == 'M') {
            return DurationUnit.MINUTES;
        }
        if (c == 'S') {
            return DurationUnit.SECONDS;
        }
        throw new IllegalArgumentException("Invalid duration ISO time unit: " + c);
    }

    public static final DurationUnit f(String str) {
        y45.j(str, "shortName");
        int iHashCode = str.hashCode();
        if (iHashCode != 100) {
            if (iHashCode != 104) {
                if (iHashCode != 109) {
                    if (iHashCode != 115) {
                        if (iHashCode != 3494) {
                            if (iHashCode != 3525) {
                                if (iHashCode == 3742 && str.equals("us")) {
                                    return DurationUnit.MICROSECONDS;
                                }
                            } else if (str.equals("ns")) {
                                return DurationUnit.NANOSECONDS;
                            }
                        } else if (str.equals("ms")) {
                            return DurationUnit.MILLISECONDS;
                        }
                    } else if (str.equals("s")) {
                        return DurationUnit.SECONDS;
                    }
                } else if (str.equals(CmcdData.OBJECT_TYPE_MANIFEST)) {
                    return DurationUnit.MINUTES;
                }
            } else if (str.equals(CmcdData.STREAMING_FORMAT_HLS)) {
                return DurationUnit.HOURS;
            }
        } else if (str.equals("d")) {
            return DurationUnit.DAYS;
        }
        throw new IllegalArgumentException("Unknown duration unit short name: " + str);
    }
}
