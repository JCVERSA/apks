package defpackage;

import freemarker.core.CollectionAndSequence;
import freemarker.ext.beans.b;
import freemarker.template.SimpleSequence;
import java.util.List;
import java.util.Map;

public class im9 extends npc implements pfa, yfa, c8, lpc, dga {
    public static final fq6 c = new hm9();
    public final Map b;

    public im9(Map map, b bVar) {
        super(bVar);
        this.b = map;
    }

    @Override
    public Object exec(List list) throws Throwable {
        Object objB = ((b) getObjectWrapper()).b((zfa) list.get(0));
        Object obj = this.b.get(objB);
        if (obj != null || this.b.containsKey(objB)) {
            return wrap(obj);
        }
        return null;
    }

    @Override
    public zfa get(String str) {
        Object obj = this.b.get(str);
        if (obj == null) {
            if (str.length() == 1) {
                Character ch = new Character(str.charAt(0));
                Object obj2 = this.b.get(ch);
                if (obj2 == null && !this.b.containsKey(str) && !this.b.containsKey(ch)) {
                    return null;
                }
                obj = obj2;
            } else if (!this.b.containsKey(str)) {
                return null;
            }
        }
        return wrap(obj);
    }

    @Override
    public zfa getAPI() {
        return ((gv8) getObjectWrapper()).a(this.b);
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return this.b;
    }

    @Override
    public Object getWrappedObject() {
        return this.b;
    }

    @Override
    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public bfa keys() {
        return new CollectionAndSequence(new SimpleSequence(this.b.keySet(), getObjectWrapper()));
    }

    @Override
    public int size() {
        return this.b.size();
    }

    @Override
    public bfa values() {
        return new CollectionAndSequence(new SimpleSequence(this.b.values(), getObjectWrapper()));
    }
}
