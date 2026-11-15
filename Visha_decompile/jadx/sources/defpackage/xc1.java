package defpackage;

import android.util.Log;
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

public class xc1 implements ic1, oc1 {
    public static final pj8 i = new pj8() {
        @Override
        public final Object get() {
            return Collections.emptySet();
        }
    };
    public final Map a;
    public final Map b;
    public final Map c;
    public final List d;
    public Set e;
    public final vd3 f;
    public final AtomicReference g;
    public final sc1 h;

    public static final class b {
        public final Executor a;
        public final List b = new ArrayList();
        public final List c = new ArrayList();
        public sc1 d = sc1.a;

        public b(Executor executor) {
            this.a = executor;
        }

        public static ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(zb1 zb1Var) {
            this.c.add(zb1Var);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.b.add(new pj8() {
                @Override
                public final Object get() {
                    return xc1.b.f(componentRegistrar);
                }
            });
            return this;
        }

        public b d(Collection collection) {
            this.b.addAll(collection);
            return this;
        }

        public xc1 e() {
            return new xc1(this.a, this.b, this.c, this.d);
        }

        public b g(sc1 sc1Var) {
            this.d = sc1Var;
            return this;
        }
    }

    public static b k(Executor executor) {
        return new b(executor);
    }

    public static List o(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @Override
    public synchronized pj8 b(vk8 vk8Var) {
        mj5 mj5Var = (mj5) this.c.get(vk8Var);
        if (mj5Var != null) {
            return mj5Var;
        }
        return i;
    }

    @Override
    public synchronized pj8 f(vk8 vk8Var) {
        yd8.c(vk8Var, "Null interface requested.");
        return (pj8) this.b.get(vk8Var);
    }

    public final void l(List list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((pj8) it.next()).get();
                    if (componentRegistrar != null) {
                        list.addAll(this.h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                for (Object obj : ((zb1) it2.next()).j().toArray()) {
                    if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                        if (this.e.contains(obj.toString())) {
                            it2.remove();
                            break;
                        }
                        this.e.add(obj.toString());
                    }
                }
            }
            if (this.a.isEmpty()) {
                bp1.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.a.keySet());
                arrayList2.addAll(list);
                bp1.a(arrayList2);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                final zb1 zb1Var = (zb1) it3.next();
                this.a.put(zb1Var, new zi5(new pj8() {
                    @Override
                    public final Object get() {
                        return this.a.p(zb1Var);
                    }
                }));
            }
            arrayList.addAll(u(list));
            arrayList.addAll(v());
            t();
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((Runnable) it4.next()).run();
        }
        s();
    }

    public final void m(Map map, boolean z) {
        for (Map.Entry entry : map.entrySet()) {
            zb1 zb1Var = (zb1) entry.getKey();
            pj8 pj8Var = (pj8) entry.getValue();
            if (zb1Var.n() || (zb1Var.o() && z)) {
                pj8Var.get();
            }
        }
        this.f.d();
    }

    public void n(boolean z) {
        HashMap map;
        if (wk5.a(this.g, null, Boolean.valueOf(z))) {
            synchronized (this) {
                map = new HashMap(this.a);
            }
            m(map, z);
        }
    }

    public final Object p(zb1 zb1Var) {
        return zb1Var.h().a(new ju8(zb1Var, this));
    }

    public final void s() {
        Boolean bool = (Boolean) this.g.get();
        if (bool != null) {
            m(this.a, bool.booleanValue());
        }
    }

    public final void t() {
        for (zb1 zb1Var : this.a.keySet()) {
            for (k82 k82Var : zb1Var.g()) {
                if (k82Var.f() && !this.c.containsKey(k82Var.b())) {
                    this.c.put(k82Var.b(), mj5.b(Collections.emptySet()));
                } else if (this.b.containsKey(k82Var.b())) {
                    continue;
                } else {
                    if (k82Var.e()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", zb1Var, k82Var.b()));
                    }
                    if (!k82Var.f()) {
                        this.b.put(k82Var.b(), rs7.c());
                    }
                }
            }
        }
    }

    public final List u(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zb1 zb1Var = (zb1) it.next();
            if (zb1Var.p()) {
                final pj8 pj8Var = (pj8) this.a.get(zb1Var);
                for (vk8 vk8Var : zb1Var.j()) {
                    if (this.b.containsKey(vk8Var)) {
                        final rs7 rs7Var = (rs7) ((pj8) this.b.get(vk8Var));
                        arrayList.add(new Runnable() {
                            @Override
                            public final void run() {
                                rs7Var.f(pj8Var);
                            }
                        });
                    } else {
                        this.b.put(vk8Var, pj8Var);
                    }
                }
            }
        }
        return arrayList;
    }

    public final List v() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.a.entrySet()) {
            zb1 zb1Var = (zb1) entry.getKey();
            if (!zb1Var.p()) {
                pj8 pj8Var = (pj8) entry.getValue();
                for (vk8 vk8Var : zb1Var.j()) {
                    if (!map.containsKey(vk8Var)) {
                        map.put(vk8Var, new HashSet());
                    }
                    ((Set) map.get(vk8Var)).add(pj8Var);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.c.containsKey(entry2.getKey())) {
                final mj5 mj5Var = (mj5) this.c.get(entry2.getKey());
                for (final pj8 pj8Var2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() {
                        @Override
                        public final void run() {
                            mj5Var.a(pj8Var2);
                        }
                    });
                }
            } else {
                this.c.put((vk8) entry2.getKey(), mj5.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    public xc1(Executor executor, Iterable iterable, Collection collection, sc1 sc1Var) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.e = new HashSet();
        this.g = new AtomicReference();
        vd3 vd3Var = new vd3(executor);
        this.f = vd3Var;
        this.h = sc1Var;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zb1.s(vd3Var, vd3.class, e2a.class, kk8.class));
        arrayList.add(zb1.s(this, oc1.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zb1 zb1Var = (zb1) it.next();
            if (zb1Var != null) {
                arrayList.add(zb1Var);
            }
        }
        this.d = o(iterable);
        l(arrayList);
    }
}
