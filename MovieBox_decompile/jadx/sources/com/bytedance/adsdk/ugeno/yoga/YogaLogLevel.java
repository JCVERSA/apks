package com.bytedance.adsdk.ugeno.yoga;

@com.bytedance.adsdk.ugeno.yoga.Sj.Sj
public enum YogaLogLevel {
    ERROR(0),
    WARN(1),
    INFO(2),
    DEBUG(3),
    VERBOSE(4),
    FATAL(5);

    private final int Jcg;

    YogaLogLevel(int i10) {
        this.Jcg = i10;
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    public static YogaLogLevel fromInt(int i10) {
        if (i10 == 0) {
            return ERROR;
        }
        if (i10 == 1) {
            return WARN;
        }
        if (i10 == 2) {
            return INFO;
        }
        if (i10 == 3) {
            return DEBUG;
        }
        if (i10 == 4) {
            return VERBOSE;
        }
        if (i10 == 5) {
            return FATAL;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }
}
