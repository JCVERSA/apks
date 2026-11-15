package defpackage;

import com.yandex.div.histogram.HistogramCallTypeChecker;

public final class iq4 extends HistogramCallTypeChecker {
    public final c74 b;

    public iq4(c74 c74Var) {
        y45.j(c74Var, "histogramColdTypeChecker");
        this.b = c74Var;
    }

    public final String c(String str) {
        y45.j(str, "histogramName");
        if (!((jq4) this.b.invoke()).a(str)) {
            return a(str) ? "Cool" : "Warm";
        }
        a(str);
        return "Cold";
    }
}
