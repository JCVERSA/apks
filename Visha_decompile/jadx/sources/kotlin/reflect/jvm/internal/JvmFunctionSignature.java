package kotlin.reflect.jvm.internal;

import defpackage.e74;
import defpackage.hi;
import defpackage.i81;
import defpackage.id5;
import defpackage.y45;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

public abstract class JvmFunctionSignature {

    public static final class FakeJavaAnnotationConstructor extends JvmFunctionSignature {
        public final Class a;
        public final List b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FakeJavaAnnotationConstructor(Class cls) {
            super(null);
            y45.j(cls, "jClass");
            this.a = cls;
            Method[] declaredMethods = cls.getDeclaredMethods();
            y45.i(declaredMethods, "jClass.declaredMethods");
            this.b = hi.L0(declaredMethods, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t, T t2) {
                    return kotlin.comparisons.a.d(((Method) t).getName(), ((Method) t2).getName());
                }
            });
        }

        @Override
        public String a() {
            return i81.y0(this.b, "", "<init>(", ")V", 0, null, new e74() {
                @Override
                public final CharSequence invoke(Method method) {
                    Class<?> returnType = method.getReturnType();
                    y45.i(returnType, "it.returnType");
                    return ReflectClassUtilKt.b(returnType);
                }
            }, 24, null);
        }

        public final List b() {
            return this.b;
        }
    }

    public static final class JavaConstructor extends JvmFunctionSignature {
        public final Constructor a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JavaConstructor(Constructor constructor) {
            super(null);
            y45.j(constructor, "constructor");
            this.a = constructor;
        }

        @Override
        public String a() {
            Class<?>[] parameterTypes = this.a.getParameterTypes();
            y45.i(parameterTypes, "constructor.parameterTypes");
            return hi.s0(parameterTypes, "", "<init>(", ")V", 0, null, new e74() {
                @Override
                public final CharSequence invoke(Class<?> cls) {
                    y45.i(cls, "it");
                    return ReflectClassUtilKt.b(cls);
                }
            }, 24, null);
        }

        public final Constructor b() {
            return this.a;
        }
    }

    public static final class a extends JvmFunctionSignature {
        public final Method a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Method method) {
            super(null);
            y45.j(method, "method");
            this.a = method;
        }

        @Override
        public String a() {
            return RuntimeTypeMapperKt.b(this.a);
        }

        public final Method b() {
            return this.a;
        }
    }

    public static final class b extends JvmFunctionSignature {
        public final id5.b a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(id5.b bVar) {
            super(null);
            y45.j(bVar, "signature");
            this.a = bVar;
            this.b = bVar.a();
        }

        @Override
        public String a() {
            return this.b;
        }

        public final String b() {
            return this.a.b();
        }
    }

    public static final class c extends JvmFunctionSignature {
        public final id5.b a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(id5.b bVar) {
            super(null);
            y45.j(bVar, "signature");
            this.a = bVar;
            this.b = bVar.a();
        }

        @Override
        public String a() {
            return this.b;
        }

        public final String b() {
            return this.a.b();
        }

        public final String c() {
            return this.a.c();
        }
    }

    public JvmFunctionSignature(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String a();

    public JvmFunctionSignature() {
    }
}
