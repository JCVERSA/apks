package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;

public final class aq8 extends fq8 implements c75 {
    public final Constructor a;

    public aq8(Constructor constructor) {
        y45.j(constructor, "member");
        this.a = constructor;
    }

    @Override
    public Constructor P() {
        return this.a;
    }

    @Override
    public List f() {
        Type[] genericParameterTypes = P().getGenericParameterTypes();
        y45.i(genericParameterTypes, "types");
        if (genericParameterTypes.length == 0) {
            return y71.k();
        }
        Class declaringClass = P().getDeclaringClass();
        if (declaringClass.getDeclaringClass() != null && !Modifier.isStatic(declaringClass.getModifiers())) {
            genericParameterTypes = (Type[]) fi.s(genericParameterTypes, 1, genericParameterTypes.length);
        }
        Annotation[][] parameterAnnotations = P().getParameterAnnotations();
        if (parameterAnnotations.length < genericParameterTypes.length) {
            throw new IllegalStateException("Illegal generic signature: " + P());
        }
        if (parameterAnnotations.length > genericParameterTypes.length) {
            y45.i(parameterAnnotations, "annotations");
            parameterAnnotations = (Annotation[][]) fi.s(parameterAnnotations, parameterAnnotations.length - genericParameterTypes.length, parameterAnnotations.length);
        }
        y45.i(genericParameterTypes, "realTypes");
        y45.i(parameterAnnotations, "realAnnotations");
        return Q(genericParameterTypes, parameterAnnotations, P().isVarArgs());
    }

    @Override
    public List getTypeParameters() {
        TypeVariable[] typeParameters = P().getTypeParameters();
        y45.i(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable typeVariable : typeParameters) {
            arrayList.add(new mq8(typeVariable));
        }
        return arrayList;
    }
}
