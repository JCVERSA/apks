package defpackage;

import android.content.Context;
import com.yandex.div.histogram.DivParsingHistogramReporter;
import com.yandex.div.storage.DivStorageComponent;

public final class br2 {
    public static final br2 a = new br2();

    public static final DivParsingHistogramReporter c(DivParsingHistogramReporter divParsingHistogramReporter) {
        y45.j(divParsingHistogramReporter, "$parsingHistogramReporter");
        return divParsingHistogramReporter;
    }

    public final DivStorageComponent b(jk3 jk3Var, Context context, sq4 sq4Var, final DivParsingHistogramReporter divParsingHistogramReporter) {
        y45.j(jk3Var, "externalDivStorageComponent");
        y45.j(context, "context");
        y45.j(sq4Var, "histogramReporterDelegate");
        y45.j(divParsingHistogramReporter, "parsingHistogramReporter");
        return jk3Var.b().c() ? (DivStorageComponent) jk3Var.b().b() : DivStorageComponent.Companion.c(DivStorageComponent.a, context, sq4Var, null, null, null, new oj8() {
            @Override
            public final Object get() {
                return br2.c(divParsingHistogramReporter);
            }
        }, null, 92, null);
    }
}
