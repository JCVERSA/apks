package com.yandex.div.histogram.reporter;

import defpackage.c74;
import defpackage.dea;
import defpackage.iq4;
import defpackage.oj8;
import defpackage.oq4;
import defpackage.qq4;
import defpackage.sq4;
import defpackage.tq4;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.TimeUnit;

public final class HistogramReporterDelegateImpl implements sq4 {
    public final oj8 a;
    public final iq4 b;
    public final oq4 c;
    public final oj8 d;

    public HistogramReporterDelegateImpl(oj8 oj8Var, iq4 iq4Var, oq4 oq4Var, oj8 oj8Var2) {
        y45.j(oj8Var, "histogramRecorder");
        y45.j(iq4Var, "histogramCallTypeProvider");
        y45.j(oq4Var, "histogramRecordConfig");
        y45.j(oj8Var2, "taskExecutor");
        this.a = oj8Var;
        this.b = iq4Var;
        this.c = oq4Var;
        this.d = oj8Var2;
    }

    @Override
    public void a(final String str, final long j, String str2) {
        y45.j(str, "histogramName");
        final String strC = str2 == null ? this.b.c(str) : str2;
        if (tq4.a.a(strC, this.c)) {
            ((dea) this.d.get()).a(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m267invoke();
                    return zfb.a;
                }

                public final void m267invoke() {
                    ((qq4) this.this$0.a.get()).a(str + '.' + strC, wn8.e(j, 1L), TimeUnit.MILLISECONDS);
                }
            });
        }
    }
}
