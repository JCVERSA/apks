package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class mq8 extends bq8 implements sp8, s85 {
    public final TypeVariable a;

    public mq8(TypeVariable typeVariable) {
        y45.j(typeVariable, "typeVariable");
        this.a = typeVariable;
    }

    @Override
    public List getUpperBounds() {
        Type[] bounds = this.a.getBounds();
        y45.i(bounds, "typeVariable.bounds");
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new zp8(type));
        }
        zp8 zp8Var = (zp8) i81.Q0(arrayList);
        return y45.e(zp8Var != null ? zp8Var.O() : null, Object.class) ? y71.k() : arrayList;
    }

    @Override
    public k65 a(o54 o54Var) {
        return a(o54Var);
    }

    public boolean equals(Object obj) {
        return (obj instanceof mq8) && y45.e(this.a, ((mq8) obj).a);
    }

    @Override
    public Collection getAnnotations() {
        return getAnnotations();
    }

    @Override
    public AnnotatedElement getElement() {
        TypeVariable typeVariable = this.a;
        if (typeVariable instanceof AnnotatedElement) {
            return (AnnotatedElement) typeVariable;
        }
        return null;
    }

    @Override
    public by6 getName() {
        by6 by6VarG = by6.g(this.a.getName());
        y45.i(by6VarG, "identifier(typeVariable.name)");
        return by6VarG;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return mq8.class.getName() + ": " + this.a;
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
