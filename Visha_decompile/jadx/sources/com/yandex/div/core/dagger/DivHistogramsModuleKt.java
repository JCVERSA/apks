package com.yandex.div.core.dagger;

import com.yandex.div.histogram.HistogramConfiguration;
import com.yandex.div.histogram.reporter.HistogramReporterDelegateImpl;
import defpackage.iq4;
import defpackage.oj8;
import defpackage.rq4;
import defpackage.sq4;
import defpackage.y45;

public abstract class DivHistogramsModuleKt {
    public static final rq4 a(sq4 sq4Var) {
        y45.j(sq4Var, "histogramReporterDelegate");
        return new rq4(sq4Var);
    }

    public static final sq4 b(HistogramConfiguration histogramConfiguration, oj8 oj8Var, oj8 oj8Var2) {
        y45.j(histogramConfiguration, "histogramConfiguration");
        y45.j(oj8Var, "histogramRecorderProvider");
        y45.j(oj8Var2, "histogramColdTypeChecker");
        return !histogramConfiguration.a() ? sq4.a.a : new HistogramReporterDelegateImpl(oj8Var, new iq4(new DivHistogramsModuleKt$createHistogramReporterDelegate$histogramCallTypeProvider$1(oj8Var2)), histogramConfiguration, histogramConfiguration.h());
    }
}
