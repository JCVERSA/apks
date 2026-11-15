package com.transsion.dbdata.engine;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.blankj.utilcode.util.ThreadUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.engine.DataEngine;
import com.transsion.dbdata.engine.base.callback.DataRequestResult;
import com.transsion.dbdata.engine.base.layer.DataLayer;
import com.transsion.dbdata.engine.base.scope.DataScope;
import defpackage.c74;
import defpackage.i81;
import defpackage.js1;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.ns1;
import defpackage.nu4;
import defpackage.pu4;
import defpackage.w74;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.d;

public final class DataEngine implements pu4 {
    public static Handler g;
    public static final DataEngine a = new DataEngine();
    public static List b = y71.k();
    public static final Handler c = new Handler(Looper.getMainLooper());
    public static final AtomicBoolean d = new AtomicBoolean(false);
    public static final js1 e = new js1(false, false, 3, null);
    public static final HandlerThread f = new HandlerThread("DataEngine");
    public static final nk1 h = d.a(mc2.a());
    public static final Object i = new Object();

    public static final class a implements nu4 {
        public final DataScope a;
        public final ns1 b;
        public final nu4 c;
        public final int d;
        public final w74 e;

        public a(DataScope dataScope, ns1 ns1Var, nu4 nu4Var, int i, w74 w74Var) {
            this.a = dataScope;
            this.b = ns1Var;
            this.c = nu4Var;
            this.d = i;
            this.e = w74Var;
        }

        public static final void c(nu4 nu4Var, DataRequestResult dataRequestResult, Object obj, String str) {
            nu4Var.a(dataRequestResult, obj, str);
        }

        @Override
        public void a(final DataRequestResult dataRequestResult, final Object obj, final String str) {
            y45.j(dataRequestResult, "result");
            if (dataRequestResult != DataRequestResult.SUCCESS) {
                DataEngine.a.q(this.a, this.b, this.c, this.d + 1, this.e);
                return;
            }
            Handler handler = DataEngine.c;
            final nu4 nu4Var = this.c;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    DataEngine.a.c(nu4Var, dataRequestResult, obj, str);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.Object] */
    public static final zfb m(DataScope dataScope, ns1 ns1Var, Ref$ObjectRef ref$ObjectRef) {
        Iterator it = b.iterator();
        while (it.hasNext()) {
            ?? A = ((pu4) it.next()).a(dataScope, ns1Var);
            if (A != 0) {
                ref$ObjectRef.element = A;
                break;
            }
        }
        return zfb.a;
    }

    public static final zfb n(DataScope dataScope, ns1 ns1Var, nu4 nu4Var) {
        a.q(dataScope, ns1Var, nu4Var, 0, new w74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return DataEngine.o((DataScope) obj, (ns1) obj2, (nu4) obj3, ((Integer) obj4).intValue());
            }
        });
        return zfb.a;
    }

    public static final zfb o(DataScope dataScope, ns1 ns1Var, nu4 nu4Var, int i2) {
        y45.j(dataScope, "currentScope");
        y45.j(ns1Var, "currentRequest");
        y45.j(nu4Var, "currentCallback");
        ((pu4) b.get(i2)).b(dataScope, ns1Var, nu4Var);
        return zfb.a;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.util.List] */
    public static final zfb p(DataScope dataScope, ns1 ns1Var, Ref$ObjectRef ref$ObjectRef) {
        Iterator it = b.iterator();
        while (it.hasNext()) {
            ?? C = ((pu4) it.next()).c(dataScope, ns1Var);
            if (C != 0) {
                ref$ObjectRef.element = C;
                break;
            }
        }
        return zfb.a;
    }

    public static final void r(nu4 nu4Var) {
        nu4Var.a(DataRequestResult.FAILURE, null, "No more layers available");
    }

    public static final void s(w74 w74Var, DataScope dataScope, ns1 ns1Var, int i2, nu4 nu4Var) {
        w74Var.invoke(dataScope, ns1Var, new a(dataScope, ns1Var, nu4Var, i2, w74Var), Integer.valueOf(i2));
    }

    @Override
    public Object a(final DataScope dataScope, final ns1 ns1Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        t(ns1Var.a(), new c74() {
            @Override
            public final Object invoke() {
                return DataEngine.m(dataScope, ns1Var, ref$ObjectRef);
            }
        });
        return ref$ObjectRef.element;
    }

    @Override
    public void b(final DataScope dataScope, final ns1 ns1Var, final nu4 nu4Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        y45.j(nu4Var, "callback");
        t(ns1Var.a(), new c74() {
            @Override
            public final Object invoke() {
                return DataEngine.n(dataScope, ns1Var, nu4Var);
            }
        });
    }

    @Override
    public List c(final DataScope dataScope, final ns1 ns1Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        t(ns1Var.a(), new c74() {
            @Override
            public final Object invoke() {
                return DataEngine.p(dataScope, ns1Var, ref$ObjectRef);
            }
        });
        List list = (List) ref$ObjectRef.element;
        return list == null ? y71.k() : list;
    }

    public final void q(final DataScope dataScope, final ns1 ns1Var, final nu4 nu4Var, final int i2, final w74 w74Var) {
        if (i2 >= b.size()) {
            c.post(new Runnable() {
                @Override
                public final void run() {
                    DataEngine.r(nu4Var);
                }
            });
            return;
        }
        Handler handler = g;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    DataEngine.s(w74Var, dataScope, ns1Var, i2, nu4Var);
                }
            });
        }
    }

    public final void t(final Context context, final c74 c74Var) {
        TaskExecutor.Task<Void> task = new TaskExecutor.Task<Void>() {
            @Override
            public Void onBackground() {
                DataEngine.a.v(context);
                return null;
            }

            @Override
            public void onResult(Void result) {
                super.onResult(result);
                c74Var.invoke();
            }
        };
        if (ThreadUtils.r()) {
            TaskExecutor.c(task);
        } else {
            task.onBackground();
            task.onResult((Void) null);
        }
    }

    public final void u(Context context) {
        DataLayer[] dataLayerArrValues = DataLayer.values();
        ArrayList arrayList = new ArrayList(dataLayerArrValues.length);
        for (DataLayer dataLayer : dataLayerArrValues) {
            arrayList.add(dataLayer.getInstance(context));
        }
        b = i81.b1(arrayList);
        if (e.a()) {
            HandlerThread handlerThread = f;
            if (handlerThread.isAlive()) {
                return;
            }
            try {
                handlerThread.start();
                g = new Handler(handlerThread.getLooper());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void v(Context context) {
        synchronized (i) {
            try {
                AtomicBoolean atomicBoolean = d;
                if (!atomicBoolean.get()) {
                    a.u(context);
                    atomicBoolean.set(true);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
