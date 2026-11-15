package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;

public abstract class fq8 extends bq8 implements sp8, hq8, r75 {
    @Override
    public ReflectJavaClass D() {
        Class<?> declaringClass = P().getDeclaringClass();
        y45.i(declaringClass, "member.declaringClass");
        return new ReflectJavaClass(declaringClass);
    }

    public abstract Member P();

    public final List Q(Type[] typeArr, Annotation[][] annotationArr, boolean z) throws IllegalAccessException, InvocationTargetException {
        String str;
        y45.j(typeArr, "parameterTypes");
        y45.j(annotationArr, "parameterAnnotations");
        ArrayList arrayList = new ArrayList(typeArr.length);
        List listB = h65.a.b(P());
        int size = listB != null ? listB.size() - typeArr.length : 0;
        int length = typeArr.length;
        int i = 0;
        while (i < length) {
            lq8 lq8VarA = lq8.a.a(typeArr[i]);
            if (listB != null) {
                str = (String) i81.r0(listB, i + size);
                if (str == null) {
                    throw new IllegalStateException(("No parameter with index " + i + '+' + size + " (name=" + getName() + " type=" + lq8VarA + ") in " + this).toString());
                }
            } else {
                str = null;
            }
            arrayList.add(new nq8(lq8VarA, annotationArr[i], str, z && i == hi.d0(typeArr)));
            i++;
        }
        return arrayList;
    }

    @Override
    public k65 a(o54 o54Var) {
        return a(o54Var);
    }

    public boolean equals(Object obj) {
        return (obj instanceof fq8) && y45.e(P(), ((fq8) obj).P());
    }

    @Override
    public boolean g() {
        return Modifier.isStatic(getModifiers());
    }

    @Override
    public Collection getAnnotations() {
        return getAnnotations();
    }

    @Override
    public AnnotatedElement getElement() {
        Member memberP = P();
        y45.h(memberP, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement");
        return (AnnotatedElement) memberP;
    }

    @Override
    public int getModifiers() {
        return P().getModifiers();
    }

    @Override
    public by6 getName() {
        String name = P().getName();
        by6 by6VarG = name != null ? by6.g(name) : null;
        return by6VarG == null ? su9.b : by6VarG;
    }

    @Override
    public tfc getVisibility() {
        int modifiers = getModifiers();
        if (Modifier.isPublic(modifiers)) {
            return sfc.h.c;
        }
        if (Modifier.isPrivate(modifiers)) {
            return sfc.e.c;
        }
        if (Modifier.isProtected(modifiers)) {
            return Modifier.isStatic(modifiers) ? a95.c : z85.c;
        }
        return y85.c;
    }

    public int hashCode() {
        return P().hashCode();
    }

    @Override
    public boolean isAbstract() {
        return Modifier.isAbstract(getModifiers());
    }

    @Override
    public boolean isFinal() {
        return Modifier.isFinal(getModifiers());
    }

    public String toString() {
        return getClass().getName() + ": " + P();
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public pp8 a(o54 o54Var) {
        Annotation[] declaredAnnotations;
        y45.j(o54Var, "fqName");
        AnnotatedElement element = getElement();
        if (element == null || (declaredAnnotations = element.getDeclaredAnnotations()) == null) {
            return null;
        }
        return tp8.a(declaredAnnotations, o54Var);
    }

    @Override
    public List getAnnotations() {
        Annotation[] declaredAnnotations;
        List listB;
        AnnotatedElement element = getElement();
        return (element == null || (declaredAnnotations = element.getDeclaredAnnotations()) == null || (listB = tp8.b(declaredAnnotations)) == null) ? y71.k() : listB;
    }
}
