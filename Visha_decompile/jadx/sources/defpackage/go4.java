package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.descriptors.a;

public final class go4 extends by5 {
    public final a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public go4(ef5 ef5Var, ef5 ef5Var2) {
        super(ef5Var, ef5Var2, null);
        y45.j(ef5Var, "kSerializer");
        y45.j(ef5Var2, "vSerializer");
        this.c = new fo4(ef5Var.getDescriptor(), ef5Var2.getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.c;
    }

    @Override
    public HashMap a() {
        return new HashMap();
    }

    @Override
    public int b(HashMap map) {
        y45.j(map, "<this>");
        return map.size() * 2;
    }

    @Override
    public void c(HashMap map, int i) {
        y45.j(map, "<this>");
    }

    @Override
    public Iterator d(Map map) {
        y45.j(map, "<this>");
        return map.entrySet().iterator();
    }

    @Override
    public int e(Map map) {
        y45.j(map, "<this>");
        return map.size();
    }

    @Override
    public HashMap k(Map map) {
        y45.j(map, "<this>");
        HashMap map2 = map instanceof HashMap ? (HashMap) map : null;
        return map2 == null ? new HashMap(map) : map2;
    }

    @Override
    public Map l(HashMap map) {
        y45.j(map, "<this>");
        return map;
    }
}
