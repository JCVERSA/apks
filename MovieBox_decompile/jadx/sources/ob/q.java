package ob;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

abstract class q {

    private static class b {

        private final ob.c f67777a;

        private final Set f67778b = new HashSet();

        private final Set f67779c = new HashSet();

        b(ob.c cVar) {
            this.f67777a = cVar;
        }

        void a(b bVar) {
            this.f67778b.add(bVar);
        }

        void b(b bVar) {
            this.f67779c.add(bVar);
        }

        ob.c c() {
            return this.f67777a;
        }

        Set d() {
            return this.f67778b;
        }

        boolean e() {
            return this.f67778b.isEmpty();
        }

        boolean f() {
            return this.f67779c.isEmpty();
        }

        void g(b bVar) {
            this.f67779c.remove(bVar);
        }
    }

    private static class c {

        private final b0 f67780a;

        private final boolean f67781b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f67780a.equals(this.f67780a) && cVar.f67781b == this.f67781b;
        }

        public int hashCode() {
            return ((this.f67780a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f67781b).hashCode();
        }

        private c(b0 b0Var, boolean z10) {
            this.f67780a = b0Var;
            this.f67781b = z10;
        }
    }

    static void a(List list) {
        Set<b> setC = c(list);
        Set setB = b(setC);
        int i10 = 0;
        while (!setB.isEmpty()) {
            b bVar = (b) setB.iterator().next();
            setB.remove(bVar);
            i10++;
            for (b bVar2 : bVar.d()) {
                bVar2.g(bVar);
                if (bVar2.f()) {
                    setB.add(bVar2);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar3 : setC) {
            if (!bVar3.f() && !bVar3.e()) {
                arrayList.add(bVar3.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set b(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set c(List list) {
        Set<b> set;
        HashMap map = new HashMap(list.size());
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar : (Set) it2.next()) {
                        for (r rVar : bVar.c().g()) {
                            if (rVar.e() && (set = (Set) map.get(new c(rVar.c(), rVar.g()))) != null) {
                                for (b bVar2 : set) {
                                    bVar.a(bVar2);
                                    bVar2.b(bVar);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            ob.c cVar = (ob.c) it.next();
            b bVar3 = new b(cVar);
            for (b0 b0Var : cVar.j()) {
                c cVar2 = new c(b0Var, !cVar.p());
                if (!map.containsKey(cVar2)) {
                    map.put(cVar2, new HashSet());
                }
                Set set2 = (Set) map.get(cVar2);
                if (!set2.isEmpty() && !cVar2.f67781b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", b0Var));
                }
                set2.add(bVar3);
            }
        }
    }
}
