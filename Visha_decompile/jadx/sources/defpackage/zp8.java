package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;

public final class zp8 extends lq8 implements b75 {
    public final Type b;
    public final a75 c;

    public zp8(Type type) {
        a75 reflectJavaClass;
        y45.j(type, "reflectType");
        this.b = type;
        Type typeO = O();
        if (typeO instanceof Class) {
            reflectJavaClass = new ReflectJavaClass((Class) typeO);
        } else if (typeO instanceof TypeVariable) {
            reflectJavaClass = new mq8((TypeVariable) typeO);
        } else {
            if (!(typeO instanceof ParameterizedType)) {
                throw new IllegalStateException("Not a classifier type (" + typeO.getClass() + "): " + typeO);
            }
            Type rawType = ((ParameterizedType) typeO).getRawType();
            y45.h(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            reflectJavaClass = new ReflectJavaClass((Class) rawType);
        }
        this.c = reflectJavaClass;
    }

    @Override
    public String A() {
        throw new UnsupportedOperationException("Type not found: " + O());
    }

    @Override
    public boolean H() {
        Type typeO = O();
        if (!(typeO instanceof Class)) {
            return false;
        }
        TypeVariable[] typeParameters = ((Class) typeO).getTypeParameters();
        y45.i(typeParameters, "getTypeParameters()");
        return !(typeParameters.length == 0);
    }

    @Override
    public Type O() {
        return this.b;
    }

    @Override
    public k65 a(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return null;
    }

    @Override
    public Collection getAnnotations() {
        return y71.k();
    }

    @Override
    public a75 j() {
        return this.c;
    }

    @Override
    public List t() {
        List listD = ReflectClassUtilKt.d(O());
        lq8.a aVar = lq8.a;
        ArrayList arrayList = new ArrayList(z71.v(listD, 10));
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.a((Type) it.next()));
        }
        return arrayList;
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public String y() {
        return O().toString();
    }
}
