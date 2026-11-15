package ob;

import android.util.Log;
import androidx.compose.animation.core.j0;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public class o implements e, cc.a {

    private static final kc.b f67763i = new kc.b() {
        @Override
        public final Object get() {
            return Collections.emptySet();
        }
    };

    private final Map f67764a;

    private final Map f67765b;

    private final Map f67766c;

    private final List f67767d;

    private Set f67768e;

    private final t f67769f;

    private final AtomicReference f67770g;

    private final j f67771h;

    public static final class b {

        private final Executor f67772a;

        private final List f67773b = new ArrayList();

        private final List f67774c = new ArrayList();

        private j f67775d = j.f67756a;

        b(Executor executor) {
            this.f67772a = executor;
        }

        public static ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(c cVar) {
            this.f67774c.add(cVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.f67773b.add(new kc.b() {
                @Override
                public final Object get() {
                    return o.b.f(componentRegistrar);
                }
            });
            return this;
        }

        public b d(Collection collection) {
            this.f67773b.addAll(collection);
            return this;
        }

        public o e() {
            return new o(this.f67772a, this.f67773b, this.f67774c, this.f67775d);
        }

        public b g(j jVar) {
            this.f67775d = jVar;
            return this;
        }
    }

    public static b m(Executor executor) {
        return new b(executor);
    }

    private void n(List list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.f67767d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((kc.b) it.next()).get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f67771h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e10) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                for (Object obj : ((c) it2.next()).j().toArray()) {
                    if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                        if (this.f67768e.contains(obj.toString())) {
                            it2.remove();
                            break;
                        }
                        this.f67768e.add(obj.toString());
                    }
                }
            }
            if (this.f67764a.isEmpty()) {
                q.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f67764a.keySet());
                arrayList2.addAll(list);
                q.a(arrayList2);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                final c cVar = (c) it3.next();
                this.f67764a.put(cVar, new u(new kc.b() {
                    @Override
                    public final Object get() {
                        return this.f67757a.r(cVar);
                    }
                }));
            }
            arrayList.addAll(w(list));
            arrayList.addAll(x());
            v();
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((Runnable) it4.next()).run();
        }
        u();
    }

    private void o(Map map, boolean z10) {
        for (Map.Entry entry : map.entrySet()) {
            c cVar = (c) entry.getKey();
            kc.b bVar = (kc.b) entry.getValue();
            if (cVar.n() || (cVar.o() && z10)) {
                bVar.get();
            }
        }
        this.f67769f.d();
    }

    private static List q(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public Object r(c cVar) {
        return cVar.h().a(new c0(cVar, this));
    }

    private void u() {
        Boolean bool = (Boolean) this.f67770g.get();
        if (bool != null) {
            o(this.f67764a, bool.booleanValue());
        }
    }

    private void v() {
        for (c cVar : this.f67764a.keySet()) {
            for (r rVar : cVar.g()) {
                if (rVar.g() && !this.f67766c.containsKey(rVar.c())) {
                    this.f67766c.put(rVar.c(), v.b(Collections.emptySet()));
                } else if (this.f67765b.containsKey(rVar.c())) {
                    continue;
                } else {
                    if (rVar.f()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", cVar, rVar.c()));
                    }
                    if (!rVar.g()) {
                        this.f67765b.put(rVar.c(), z.e());
                    }
                }
            }
        }
    }

    private List w(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.p()) {
                final kc.b bVar = (kc.b) this.f67764a.get(cVar);
                for (b0 b0Var : cVar.j()) {
                    if (this.f67765b.containsKey(b0Var)) {
                        final z zVar = (z) ((kc.b) this.f67765b.get(b0Var));
                        arrayList.add(new Runnable() {
                            @Override
                            public final void run() {
                                zVar.j(bVar);
                            }
                        });
                    } else {
                        this.f67765b.put(b0Var, bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private List x() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f67764a.entrySet()) {
            c cVar = (c) entry.getKey();
            if (!cVar.p()) {
                kc.b bVar = (kc.b) entry.getValue();
                for (b0 b0Var : cVar.j()) {
                    if (!map.containsKey(b0Var)) {
                        map.put(b0Var, new HashSet());
                    }
                    ((Set) map.get(b0Var)).add(bVar);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.f67766c.containsKey(entry2.getKey())) {
                final v vVar = (v) this.f67766c.get(entry2.getKey());
                for (final kc.b bVar2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() {
                        @Override
                        public final void run() {
                            vVar.a(bVar2);
                        }
                    });
                }
            } else {
                this.f67766c.put((b0) entry2.getKey(), v.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override
    public Object a(Class cls) {
        return d.a(this, cls);
    }

    @Override
    public kc.a b(b0 b0Var) {
        kc.b bVarC = c(b0Var);
        if (bVarC == null) {
            return z.e();
        }
        return bVarC instanceof z ? (z) bVarC : z.i(bVarC);
    }

    @Override
    public synchronized kc.b c(b0 b0Var) {
        a0.c(b0Var, "Null interface requested.");
        return (kc.b) this.f67765b.get(b0Var);
    }

    @Override
    public Set d(b0 b0Var) {
        return d.f(this, b0Var);
    }

    @Override
    public Set e(Class cls) {
        return d.e(this, cls);
    }

    @Override
    public Object f(b0 b0Var) {
        return d.b(this, b0Var);
    }

    @Override
    public synchronized kc.b g(b0 b0Var) {
        v vVar = (v) this.f67766c.get(b0Var);
        if (vVar != null) {
            return vVar;
        }
        return f67763i;
    }

    @Override
    public kc.b h(Class cls) {
        return d.d(this, cls);
    }

    @Override
    public kc.a i(Class cls) {
        return d.c(this, cls);
    }

    public void p(boolean z10) {
        HashMap map;
        if (j0.a(this.f67770g, null, Boolean.valueOf(z10))) {
            synchronized (this) {
                map = new HashMap(this.f67764a);
            }
            o(map, z10);
        }
    }

    private o(Executor executor, Iterable iterable, Collection collection, j jVar) {
        this.f67764a = new HashMap();
        this.f67765b = new HashMap();
        this.f67766c = new HashMap();
        this.f67768e = new HashSet();
        this.f67770g = new AtomicReference();
        t tVar = new t(executor);
        this.f67769f = tVar;
        this.f67771h = jVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.s(tVar, t.class, hc.d.class, hc.c.class));
        arrayList.add(c.s(this, cc.a.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.f67767d = q(iterable);
        n(arrayList);
    }
}
