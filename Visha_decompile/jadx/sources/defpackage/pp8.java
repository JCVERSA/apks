package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;

public final class pp8 extends bq8 implements k65 {
    public final Annotation a;

    public pp8(Annotation annotation) {
        y45.j(annotation, "annotation");
        this.a = annotation;
    }

    public final Annotation O() {
        return this.a;
    }

    @Override
    public ReflectJavaClass I() {
        return new ReflectJavaClass(ed5.b(ed5.a(this.a)));
    }

    @Override
    public xw0 c() {
        return ReflectClassUtilKt.a(ed5.b(ed5.a(this.a)));
    }

    @Override
    public boolean e() {
        return false;
    }

    public boolean equals(Object obj) {
        return (obj instanceof pp8) && this.a == ((pp8) obj).a;
    }

    public int hashCode() {
        return System.identityHashCode(this.a);
    }

    @Override
    public Collection l() throws IllegalAccessException, InvocationTargetException {
        Method[] declaredMethods = ed5.b(ed5.a(this.a)).getDeclaredMethods();
        y45.i(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            qp8.a aVar = qp8.b;
            Object objInvoke = method.invoke(this.a, null);
            y45.i(objInvoke, "method.invoke(annotation)");
            arrayList.add(aVar.a(objInvoke, by6.g(method.getName())));
        }
        return arrayList;
    }

    public String toString() {
        return pp8.class.getName() + ": " + this.a;
    }

    @Override
    public boolean z() {
        return false;
    }
}
