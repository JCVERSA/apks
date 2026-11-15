package defpackage;

import freemarker.ext.beans.b;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class dy5 extends yz9 implements yfa {
    public static final fq6 i = new cy5();

    public dy5(Map map, b bVar) {
        super(map, bVar);
    }

    @Override
    public zfa c(Map map, Class cls, String str) {
        Map map2 = (Map) this.b;
        Object obj = map2.get(str);
        if (obj == null) {
            if (str.length() == 1) {
                Character ch = new Character(str.charAt(0));
                Object obj2 = map2.get(ch);
                if (obj2 == null && !map2.containsKey(str) && !map2.containsKey(ch)) {
                    return rd0.f;
                }
                obj = obj2;
            } else if (!map2.containsKey(str)) {
                return rd0.f;
            }
        }
        return o(obj);
    }

    @Override
    public Object exec(List list) {
        return o(((Map) this.b).get(n((zfa) list.get(0))));
    }

    @Override
    public boolean isEmpty() {
        return ((Map) this.b).isEmpty() && super.isEmpty();
    }

    @Override
    public Set l() {
        Set setL = super.l();
        setL.addAll(((Map) this.b).keySet());
        return setL;
    }

    @Override
    public int size() {
        return l().size();
    }
}
