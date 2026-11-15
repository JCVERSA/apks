package k;

import java.util.HashMap;
import java.util.Map;

public class a extends b {

    private final HashMap f63377e = new HashMap();

    @Override
    protected b.c b(Object obj) {
        return (b.c) this.f63377e.get(obj);
    }

    public boolean contains(Object obj) {
        return this.f63377e.containsKey(obj);
    }

    @Override
    public Object g(Object obj, Object obj2) {
        b.c cVarB = b(obj);
        if (cVarB != null) {
            return cVarB.f63383b;
        }
        this.f63377e.put(obj, f(obj, obj2));
        return null;
    }

    @Override
    public Object i(Object obj) {
        Object objI = super.i(obj);
        this.f63377e.remove(obj);
        return objI;
    }

    public Map.Entry j(Object obj) {
        if (contains(obj)) {
            return ((b.c) this.f63377e.get(obj)).f63385d;
        }
        return null;
    }
}
