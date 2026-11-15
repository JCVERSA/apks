package defpackage;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import com.squareup.moshi.j;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.KParameter;

public final class zg5 implements e.InterfaceC0196e {
    /* JADX WARN: Code duplicated, block: B:103:0x0209  */
    @Override
    public e a(Type type, Set set, j jVar) throws NoSuchMethodException {
        Object next;
        String name;
        Type typeF;
        Object next2;
        y45.j(type, "type");
        y45.j(set, "annotations");
        y45.j(jVar, "moshi");
        Object obj = null;
        if (!set.isEmpty()) {
            return null;
        }
        Class clsA = v0d.a(type);
        if (clsA.isInterface() || clsA.isEnum() || !clsA.isAnnotationPresent(ah5.a) || wkb.j(clsA)) {
            return null;
        }
        try {
            e eVarD = wkb.d(jVar, type, clsA);
            if (eVarD != null) {
                return eVarD;
            }
        } catch (RuntimeException e) {
            if (!(e.getCause() instanceof ClassNotFoundException)) {
                throw e;
            }
        }
        if (clsA.isLocalClass()) {
            throw new IllegalArgumentException(("Cannot serialize local class or object expression " + clsA.getName()).toString());
        }
        de5 de5VarE = ed5.e(clsA);
        if (de5VarE.isAbstract()) {
            throw new IllegalArgumentException(("Cannot serialize abstract class " + clsA.getName()).toString());
        }
        if (de5VarE.g()) {
            throw new IllegalArgumentException(("Cannot serialize inner class " + clsA.getName()).toString());
        }
        if (de5VarE.m() != null) {
            throw new IllegalArgumentException(("Cannot serialize object declaration " + clsA.getName()).toString());
        }
        if (de5VarE.i()) {
            throw new IllegalArgumentException(("Cannot reflectively serialize sealed class " + clsA.getName() + ". Please register an adapter.").toString());
        }
        le5 le5VarB = fe5.b(de5VarE);
        if (le5VarB == null) {
            return null;
        }
        List parameters = le5VarB.getParameters();
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(parameters, 10)), 16));
        for (Object obj2 : parameters) {
            linkedHashMap.put(((KParameter) obj2).getName(), obj2);
        }
        boolean z = true;
        ce5.b(le5VarB, true);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (cf5 cf5Var : fe5.a(de5VarE)) {
            KParameter kParameter = (KParameter) linkedHashMap.get(cf5Var.getName());
            ce5.b(cf5Var, z);
            Iterator it = cf5Var.getAnnotations().iterator();
            do {
                if (!it.hasNext()) {
                    next = obj;
                    break;
                }
                next = it.next();
            } while (!(((Annotation) next) instanceof v95));
            v95 v95Var = (v95) next;
            List listE1 = i81.e1(cf5Var.getAnnotations());
            if (kParameter != null) {
                d81.C(listE1, kParameter.getAnnotations());
                if (v95Var == null) {
                    Iterator it2 = kParameter.getAnnotations().iterator();
                    do {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it2.next();
                    } while (!(((Annotation) next2) instanceof v95));
                    v95Var = (v95) next2;
                }
            }
            Field fieldB = pq8.b(cf5Var);
            if (Modifier.isTransient(fieldB != null ? fieldB.getModifiers() : 0)) {
                if (kParameter != null && !kParameter.f()) {
                    throw new IllegalArgumentException(("No default value for transient constructor " + kParameter).toString());
                }
            } else if (v95Var == null || v95Var.ignore() != z) {
                if (kParameter != null && !y45.e(kParameter.getType(), cf5Var.getReturnType())) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('\'');
                    sb.append(cf5Var.getName());
                    sb.append("' has a constructor parameter of type ");
                    y45.g(kParameter);
                    sb.append(kParameter.getType());
                    sb.append(" but a property of type ");
                    sb.append(cf5Var.getReturnType());
                    sb.append('.');
                    throw new IllegalArgumentException(sb.toString().toString());
                }
                if ((cf5Var instanceof xe5) || kParameter != null) {
                    if (v95Var == null || (name = v95Var.name()) == null) {
                        name = cf5Var.getName();
                    } else {
                        if (y45.e(name, "\u0000")) {
                            name = null;
                        }
                        if (name == null) {
                            name = cf5Var.getName();
                        }
                    }
                    String str = name;
                    he5 he5VarJ = cf5Var.getReturnType().j();
                    if (he5VarJ instanceof de5) {
                        de5 de5Var = (de5) he5VarJ;
                        if (de5Var.s()) {
                            typeF = ed5.b(de5Var);
                            if (!cf5Var.getReturnType().l().isEmpty()) {
                                List listL = cf5Var.getReturnType().l();
                                ArrayList arrayList = new ArrayList();
                                Iterator it3 = listL.iterator();
                                while (it3.hasNext()) {
                                    ff5 ff5VarC = ((jf5) it3.next()).c();
                                    Type typeF2 = ff5VarC != null ? pq8.f(ff5VarC) : null;
                                    if (typeF2 != null) {
                                        arrayList.add(typeF2);
                                    }
                                }
                                Type[] typeArr = (Type[]) arrayList.toArray(new Type[0]);
                                typeF = kdb.j(typeF, (Type[]) Arrays.copyOf(typeArr, typeArr.length));
                            }
                        } else {
                            typeF = pq8.f(cf5Var.getReturnType());
                        }
                    } else {
                        if (!(he5VarJ instanceof hf5)) {
                            throw new IllegalStateException("Not possible!");
                        }
                        typeF = pq8.f(cf5Var.getReturnType());
                    }
                    e eVarF = jVar.f(wkb.q(type, clsA, typeF), wkb.l((Annotation[]) listE1.toArray(new Annotation[0])), cf5Var.getName());
                    String name2 = cf5Var.getName();
                    y45.i(eVarF, "adapter");
                    y45.h(cf5Var, "null cannot be cast to non-null type kotlin.reflect.KProperty1<kotlin.Any, kotlin.Any?>");
                    linkedHashMap2.put(name2, new yg5.a(str, eVarF, cf5Var, kParameter, kParameter != null ? kParameter.getIndex() : -1));
                    obj = null;
                    z = true;
                }
            } else if (kParameter != null && !kParameter.f()) {
                throw new IllegalArgumentException(("No default value for ignored constructor " + kParameter).toString());
            }
            obj = null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (KParameter kParameter2 : le5VarB.getParameters()) {
            yg5.a aVar = (yg5.a) ccb.d(linkedHashMap2).remove(kParameter2.getName());
            if (aVar == null && !kParameter2.f()) {
                throw new IllegalArgumentException(("No property for required constructor " + kParameter2).toString());
            }
            arrayList2.add(aVar);
        }
        int size = arrayList2.size();
        Iterator it4 = linkedHashMap2.entrySet().iterator();
        while (true) {
            int i = size;
            if (!it4.hasNext()) {
                break;
            }
            size = i + 1;
            arrayList2.add(yg5.a.b((yg5.a) ((Map.Entry) it4.next()).getValue(), null, null, null, null, i, 15, null));
        }
        List listL0 = i81.l0(arrayList2);
        List list = listL0;
        ArrayList arrayList3 = new ArrayList(z71.v(list, 10));
        Iterator it5 = list.iterator();
        while (it5.hasNext()) {
            arrayList3.add(((yg5.a) it5.next()).e());
        }
        String[] strArr = (String[]) arrayList3.toArray(new String[0]);
        JsonReader.b bVarA = JsonReader.b.a((String[]) Arrays.copyOf(strArr, strArr.length));
        y45.i(bVarA, "options");
        return new yg5(le5VarB, arrayList2, listL0, bVarA).nullSafe();
    }
}
