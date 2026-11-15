package g4;

import androidx.work.j;
import h4.g;
import h4.h;
import i4.n;
import j4.u;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class e implements d, h4.c.a {

    private final c f60660a;

    private final h4.c[] f60661b;

    private final Object f60662c;

    public e(c cVar, h4.c[] constraintControllers) {
        Intrinsics.h(constraintControllers, "constraintControllers");
        this.f60660a = cVar;
        this.f60661b = constraintControllers;
        this.f60662c = new Object();
    }

    @Override
    public void a(Iterable workSpecs) {
        Intrinsics.h(workSpecs, "workSpecs");
        synchronized (this.f60662c) {
            try {
                for (h4.c cVar : this.f60661b) {
                    cVar.g(null);
                }
                for (h4.c cVar2 : this.f60661b) {
                    cVar2.e(workSpecs);
                }
                for (h4.c cVar3 : this.f60661b) {
                    cVar3.g(this);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void b(List workSpecs) {
        Intrinsics.h(workSpecs, "workSpecs");
        synchronized (this.f60662c) {
            try {
                ArrayList<u> arrayList = new ArrayList();
                for (Object obj : workSpecs) {
                    if (d(((u) obj).f62987a)) {
                        arrayList.add(obj);
                    }
                }
                for (u uVar : arrayList) {
                    j.e().a(f.f60663a, "Constraints met for " + uVar);
                }
                c cVar = this.f60660a;
                if (cVar != null) {
                    cVar.f(arrayList);
                    Unit unit = Unit.f64096a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void c(List workSpecs) {
        Intrinsics.h(workSpecs, "workSpecs");
        synchronized (this.f60662c) {
            c cVar = this.f60660a;
            if (cVar != null) {
                cVar.a(workSpecs);
                Unit unit = Unit.f64096a;
            }
        }
    }

    public final boolean d(String workSpecId) {
        h4.c cVar;
        boolean z10;
        Intrinsics.h(workSpecId, "workSpecId");
        synchronized (this.f60662c) {
            try {
                h4.c[] cVarArr = this.f60661b;
                int length = cVarArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        cVar = null;
                        break;
                    }
                    cVar = cVarArr[i10];
                    if (cVar.d(workSpecId)) {
                        break;
                    }
                    i10++;
                }
                if (cVar != null) {
                    j.e().a(f.f60663a, "Work " + workSpecId + " constrained by " + cVar.getClass().getSimpleName());
                }
                z10 = cVar == null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override
    public void reset() {
        synchronized (this.f60662c) {
            try {
                for (h4.c cVar : this.f60661b) {
                    cVar.f();
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(n trackers, c cVar) {
        this(cVar, new h4.c[]{new h4.a(trackers.a()), new h4.b(trackers.b()), new h(trackers.d()), new h4.d(trackers.c()), new g(trackers.c()), new h4.f(trackers.c()), new h4.e(trackers.c())});
        Intrinsics.h(trackers, "trackers");
    }
}
