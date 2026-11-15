package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.descriptors.a;

public final class kl5 extends by5 {
    public final a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kl5(ef5 ef5Var, ef5 ef5Var2) {
        super(ef5Var, ef5Var2, null);
        y45.j(ef5Var, "kSerializer");
        y45.j(ef5Var2, "vSerializer");
        this.c = new jl5(ef5Var.getDescriptor(), ef5Var2.getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.c;
    }

    @Override
    public LinkedHashMap a() {
        return new LinkedHashMap();
    }

    @Override
    public int b(LinkedHashMap linkedHashMap) {
        y45.j(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
    }

    @Override
    public void c(LinkedHashMap linkedHashMap, int i) {
        y45.j(linkedHashMap, "<this>");
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
    public LinkedHashMap k(Map map) {
        y45.j(map, "<this>");
        LinkedHashMap linkedHashMap = map instanceof LinkedHashMap ? (LinkedHashMap) map : null;
        return linkedHashMap == null ? new LinkedHashMap(map) : linkedHashMap;
    }

    @Override
    public Map l(LinkedHashMap linkedHashMap) {
        y45.j(linkedHashMap, "<this>");
        return linkedHashMap;
    }
}
