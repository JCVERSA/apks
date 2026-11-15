package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.a;

public final class mv7 {
    public final DeserializedDescriptorResolver a;
    public final rq8 b;
    public final ConcurrentHashMap c;

    public mv7(DeserializedDescriptorResolver deserializedDescriptorResolver, rq8 rq8Var) {
        y45.j(deserializedDescriptorResolver, "resolver");
        y45.j(rq8Var, "kotlinClassFinder");
        this.a = deserializedDescriptorResolver;
        this.b = rq8Var;
        this.c = new ConcurrentHashMap();
    }

    public final MemberScope a(qq8 qq8Var) {
        Collection collectionE;
        y45.j(qq8Var, "fileClass");
        ConcurrentHashMap concurrentHashMap = this.c;
        xw0 xw0VarC = qq8Var.c();
        Object obj = concurrentHashMap.get(xw0VarC);
        if (obj == null) {
            o54 o54VarH = qq8Var.c().h();
            y45.i(o54VarH, "fileClass.classId.packageFqName");
            if (qq8Var.b().c() == KotlinClassHeader.Kind.MULTIFILE_CLASS) {
                List listF = qq8Var.b().f();
                collectionE = new ArrayList();
                Iterator it = listF.iterator();
                while (it.hasNext()) {
                    xw0 xw0VarM = xw0.m(fd5.d((String) it.next()).e());
                    y45.i(xw0VarM, "topLevel(JvmClassName.by…velClassMaybeWithDollars)");
                    c cVarA = wg5.a(this.b, xw0VarM, j92.a(this.a.d().g()));
                    if (cVarA != null) {
                        collectionE.add(cVarA);
                    }
                }
            } else {
                collectionE = x71.e(qq8Var);
            }
            t93 t93Var = new t93(this.a.d().p(), o54VarH);
            ArrayList arrayList = new ArrayList();
            Iterator it2 = collectionE.iterator();
            while (it2.hasNext()) {
                MemberScope memberScopeB = this.a.b(t93Var, (c) it2.next());
                if (memberScopeB != null) {
                    arrayList.add(memberScopeB);
                }
            }
            List listB1 = i81.b1(arrayList);
            MemberScope memberScopeA = a.d.a("package " + o54VarH + " (" + qq8Var + ')', listB1);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(xw0VarC, memberScopeA);
            obj = objPutIfAbsent == null ? memberScopeA : objPutIfAbsent;
        }
        y45.i(obj, "cache.getOrPut(fileClass…ileClass)\", scopes)\n    }");
        return (MemberScope) obj;
    }
}
