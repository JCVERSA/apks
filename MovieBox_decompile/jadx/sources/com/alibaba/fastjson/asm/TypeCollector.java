package com.alibaba.fastjson.asm;

import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

public class TypeCollector {

    private static String f17448e = com.alibaba.fastjson.util.b.b(z4.d.class);

    private static final Map f17449f = new HashMap<String, String>() {
        {
            put("int", "I");
            put("boolean", "Z");
            put("byte", "B");
            put("char", "C");
            put("short", "S");
            put("float", "F");
            put("long", "J");
            put("double", "D");
        }
    };

    private final String f17450a;

    private final Class[] f17451b;

    protected g f17452c = null;

    protected boolean f17453d;

    public TypeCollector(String str, Class[] clsArr) {
        this.f17450a = str;
        this.f17451b = clsArr;
    }

    private boolean a(j jVar, String str) {
        String strC = jVar.c();
        StringBuilder sb2 = new StringBuilder();
        while (strC.endsWith("[]")) {
            sb2.append('[');
            strC = strC.substring(0, strC.length() - 2);
        }
        if (sb2.length() != 0) {
            Map map = f17449f;
            if (map.containsKey(strC)) {
                sb2.append((String) map.get(strC));
                strC = sb2.toString();
            } else {
                sb2.append('L');
                sb2.append(strC);
                sb2.append(';');
                strC = sb2.toString();
            }
        }
        return strC.equals(str);
    }

    public String[] b() {
        g gVar = this.f17452c;
        return (gVar == null || !gVar.f17501e) ? new String[0] : gVar.a().split(",");
    }

    public boolean c() {
        return this.f17453d;
    }

    public void d(String str) {
        if (f17448e.equals(str)) {
            this.f17453d = true;
        }
    }

    protected g e(int i10, String str, String str2) {
        if (this.f17452c != null || !str.equals(this.f17450a)) {
            return null;
        }
        j[] jVarArrA = j.a(str2);
        int i11 = 0;
        for (j jVar : jVarArrA) {
            String strC = jVar.c();
            if (strC.equals("long") || strC.equals("double")) {
                i11++;
            }
        }
        if (jVarArrA.length != this.f17451b.length) {
            return null;
        }
        for (int i12 = 0; i12 < jVarArrA.length; i12++) {
            if (!a(jVarArrA[i12], this.f17451b[i12].getName())) {
                return null;
            }
        }
        g gVar = new g(!Modifier.isStatic(i10) ? 1 : 0, jVarArrA.length + i11);
        this.f17452c = gVar;
        return gVar;
    }
}
