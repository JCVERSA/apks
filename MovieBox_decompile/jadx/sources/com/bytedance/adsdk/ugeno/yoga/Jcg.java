package com.bytedance.adsdk.ugeno.yoga;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

public enum Jcg {
    FLEX_START(0, "flex_start"),
    CENTER(1, TtmlNode.CENTER),
    FLEX_END(2, "flex_end"),
    SPACE_BETWEEN(3, "space_between"),
    SPACE_AROUND(4, "space_around"),
    SPACE_EVENLY(5, "space_evenly");

    private final String Dq;
    private final int Jcg;

    Jcg(int i10, String str) {
        this.Jcg = i10;
        this.Dq = str;
    }

    public int Sj() {
        return this.Jcg;
    }

    public static Jcg Sj(int i10) {
        if (i10 == 0) {
            return FLEX_START;
        }
        if (i10 == 1) {
            return CENTER;
        }
        if (i10 == 2) {
            return FLEX_END;
        }
        if (i10 == 3) {
            return SPACE_BETWEEN;
        }
        if (i10 == 4) {
            return SPACE_AROUND;
        }
        if (i10 == 5) {
            return SPACE_EVENLY;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }

    public static Jcg Sj(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                return CENTER;
            case "space_around":
                return SPACE_AROUND;
            case "space_evenly":
                return SPACE_EVENLY;
            case "flex_start":
                return FLEX_START;
            case "space_between":
                return SPACE_BETWEEN;
            case "flex_end":
                return FLEX_END;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
