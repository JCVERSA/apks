package androidx.activity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class s {

    private final Executor f624a;

    private final Function0 f625b;

    private final Object f626c;

    private int f627d;

    private boolean f628e;

    private boolean f629f;

    private final List f630g;

    private final Runnable f631h;

    public s(Executor executor, Function0 reportFullyDrawn) {
        Intrinsics.h(executor, "executor");
        Intrinsics.h(reportFullyDrawn, "reportFullyDrawn");
        this.f624a = executor;
        this.f625b = reportFullyDrawn;
        this.f626c = new Object();
        this.f630g = new ArrayList();
        this.f631h = new Runnable() {
            @Override
            public final void run() {
                s.d(this.f585a);
            }
        };
    }

    public static final void d(s sVar) {
        synchronized (sVar.f626c) {
            try {
                sVar.f628e = false;
                if (sVar.f627d == 0 && !sVar.f629f) {
                    sVar.f625b.invoke();
                    sVar.b();
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b() {
        synchronized (this.f626c) {
            try {
                this.f629f = true;
                Iterator it = this.f630g.iterator();
                while (it.hasNext()) {
                    ((Function0) it.next()).invoke();
                }
                this.f630g.clear();
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean c() {
        boolean z10;
        synchronized (this.f626c) {
            z10 = this.f629f;
        }
        return z10;
    }
}
