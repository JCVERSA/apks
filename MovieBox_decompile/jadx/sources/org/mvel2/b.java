package org.mvel2;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.mvel2.util.FastList;
import wz.h;
import wz.j;
import wz.k;
import wz.l;
import wz.m;
import wz.n;
import wz.o;
import wz.p;
import wz.q;
import wz.r;
import wz.s;
import wz.t;

public class b {

    private static final Map f68792a;

    static {
        HashMap map = new HashMap(76, 0.5f);
        f68792a = map;
        m mVar = new m();
        map.put(Integer.class, mVar);
        map.put(Integer.TYPE, mVar);
        r rVar = new r();
        map.put(Short.class, rVar);
        map.put(Short.TYPE, rVar);
        o oVar = new o();
        map.put(Long.class, oVar);
        map.put(Long.TYPE, oVar);
        wz.g gVar = new wz.g();
        map.put(Character.class, gVar);
        map.put(Character.TYPE, gVar);
        wz.e eVar = new wz.e();
        map.put(Byte.class, eVar);
        map.put(Byte.TYPE, eVar);
        k kVar = new k();
        map.put(Float.class, kVar);
        map.put(Float.TYPE, kVar);
        j jVar = new j();
        map.put(Double.class, jVar);
        map.put(Double.TYPE, jVar);
        wz.d dVar = new wz.d();
        map.put(Boolean.class, dVar);
        map.put(Boolean.TYPE, dVar);
        map.put(String.class, new t());
        map.put(Object.class, new p());
        wz.f fVar = new wz.f();
        map.put(Character[].class, fVar);
        map.put(char[].class, new h(fVar, new wz.a(char[].class)));
        map.put(String[].class, new s());
        map.put(Integer[].class, new l());
        map.put(int[].class, new wz.a(int[].class));
        map.put(long[].class, new wz.a(long[].class));
        map.put(double[].class, new wz.a(double[].class));
        map.put(float[].class, new wz.a(float[].class));
        map.put(short[].class, new wz.a(short[].class));
        map.put(boolean[].class, new wz.a(boolean[].class));
        map.put(byte[].class, new wz.a(byte[].class));
        map.put(BigDecimal.class, new wz.b());
        map.put(BigInteger.class, new wz.c());
        n nVar = new n();
        map.put(List.class, nVar);
        map.put(FastList.class, nVar);
        map.put(ArrayList.class, nVar);
        map.put(LinkedList.class, nVar);
        q qVar = new q();
        map.put(Set.class, qVar);
        map.put(HashSet.class, qVar);
        map.put(LinkedHashSet.class, qVar);
        map.put(TreeSet.class, qVar);
    }

    public static boolean a(Class cls, Class cls2) {
        if (org.mvel2.util.p.f(cls, cls2)) {
            return true;
        }
        Map map = f68792a;
        if (map.containsKey(cls)) {
            return ((a) map.get(cls)).a(org.mvel2.util.p.i(cls2));
        }
        return cls.isArray() && a(cls.getComponentType(), cls2);
    }

    public static Object b(Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        if (cls == obj.getClass() || cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        Map map = f68792a;
        a aVar = (a) map.get(cls);
        if (aVar != null || !cls.isArray()) {
            return aVar.b(obj);
        }
        wz.a aVar2 = new wz.a(cls);
        map.put(cls, aVar2);
        return aVar2.b(obj);
    }
}
