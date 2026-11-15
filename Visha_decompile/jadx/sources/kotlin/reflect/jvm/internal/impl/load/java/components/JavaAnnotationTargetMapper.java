package kotlin.reflect.jvm.internal.impl.load.java.components;

import defpackage.abb;
import defpackage.by6;
import defpackage.d81;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fb3;
import defpackage.id3;
import defpackage.l65;
import defpackage.l75;
import defpackage.n65;
import defpackage.pf1;
import defpackage.qq6;
import defpackage.v82;
import defpackage.vh;
import defpackage.xw0;
import defpackage.y45;
import defpackage.ye9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinRetention;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public final class JavaAnnotationTargetMapper {
    public static final JavaAnnotationTargetMapper a = new JavaAnnotationTargetMapper();
    public static final Map b = a.p(abb.a("PACKAGE", EnumSet.noneOf(KotlinTarget.class)), abb.a("TYPE", EnumSet.of(KotlinTarget.CLASS, KotlinTarget.FILE)), abb.a("ANNOTATION_TYPE", EnumSet.of(KotlinTarget.ANNOTATION_CLASS)), abb.a("TYPE_PARAMETER", EnumSet.of(KotlinTarget.TYPE_PARAMETER)), abb.a("FIELD", EnumSet.of(KotlinTarget.FIELD)), abb.a("LOCAL_VARIABLE", EnumSet.of(KotlinTarget.LOCAL_VARIABLE)), abb.a("PARAMETER", EnumSet.of(KotlinTarget.VALUE_PARAMETER)), abb.a("CONSTRUCTOR", EnumSet.of(KotlinTarget.CONSTRUCTOR)), abb.a("METHOD", EnumSet.of(KotlinTarget.FUNCTION, KotlinTarget.PROPERTY_GETTER, KotlinTarget.PROPERTY_SETTER)), abb.a("TYPE_USE", EnumSet.of(KotlinTarget.TYPE)));
    public static final Map c = a.p(abb.a("RUNTIME", KotlinRetention.RUNTIME), abb.a("CLASS", KotlinRetention.BINARY), abb.a("SOURCE", KotlinRetention.SOURCE));

    public final pf1 a(l65 l65Var) {
        l75 l75Var = l65Var instanceof l75 ? (l75) l65Var : null;
        if (l75Var == null) {
            return null;
        }
        Map map = c;
        by6 entryName = l75Var.getEntryName();
        KotlinRetention kotlinRetention = (KotlinRetention) map.get(entryName != null ? entryName.b() : null);
        if (kotlinRetention == null) {
            return null;
        }
        xw0 xw0VarM = xw0.m(e.a.K);
        y45.i(xw0VarM, "topLevel(StandardNames.F…ames.annotationRetention)");
        by6 by6VarG = by6.g(kotlinRetention.name());
        y45.i(by6VarG, "identifier(retention.name)");
        return new fb3(xw0VarM, by6VarG);
    }

    public final Set b(String str) {
        EnumSet enumSet = (EnumSet) b.get(str);
        return enumSet != null ? enumSet : ye9.f();
    }

    public final pf1 c(List list) {
        y45.j(list, "arguments");
        ArrayList<l75> arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof l75) {
                arrayList.add(obj);
            }
        }
        ArrayList<KotlinTarget> arrayList2 = new ArrayList();
        for (l75 l75Var : arrayList) {
            JavaAnnotationTargetMapper javaAnnotationTargetMapper = a;
            by6 entryName = l75Var.getEntryName();
            d81.C(arrayList2, javaAnnotationTargetMapper.b(entryName != null ? entryName.b() : null));
        }
        ArrayList arrayList3 = new ArrayList(z71.v(arrayList2, 10));
        for (KotlinTarget kotlinTarget : arrayList2) {
            xw0 xw0VarM = xw0.m(e.a.J);
            y45.i(xw0VarM, "topLevel(StandardNames.FqNames.annotationTarget)");
            by6 by6VarG = by6.g(kotlinTarget.name());
            y45.i(by6VarG, "identifier(kotlinTarget.name)");
            arrayList3.add(new fb3(xw0VarM, by6VarG));
        }
        return new vh(arrayList3, new e74() {
            @Override
            public final eh5 invoke(qq6 qq6Var) {
                y45.j(qq6Var, "module");
                h hVarB = v82.b(n65.a.d(), qq6Var.o().o(e.a.H));
                eh5 type = hVarB != null ? hVarB.getType() : null;
                return type == null ? id3.d(ErrorTypeKind.UNMAPPED_ANNOTATION_TARGET_TYPE, new String[0]) : type;
            }
        });
    }
}
