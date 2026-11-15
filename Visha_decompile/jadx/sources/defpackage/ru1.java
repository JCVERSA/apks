package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateModelException;
import freemarker.template.a;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class ru1 {
    public static final Class a;
    public static Class b;

    static {
        Class clsA = b;
        if (clsA == null) {
            clsA = a("java.lang.Object");
            b = clsA;
        }
        a = clsA;
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static Object b(zfa zfaVar) {
        return d(zfaVar, false);
    }

    public static Object c(zfa zfaVar, zfa zfaVar2, boolean z) throws TemplateModelException {
        if (zfaVar instanceof c8) {
            return ((c8) zfaVar).getAdaptedObject(a);
        }
        if (zfaVar instanceof lpc) {
            return ((lpc) zfaVar).getWrappedObject();
        }
        if (zfaVar == zfaVar2) {
            return null;
        }
        if (zfaVar instanceof mga) {
            return ((mga) zfaVar).getAsString();
        }
        if (zfaVar instanceof hga) {
            return ((hga) zfaVar).getAsNumber();
        }
        if (zfaVar instanceof ffa) {
            return ((ffa) zfaVar).f();
        }
        if (zfaVar instanceof a) {
            return Boolean.valueOf(((a) zfaVar).getAsBoolean());
        }
        if (zfaVar instanceof nga) {
            nga ngaVar = (nga) zfaVar;
            ArrayList arrayList = new ArrayList(ngaVar.size());
            for (int i = 0; i < ngaVar.size(); i++) {
                arrayList.add(c(ngaVar.get(i), zfaVar2, z));
            }
            return arrayList;
        }
        if (zfaVar instanceof bfa) {
            ArrayList arrayList2 = new ArrayList();
            bga it = ((bfa) zfaVar).iterator();
            while (it.hasNext()) {
                arrayList2.add(c(it.next(), zfaVar2, z));
            }
            return arrayList2;
        }
        if (!(zfaVar instanceof pfa)) {
            if (z) {
                return zfaVar;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cannot deep-unwrap model of type ");
            stringBuffer.append(zfaVar.getClass().getName());
            throw new TemplateModelException(stringBuffer.toString());
        }
        pfa pfaVar = (pfa) zfaVar;
        HashMap map = new HashMap();
        bga it2 = pfaVar.keys().iterator();
        while (it2.hasNext()) {
            String str = (String) c(it2.next(), zfaVar2, z);
            map.put(str, c(pfaVar.get(str), zfaVar2, z));
        }
        return map;
    }

    public static Object d(zfa zfaVar, boolean z) {
        gc7 gc7VarU;
        Environment environmentY0 = Environment.y0();
        zfa zfaVarC = null;
        if (environmentY0 != null && (gc7VarU = environmentY0.u()) != null) {
            zfaVarC = gc7VarU.c(null);
        }
        return c(zfaVar, zfaVarC, z);
    }
}
