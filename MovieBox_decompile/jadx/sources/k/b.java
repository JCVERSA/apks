package k;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public class b implements Iterable {

    c f63378a;

    private c f63379b;

    private final WeakHashMap f63380c = new WeakHashMap();

    private int f63381d = 0;

    static class a extends e {
        a(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override
        c b(c cVar) {
            return cVar.f63385d;
        }

        @Override
        c c(c cVar) {
            return cVar.f63384c;
        }
    }

    private static class C0779b extends e {
        C0779b(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override
        c b(c cVar) {
            return cVar.f63384c;
        }

        @Override
        c c(c cVar) {
            return cVar.f63385d;
        }
    }

    static class c implements Map.Entry {

        final Object f63382a;

        final Object f63383b;

        c f63384c;

        c f63385d;

        c(Object obj, Object obj2) {
            this.f63382a = obj;
            this.f63383b = obj2;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f63382a.equals(cVar.f63382a) && this.f63383b.equals(cVar.f63383b);
        }

        @Override
        public Object getKey() {
            return this.f63382a;
        }

        @Override
        public Object getValue() {
            return this.f63383b;
        }

        @Override
        public int hashCode() {
            return this.f63382a.hashCode() ^ this.f63383b.hashCode();
        }

        @Override
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f63382a + UrlUtils.EQUAL_MARK + this.f63383b;
        }
    }

    public class d extends f implements Iterator {

        private c f63386a;

        private boolean f63387b = true;

        d() {
        }

        @Override
        void a(c cVar) {
            c cVar2 = this.f63386a;
            if (cVar == cVar2) {
                c cVar3 = cVar2.f63385d;
                this.f63386a = cVar3;
                this.f63387b = cVar3 == null;
            }
        }

        @Override
        public Map.Entry next() {
            if (this.f63387b) {
                this.f63387b = false;
                this.f63386a = b.this.f63378a;
            } else {
                c cVar = this.f63386a;
                this.f63386a = cVar != null ? cVar.f63384c : null;
            }
            return this.f63386a;
        }

        @Override
        public boolean hasNext() {
            if (this.f63387b) {
                return b.this.f63378a != null;
            }
            c cVar = this.f63386a;
            return (cVar == null || cVar.f63384c == null) ? false : true;
        }
    }

    private static abstract class e extends f implements Iterator {

        c f63389a;

        c f63390b;

        e(c cVar, c cVar2) {
            this.f63389a = cVar2;
            this.f63390b = cVar;
        }

        private c e() {
            c cVar = this.f63390b;
            c cVar2 = this.f63389a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override
        public void a(c cVar) {
            if (this.f63389a == cVar && cVar == this.f63390b) {
                this.f63390b = null;
                this.f63389a = null;
            }
            c cVar2 = this.f63389a;
            if (cVar2 == cVar) {
                this.f63389a = b(cVar2);
            }
            if (this.f63390b == cVar) {
                this.f63390b = e();
            }
        }

        abstract c b(c cVar);

        abstract c c(c cVar);

        @Override
        public Map.Entry next() {
            c cVar = this.f63390b;
            this.f63390b = e();
            return cVar;
        }

        @Override
        public boolean hasNext() {
            return this.f63390b != null;
        }
    }

    public static abstract class f {
        abstract void a(c cVar);
    }

    public Map.Entry a() {
        return this.f63378a;
    }

    protected c b(Object obj) {
        c cVar = this.f63378a;
        while (cVar != null && !cVar.f63382a.equals(obj)) {
            cVar = cVar.f63384c;
        }
        return cVar;
    }

    public d c() {
        d dVar = new d();
        this.f63380c.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public Iterator descendingIterator() {
        C0779b c0779b = new C0779b(this.f63379b, this.f63378a);
        this.f63380c.put(c0779b, Boolean.FALSE);
        return c0779b;
    }

    public Map.Entry e() {
        return this.f63379b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object next = it2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    c f(Object obj, Object obj2) {
        c cVar = new c(obj, obj2);
        this.f63381d++;
        c cVar2 = this.f63379b;
        if (cVar2 == null) {
            this.f63378a = cVar;
            this.f63379b = cVar;
            return cVar;
        }
        cVar2.f63384c = cVar;
        cVar.f63385d = cVar2;
        this.f63379b = cVar;
        return cVar;
    }

    public Object g(Object obj, Object obj2) {
        c cVarB = b(obj);
        if (cVarB != null) {
            return cVarB.f63383b;
        }
        f(obj, obj2);
        return null;
    }

    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += ((Map.Entry) it.next()).hashCode();
        }
        return iHashCode;
    }

    public Object i(Object obj) {
        c cVarB = b(obj);
        if (cVarB == null) {
            return null;
        }
        this.f63381d--;
        if (!this.f63380c.isEmpty()) {
            Iterator it = this.f63380c.keySet().iterator();
            while (it.hasNext()) {
                ((f) it.next()).a(cVarB);
            }
        }
        c cVar = cVarB.f63385d;
        if (cVar != null) {
            cVar.f63384c = cVarB.f63384c;
        } else {
            this.f63378a = cVarB.f63384c;
        }
        c cVar2 = cVarB.f63384c;
        if (cVar2 != null) {
            cVar2.f63385d = cVar;
        } else {
            this.f63379b = cVar;
        }
        cVarB.f63384c = null;
        cVarB.f63385d = null;
        return cVarB.f63383b;
    }

    @Override
    public Iterator iterator() {
        a aVar = new a(this.f63378a, this.f63379b);
        this.f63380c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.f63381d;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb2.append(((Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
