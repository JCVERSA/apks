package jf;

import a.TheRouterServiceProvideInjecter;
import android.content.Context;
import com.therouter.TheRouterKt;
import com.therouter.TheRouterThreadPool;
import com.therouter.inject.DebugOnlyKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private volatile boolean f63110e;

    private final HashMap f63106a = new HashMap();

    private final HashMap f63107b = new HashMap();

    private final CopyOnWriteArrayList f63108c = new CopyOnWriteArrayList();

    private final CopyOnWriteArrayList f63109d = new CopyOnWriteArrayList();

    private final List f63111f = new ArrayList();

    public static final void d(b this$0) {
        Intrinsics.h(this$0, "this$0");
        TheRouterKt.f("init", "TheRouter.init() method do @FlowTask init", null, 4, null);
        this$0.j();
        TheRouterKt.f("init", "TheRouter.init() method do @FlowTask schedule", null, 4, null);
        f.a();
    }

    private final void f(d dVar) {
        if (dVar.e()) {
            return;
        }
        Set setG = g(dVar);
        if (!c.d(setG)) {
            if (this.f63108c.contains(dVar)) {
                return;
            }
            this.f63108c.add(dVar);
        } else {
            if (this.f63111f.contains(dVar)) {
                throw new IllegalArgumentException("TheRouter::Digraph::Cyclic dependency " + c.c(this.f63111f, dVar));
            }
            this.f63111f.add(dVar);
            Iterator it = setG.iterator();
            while (it.hasNext()) {
                f((d) it.next());
            }
            this.f63111f.remove(dVar);
            if (this.f63108c.contains(dVar)) {
                return;
            }
            this.f63108c.add(dVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final e k(String str) {
        e eVar;
        int iHashCode = str.hashCode();
        if (iHashCode == -570693157) {
            if (str.equals("TheRouter_Before_Initialization")) {
                eVar = new e(str, null, 2, 0 == true ? 1 : 0);
            }
            return eVar;
        }
        if (iHashCode != -136502702) {
            if (iHashCode == 1312134309 && str.equals("TheRouter_Initialization")) {
                return new e("TheRouter_Initialization", "TheRouter_Before_Initialization");
            }
        } else if (str.equals("TheRouter_activity_splash")) {
            return new e("TheRouter_activity_splash", "TheRouter_Initialization");
        }
        eVar = new e(str, "TheRouter_Initialization");
        return eVar;
    }

    public final boolean b(Runnable r10) {
        Intrinsics.h(r10, "r");
        return this.f63109d.add(r10);
    }

    public final void c(Context context) {
        TheRouterServiceProvideInjecter.a(context, this);
        TheRouterKt.f("init", "TheRouter.init() method do @FlowTask before task", null, 4, null);
        if (!TheRouterServiceProvideInjecter.asm) {
            DebugOnlyKt.a(context);
            if (context != null) {
                Iterator it = DebugOnlyKt.d().iterator();
                while (it.hasNext()) {
                    ((com.therouter.inject.b) it.next()).initFlowTask(context, this);
                }
            }
        }
        e();
        TheRouterThreadPool.f(new Runnable() {
            @Override
            public final void run() {
                b.d(this.f63105a);
            }
        });
    }

    public final void e() {
        e eVarI = i("TheRouter_Before_Initialization");
        this.f63107b.put("TheRouter_Before_Initialization", eVarI);
        eVarI.g();
        Collection<d> collectionValues = this.f63106a.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (d dVar : collectionValues) {
            if (!dVar.a() && dVar.b().size() == 1 && dVar.b().contains("TheRouter_Before_Initialization")) {
                dVar.g();
            }
        }
    }

    public final Set g(d root) {
        Intrinsics.h(root, "root");
        HashSet hashSet = new HashSet();
        for (String str : root.b()) {
            d dVar = (d) this.f63106a.get(str);
            if (dVar == null) {
                HashMap map = this.f63107b;
                Intrinsics.e(str);
                map.put(str, k(str));
            } else {
                hashSet.add(dVar);
            }
        }
        return hashSet;
    }

    public final boolean h() {
        return this.f63110e;
    }

    public final e i(String name) {
        Intrinsics.h(name, "name");
        e eVarK = (e) this.f63107b.get(name);
        if (eVarK == null) {
            eVarK = k(name);
            this.f63107b.put(name, eVarK);
        }
        Intrinsics.e(eVarK);
        return eVarK;
    }

    public final void j() {
        for (d dVar : this.f63106a.values()) {
            Intrinsics.e(dVar);
            f(dVar);
        }
        this.f63110e = true;
        Iterator it = this.f63109d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final void l(String name) {
        Intrinsics.h(name, "name");
        Collection<e> collectionValues = this.f63107b.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (e eVar : collectionValues) {
            if (eVar.b().contains(name)) {
                eVar.j();
            }
        }
    }

    public final void m() {
        for (d dVar : this.f63108c) {
            if (dVar.f()) {
                boolean z10 = true;
                for (String str : dVar.b()) {
                    d dVar2 = (d) this.f63106a.get(str);
                    if (dVar2 == null) {
                        dVar2 = (d) this.f63107b.get(str);
                    }
                    if (dVar2 != null && !dVar2.e()) {
                        z10 = false;
                    }
                }
                if (z10) {
                    dVar.g();
                }
            }
        }
    }
}
