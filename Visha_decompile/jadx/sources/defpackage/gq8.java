package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;

public final class gq8 extends fq8 implements s75 {
    public final Method a;

    public gq8(Method method) {
        y45.j(method, "member");
        this.a = method;
    }

    @Override
    public boolean N() {
        return p() != null;
    }

    @Override
    public Method P() {
        return this.a;
    }

    @Override
    public lq8 getReturnType() {
        lq8.a aVar = lq8.a;
        Type genericReturnType = P().getGenericReturnType();
        y45.i(genericReturnType, "member.genericReturnType");
        return aVar.a(genericReturnType);
    }

    @Override
    public List f() {
        Type[] genericParameterTypes = P().getGenericParameterTypes();
        y45.i(genericParameterTypes, "member.genericParameterTypes");
        Annotation[][] parameterAnnotations = P().getParameterAnnotations();
        y45.i(parameterAnnotations, "member.parameterAnnotations");
        return Q(genericParameterTypes, parameterAnnotations, P().isVarArgs());
    }

    @Override
    public List getTypeParameters() {
        TypeVariable<Method>[] typeParameters = P().getTypeParameters();
        y45.i(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Method> typeVariable : typeParameters) {
            arrayList.add(new mq8(typeVariable));
        }
        return arrayList;
    }

    @Override
    public l65 p() {
        Object defaultValue = P().getDefaultValue();
        if (defaultValue != null) {
            return qp8.b.a(defaultValue, null);
        }
        return null;
    }
}
