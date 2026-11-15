package com.yandex.div.core.dagger;

import com.yandex.div.core.dagger.DivKitHistogramsModule;
import com.yandex.div.histogram.DivParsingHistogramReporter;
import com.yandex.div.histogram.HistogramConfiguration;
import defpackage.ax2;
import defpackage.c74;
import defpackage.oj8;
import defpackage.rq4;
import defpackage.sq4;
import defpackage.y45;
import defpackage.yn2;
import java.util.concurrent.Executor;

public final class DivKitHistogramsModule {
    public static final DivKitHistogramsModule a = new DivKitHistogramsModule();

    public static final Executor d() {
        return new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                DivKitHistogramsModule.e(runnable);
            }
        };
    }

    public static final void e(Runnable runnable) {
    }

    public final oj8 c(HistogramConfiguration histogramConfiguration, oj8 oj8Var) {
        if (!histogramConfiguration.d()) {
            return new oj8() {
                @Override
                public final Object get() {
                    return DivKitHistogramsModule.d();
                }
            };
        }
        y45.h(oj8Var, "null cannot be cast to non-null type javax.inject.Provider<java.util.concurrent.Executor>");
        return oj8Var;
    }

    public final DivParsingHistogramReporter f(HistogramConfiguration histogramConfiguration, oj8 oj8Var, oj8 oj8Var2) {
        y45.j(histogramConfiguration, "histogramConfiguration");
        y45.j(oj8Var, "histogramReporterDelegate");
        y45.j(oj8Var2, "executorService");
        if (!histogramConfiguration.a()) {
            return DivParsingHistogramReporter.a.a();
        }
        oj8 oj8VarC = c(histogramConfiguration, oj8Var2);
        Object obj = oj8Var.get();
        y45.i(obj, "histogramReporterDelegate.get()");
        return new yn2(new DivKitHistogramsModule$provideDivParsingHistogramReporter$1(g((sq4) obj)), new DivKitHistogramsModule$provideDivParsingHistogramReporter$2(oj8VarC));
    }

    public final oj8 g(final sq4 sq4Var) {
        return new ax2(new c74() {
            {
                super(0);
            }

            @Override
            public final rq4 invoke() {
                return DivHistogramsModuleKt.a(sq4Var);
            }
        });
    }

    public final sq4 h(HistogramConfiguration histogramConfiguration, oj8 oj8Var, oj8 oj8Var2) {
        y45.j(histogramConfiguration, "histogramConfiguration");
        y45.j(oj8Var, "histogramRecorderProvider");
        y45.j(oj8Var2, "histogramColdTypeCheckerProvider");
        return histogramConfiguration.a() ? DivHistogramsModuleKt.b(histogramConfiguration, oj8Var, oj8Var2) : sq4.a.a;
    }
}
