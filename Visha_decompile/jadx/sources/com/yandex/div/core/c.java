package com.yandex.div.core;

import com.yandex.div.core.c;
import com.yandex.div.histogram.HistogramConfiguration;
import com.yandex.div.storage.DivStorageComponent;
import defpackage.hq4;
import defpackage.jk3;
import defpackage.oj8;
import defpackage.oq4;
import defpackage.qq4;
import defpackage.ubc;
import defpackage.y45;
import defpackage.yo2;
import defpackage.zb9;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c {
    public final oj8 a;
    public final ExecutorService b;
    public final oj8 c;
    public final oj8 d;
    public final oj8 e;

    public static final class a {
        public oj8 a;
        public ExecutorService b;
        public oj8 d;
        public oj8 c = new oj8() {
            @Override
            public final Object get() {
                return c.a.e();
            }
        };
        public oj8 e = new oj8() {
            @Override
            public final Object get() {
                return c.a.d();
            }
        };

        public static final yo2 d() {
            return yo2.b;
        }

        public static final HistogramConfiguration e() {
            return HistogramConfiguration.b;
        }

        public final c c() {
            oj8 oj8Var = this.a;
            ExecutorService executorServiceNewSingleThreadExecutor = this.b;
            if (executorServiceNewSingleThreadExecutor == null) {
                executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            }
            ExecutorService executorService = executorServiceNewSingleThreadExecutor;
            y45.i(executorService, "executorService ?: Execu…newSingleThreadExecutor()");
            return new c(oj8Var, executorService, this.c, this.d, this.e, null);
        }
    }

    public c(oj8 oj8Var, ExecutorService executorService, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, DefaultConstructorMarker defaultConstructorMarker) {
        this(oj8Var, executorService, oj8Var2, oj8Var3, oj8Var4);
    }

    public final com.yandex.div.histogram.a a() {
        Object obj = ((HistogramConfiguration) this.c.get()).b().get();
        y45.i(obj, "histogramConfiguration.g…geHistogramReporter.get()");
        return (com.yandex.div.histogram.a) obj;
    }

    public final yo2 b() {
        Object obj = this.e.get();
        y45.i(obj, "divRequestExecutor.get()");
        return (yo2) obj;
    }

    public final ExecutorService c() {
        return this.b;
    }

    public final jk3 d() {
        jk3.a aVar = jk3.b;
        oj8 oj8Var = this.d;
        return aVar.c(oj8Var != null ? (DivStorageComponent) oj8Var.get() : null);
    }

    public final HistogramConfiguration e() {
        Object obj = this.c.get();
        y45.i(obj, "histogramConfiguration.get()");
        return (HistogramConfiguration) obj;
    }

    public final oq4 f() {
        Object obj = this.c.get();
        y45.i(obj, "histogramConfiguration.get()");
        return (oq4) obj;
    }

    public final qq4 g() {
        return new qq4((hq4) ((HistogramConfiguration) this.c.get()).g().get());
    }

    public final zb9 h() {
        oj8 oj8Var = this.a;
        if (oj8Var == null) {
            return null;
        }
        ubc.a(oj8Var.get());
        return null;
    }

    public c(oj8 oj8Var, ExecutorService executorService, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4) {
        this.a = oj8Var;
        this.b = executorService;
        this.c = oj8Var2;
        this.d = oj8Var3;
        this.e = oj8Var4;
    }
}
