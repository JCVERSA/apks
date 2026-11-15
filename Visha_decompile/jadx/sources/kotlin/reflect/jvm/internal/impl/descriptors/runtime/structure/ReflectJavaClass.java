package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.a95;
import defpackage.bq8;
import defpackage.by6;
import defpackage.e74;
import defpackage.f65;
import defpackage.hi;
import defpackage.hq8;
import defpackage.iv9;
import defpackage.k65;
import defpackage.kq8;
import defpackage.mq8;
import defpackage.o54;
import defpackage.pp8;
import defpackage.s65;
import defpackage.sfc;
import defpackage.sp8;
import defpackage.tfc;
import defpackage.tp8;
import defpackage.y45;
import defpackage.y71;
import defpackage.y85;
import defpackage.z71;
import defpackage.z85;
import defpackage.zp8;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class ReflectJavaClass extends bq8 implements sp8, hq8, s65 {
    public final Class a;

    public ReflectJavaClass(Class cls) {
        y45.j(cls, "klass");
        this.a = cls;
    }

    @Override
    public LightClassOriginKind B() {
        return null;
    }

    @Override
    public Collection E() {
        Object[] objArrD = f65.a.d(this.a);
        if (objArrD == null) {
            objArrD = new Object[0];
        }
        ArrayList arrayList = new ArrayList(objArrD.length);
        for (Object obj : objArrD) {
            arrayList.add(new kq8(obj));
        }
        return arrayList;
    }

    @Override
    public boolean F() throws IllegalAccessException, InvocationTargetException {
        Boolean boolE = f65.a.e(this.a);
        if (boolE != null) {
            return boolE.booleanValue();
        }
        return false;
    }

    @Override
    public boolean G() {
        return false;
    }

    @Override
    public boolean J() {
        return this.a.isEnum();
    }

    @Override
    public boolean L() {
        return this.a.isInterface();
    }

    @Override
    public List n() {
        Constructor<?>[] declaredConstructors = this.a.getDeclaredConstructors();
        y45.i(declaredConstructors, "klass.declaredConstructors");
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.G(hi.K(declaredConstructors), ReflectJavaClass$constructors$1.INSTANCE), ReflectJavaClass$constructors$2.INSTANCE));
    }

    @Override
    public Class getElement() {
        return this.a;
    }

    @Override
    public List getFields() {
        Field[] declaredFields = this.a.getDeclaredFields();
        y45.i(declaredFields, "klass.declaredFields");
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.G(hi.K(declaredFields), ReflectJavaClass$fields$1.INSTANCE), ReflectJavaClass$fields$2.INSTANCE));
    }

    @Override
    public List u() {
        Class<?>[] declaredClasses = this.a.getDeclaredClasses();
        y45.i(declaredClasses, "klass.declaredClasses");
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.G(hi.K(declaredClasses), new e74() {
            @Override
            public final Boolean invoke(Class<?> cls) {
                String simpleName = cls.getSimpleName();
                y45.i(simpleName, "it.simpleName");
                return Boolean.valueOf(simpleName.length() == 0);
            }
        }), new e74() {
            @Override
            public final by6 invoke(Class<?> cls) {
                String simpleName = cls.getSimpleName();
                if (!by6.i(simpleName)) {
                    simpleName = null;
                }
                if (simpleName != null) {
                    return by6.g(simpleName);
                }
                return null;
            }
        }));
    }

    @Override
    public List v() {
        Method[] declaredMethods = this.a.getDeclaredMethods();
        y45.i(declaredMethods, "klass.declaredMethods");
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.F(hi.K(declaredMethods), new e74() {
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:9:0x001e  */
            @Override
            public final Boolean invoke(Method method) {
                boolean z = false;
                if (!method.isSynthetic()) {
                    if (this.this$0.J()) {
                        ReflectJavaClass reflectJavaClass = this.this$0;
                        y45.i(method, "method");
                        if (!reflectJavaClass.V(method)) {
                            z = true;
                        }
                    } else {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }), ReflectJavaClass$methods$2.INSTANCE));
    }

    @Override
    public ReflectJavaClass m() {
        Class<?> declaringClass = this.a.getDeclaringClass();
        if (declaringClass != null) {
            return new ReflectJavaClass(declaringClass);
        }
        return null;
    }

    public final boolean V(Method method) {
        String name = method.getName();
        if (y45.e(name, "values")) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            y45.i(parameterTypes, "method.parameterTypes");
            return parameterTypes.length == 0;
        }
        if (y45.e(name, "valueOf")) {
            return Arrays.equals(method.getParameterTypes(), new Class[]{String.class});
        }
        return false;
    }

    @Override
    public k65 a(o54 o54Var) {
        return a(o54Var);
    }

    @Override
    public o54 d() {
        o54 o54VarB = ReflectClassUtilKt.a(this.a).b();
        y45.i(o54VarB, "klass.classId.asSingleFqName()");
        return o54VarB;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReflectJavaClass) && y45.e(this.a, ((ReflectJavaClass) obj).a);
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
    public int getModifiers() {
        return this.a.getModifiers();
    }

    @Override
    public by6 getName() {
        by6 by6VarG = by6.g(this.a.getSimpleName());
        y45.i(by6VarG, "identifier(klass.simpleName)");
        return by6VarG;
    }

    @Override
    public List getTypeParameters() {
        TypeVariable[] typeParameters = this.a.getTypeParameters();
        y45.i(typeParameters, "klass.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable typeVariable : typeParameters) {
            arrayList.add(new mq8(typeVariable));
        }
        return arrayList;
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
        return this.a.hashCode();
    }

    @Override
    public boolean i() throws IllegalAccessException, InvocationTargetException {
        Boolean boolF = f65.a.f(this.a);
        if (boolF != null) {
            return boolF.booleanValue();
        }
        return false;
    }

    @Override
    public boolean isAbstract() {
        return Modifier.isAbstract(getModifiers());
    }

    @Override
    public boolean isFinal() {
        return Modifier.isFinal(getModifiers());
    }

    @Override
    public Collection k() {
        if (y45.e(this.a, Object.class)) {
            return y71.k();
        }
        iv9 iv9Var = new iv9(2);
        Type genericSuperclass = this.a.getGenericSuperclass();
        iv9Var.a(genericSuperclass != null ? genericSuperclass : Object.class);
        Type[] genericInterfaces = this.a.getGenericInterfaces();
        y45.i(genericInterfaces, "klass.genericInterfaces");
        iv9Var.b(genericInterfaces);
        List listN = y71.n(iv9Var.d(new Type[iv9Var.c()]));
        ArrayList arrayList = new ArrayList(z71.v(listN, 10));
        Iterator it = listN.iterator();
        while (it.hasNext()) {
            arrayList.add(new zp8((Type) it.next()));
        }
        return arrayList;
    }

    @Override
    public boolean o() {
        return this.a.isAnnotation();
    }

    public String toString() {
        return ReflectJavaClass.class.getName() + ": " + this.a;
    }

    @Override
    public Collection w() throws IllegalAccessException, InvocationTargetException {
        Class[] clsArrC = f65.a.c(this.a);
        if (clsArrC == null) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList(clsArrC.length);
        for (Class cls : clsArrC) {
            arrayList.add(new zp8(cls));
        }
        return arrayList;
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
