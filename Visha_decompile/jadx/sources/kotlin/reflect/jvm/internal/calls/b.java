package kotlin.reflect.jvm.internal.calls;

import defpackage.fi;
import defpackage.hi;
import defpackage.iv9;
import defpackage.jk0;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class b implements kotlin.reflect.jvm.internal.calls.a {
    public static final d e = new d(null);
    public final Member a;
    public final Type b;
    public final Class c;
    public final List d;

    public static final class a extends b implements jk0 {
        public final Object f;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(Constructor constructor, Object obj) {
            y45.j(constructor, "constructor");
            Class declaringClass = constructor.getDeclaringClass();
            y45.i(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            y45.i(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, (Type[]) (genericParameterTypes.length <= 2 ? new Type[0] : fi.s(genericParameterTypes, 1, genericParameterTypes.length - 1)), null);
            this.f = obj;
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            c(objArr);
            Constructor constructor = (Constructor) b();
            iv9 iv9Var = new iv9(3);
            iv9Var.a(this.f);
            iv9Var.b(objArr);
            iv9Var.a(null);
            return constructor.newInstance(iv9Var.d(new Object[iv9Var.c()]));
        }
    }

    public static final class C0372b extends b {
        /* JADX WARN: Illegal instructions before constructor call */
        public C0372b(Constructor constructor) {
            y45.j(constructor, "constructor");
            Class declaringClass = constructor.getDeclaringClass();
            y45.i(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            y45.i(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : fi.s(genericParameterTypes, 0, genericParameterTypes.length - 1)), null);
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            c(objArr);
            Constructor constructor = (Constructor) b();
            iv9 iv9Var = new iv9(2);
            iv9Var.b(objArr);
            iv9Var.a(null);
            return constructor.newInstance(iv9Var.d(new Object[iv9Var.c()]));
        }
    }

    public static final class c extends b implements jk0 {
        public final Object f;

        /* JADX WARN: Illegal instructions before constructor call */
        public c(Constructor constructor, Object obj) {
            y45.j(constructor, "constructor");
            Class declaringClass = constructor.getDeclaringClass();
            y45.i(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            y45.i(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, genericParameterTypes, null);
            this.f = obj;
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            c(objArr);
            Constructor constructor = (Constructor) b();
            iv9 iv9Var = new iv9(2);
            iv9Var.a(this.f);
            iv9Var.b(objArr);
            return constructor.newInstance(iv9Var.d(new Object[iv9Var.c()]));
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public d() {
        }
    }

    public static final class e extends b {
        /* JADX WARN: Illegal instructions before constructor call */
        public e(Constructor constructor) {
            y45.j(constructor, "constructor");
            Class declaringClass = constructor.getDeclaringClass();
            y45.i(declaringClass, "constructor.declaringClass");
            Class declaringClass2 = constructor.getDeclaringClass();
            Class<?> declaringClass3 = declaringClass2.getDeclaringClass();
            Class<?> cls = (declaringClass3 == null || Modifier.isStatic(declaringClass2.getModifiers())) ? null : declaringClass3;
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            y45.i(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, cls, genericParameterTypes, null);
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            c(objArr);
            return ((Constructor) b()).newInstance(Arrays.copyOf(objArr, objArr.length));
        }
    }

    public static abstract class f extends b {

        public static final class a extends f implements jk0 {
            public final Object f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, Object obj) {
                super(field, false, null);
                y45.j(field, "field");
                this.f = obj;
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                return ((Field) b()).get(this.f);
            }
        }

        public static final class C0373b extends f implements jk0 {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0373b(Field field) {
                super(field, false, null);
                y45.j(field, "field");
            }
        }

        public static final class c extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field) {
                super(field, true, null);
                y45.j(field, "field");
            }
        }

        public static final class d extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field) {
                super(field, true, null);
                y45.j(field, "field");
            }

            @Override
            public void c(Object[] objArr) {
                y45.j(objArr, "args");
                super.c(objArr);
                d(hi.Y(objArr));
            }
        }

        public static final class e extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Field field) {
                super(field, false, null);
                y45.j(field, "field");
            }
        }

        public f(Field field, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(field, z);
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            c(objArr);
            return ((Field) b()).get(e() != null ? hi.W(objArr) : null);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public f(Field field, boolean z) {
            Type genericType = field.getGenericType();
            y45.i(genericType, "field.genericType");
            super(field, genericType, z ? field.getDeclaringClass() : null, new Type[0], null);
        }
    }

    public static abstract class g extends b {
        public final boolean f;

        public static final class a extends g implements jk0 {
            public final Object g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, boolean z, Object obj) {
                super(field, z, false, null);
                y45.j(field, "field");
                this.g = obj;
            }

            @Override
            public Object call(Object[] objArr) throws IllegalAccessException {
                y45.j(objArr, "args");
                c(objArr);
                ((Field) b()).set(this.g, hi.W(objArr));
                return zfb.a;
            }
        }

        public static final class C0374b extends g implements jk0 {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0374b(Field field, boolean z) {
                super(field, z, false, null);
                y45.j(field, "field");
            }

            @Override
            public Object call(Object[] objArr) throws IllegalAccessException {
                y45.j(objArr, "args");
                c(objArr);
                ((Field) b()).set(null, hi.u0(objArr));
                return zfb.a;
            }
        }

        public static final class c extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field, boolean z) {
                super(field, z, true, null);
                y45.j(field, "field");
            }
        }

        public static final class d extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field, boolean z) {
                super(field, z, true, null);
                y45.j(field, "field");
            }

            @Override
            public void c(Object[] objArr) {
                y45.j(objArr, "args");
                super.c(objArr);
                d(hi.Y(objArr));
            }
        }

        public static final class e extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Field field, boolean z) {
                super(field, z, false, null);
                y45.j(field, "field");
            }
        }

        public g(Field field, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this(field, z, z2);
        }

        @Override
        public void c(Object[] objArr) {
            y45.j(objArr, "args");
            super.c(objArr);
            if (this.f && hi.u0(objArr) == null) {
                throw new IllegalArgumentException("null is not allowed as a value for this property.");
            }
        }

        @Override
        public Object call(Object[] objArr) throws IllegalAccessException {
            y45.j(objArr, "args");
            c(objArr);
            ((Field) b()).set(e() != null ? hi.W(objArr) : null, hi.u0(objArr));
            return zfb.a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public g(Field field, boolean z, boolean z2) {
            Class cls = Void.TYPE;
            y45.i(cls, "TYPE");
            Class<?> declaringClass = z2 ? field.getDeclaringClass() : null;
            Type genericType = field.getGenericType();
            y45.i(genericType, "field.genericType");
            super(field, cls, declaringClass, new Type[]{genericType}, null);
            this.f = z;
        }
    }

    public static abstract class h extends b {
        public final boolean f;

        public static final class a extends h implements jk0 {
            public final Object g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Method method, Object obj) {
                super(method, false, null, 4, null);
                y45.j(method, "method");
                this.g = obj;
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                return f(this.g, objArr);
            }
        }

        public static final class C0375b extends h implements jk0 {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0375b(Method method) {
                super(method, false, null, 4, null);
                y45.j(method, "method");
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                return f(null, objArr);
            }
        }

        public static final class c extends h implements jk0 {
            public final Object g;

            /* JADX WARN: Illegal instructions before constructor call */
            public c(Method method, Object obj) {
                y45.j(method, "method");
                Type[] genericParameterTypes = method.getGenericParameterTypes();
                y45.i(genericParameterTypes, "method.genericParameterTypes");
                super(method, false, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : fi.s(genericParameterTypes, 1, genericParameterTypes.length)), null);
                this.g = obj;
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                iv9 iv9Var = new iv9(2);
                iv9Var.a(this.g);
                iv9Var.b(objArr);
                return f(null, iv9Var.d(new Object[iv9Var.c()]));
            }
        }

        public static final class d extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Method method) {
                super(method, false, null, 6, null);
                y45.j(method, "method");
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                return f(objArr[0], objArr.length <= 1 ? new Object[0] : fi.s(objArr, 1, objArr.length));
            }
        }

        public static final class e extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Method method) {
                super(method, true, null, 4, null);
                y45.j(method, "method");
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                d(hi.Y(objArr));
                return f(null, objArr.length <= 1 ? new Object[0] : fi.s(objArr, 1, objArr.length));
            }
        }

        public static final class f extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(Method method) {
                super(method, false, null, 6, null);
                y45.j(method, "method");
            }

            @Override
            public Object call(Object[] objArr) {
                y45.j(objArr, "args");
                c(objArr);
                return f(null, objArr);
            }
        }

        public h(Method method, boolean z, Type[] typeArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(method, z, typeArr);
        }

        public final Object f(Object obj, Object[] objArr) {
            y45.j(objArr, "args");
            return this.f ? zfb.a : ((Method) b()).invoke(obj, Arrays.copyOf(objArr, objArr.length));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public h(Method method, boolean z, Type[] typeArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
            z = (i & 2) != 0 ? !Modifier.isStatic(method.getModifiers()) : z;
            if ((i & 4) != 0) {
                typeArr = method.getGenericParameterTypes();
                y45.i(typeArr, "method.genericParameterTypes");
            }
            this(method, z, typeArr, null);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public h(Method method, boolean z, Type[] typeArr) {
            Type genericReturnType = method.getGenericReturnType();
            y45.i(genericReturnType, "method.genericReturnType");
            super(method, genericReturnType, z ? method.getDeclaringClass() : null, typeArr, null);
            this.f = y45.e(getReturnType(), Void.TYPE);
        }
    }

    public b(Member member, Type type, Class cls, Type[] typeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(member, type, cls, typeArr);
    }

    @Override
    public List a() {
        return this.d;
    }

    @Override
    public final Member b() {
        return this.a;
    }

    public void c(Object[] objArr) {
        kotlin.reflect.jvm.internal.calls.a.C0371a.a(this, objArr);
    }

    public final void d(Object obj) {
        if (obj == null || !this.a.getDeclaringClass().isInstance(obj)) {
            throw new IllegalArgumentException("An object member requires the object instance passed as the first argument.");
        }
    }

    public final Class e() {
        return this.c;
    }

    @Override
    public final Type getReturnType() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0027  */
    public b(Member member, Type type, Class cls, Type[] typeArr) {
        List listC1;
        this.a = member;
        this.b = type;
        this.c = cls;
        if (cls != null) {
            iv9 iv9Var = new iv9(2);
            iv9Var.a(cls);
            iv9Var.b(typeArr);
            listC1 = y71.n(iv9Var.d(new Type[iv9Var.c()]));
            listC1 = listC1 == null ? hi.c1(typeArr) : listC1;
        }
        this.d = listC1;
    }
}
