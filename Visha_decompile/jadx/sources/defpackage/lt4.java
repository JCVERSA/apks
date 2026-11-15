package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.Call;
import okhttp3.Response;
import retrofit2.KotlinExtensions;

public abstract class lt4 extends fe9 {
    public final et8 a;
    public final Call.Factory b;
    public final si1 c;

    public static final class a extends lt4 {
        public final lq0 d;

        public a(et8 et8Var, Call.Factory factory, si1 si1Var, lq0 lq0Var) {
            super(et8Var, factory, si1Var);
            this.d = lq0Var;
        }

        @Override
        public Object c(jq0 jq0Var, Object[] objArr) {
            return this.d.adapt(jq0Var);
        }
    }

    public static final class b extends lt4 {
        public final lq0 d;
        public final boolean e;
        public final boolean f;

        public b(et8 et8Var, Call.Factory factory, si1 si1Var, lq0 lq0Var, boolean z, boolean z2) {
            super(et8Var, factory, si1Var);
            this.d = lq0Var;
            this.e = z;
            this.f = z2;
        }

        @Override
        public Object c(jq0 jq0Var, Object[] objArr) {
            jq0 jq0Var2 = (jq0) this.d.adapt(jq0Var);
            wh1 wh1Var = (wh1) objArr[objArr.length - 1];
            try {
                if (this.f) {
                    return KotlinExtensions.d(jq0Var2, wh1Var);
                }
                return this.e ? KotlinExtensions.b(jq0Var2, wh1Var) : KotlinExtensions.a(jq0Var2, wh1Var);
            } catch (LinkageError | ThreadDeath | VirtualMachineError e) {
                throw e;
            } catch (Throwable th) {
                return KotlinExtensions.e(th, wh1Var);
            }
        }
    }

    public static final class c extends lt4 {
        public final lq0 d;

        public c(et8 et8Var, Call.Factory factory, si1 si1Var, lq0 lq0Var) {
            super(et8Var, factory, si1Var);
            this.d = lq0Var;
        }

        @Override
        public Object c(jq0 jq0Var, Object[] objArr) {
            jq0 jq0Var2 = (jq0) this.d.adapt(jq0Var);
            wh1 wh1Var = (wh1) objArr[objArr.length - 1];
            try {
                return KotlinExtensions.c(jq0Var2, wh1Var);
            } catch (Exception e) {
                return KotlinExtensions.e(e, wh1Var);
            }
        }
    }

    public lt4(et8 et8Var, Call.Factory factory, si1 si1Var) {
        this.a = et8Var;
        this.b = factory;
        this.c = si1Var;
    }

    public static lq0 d(ru8 ru8Var, Method method, Type type, Annotation[] annotationArr) {
        try {
            return ru8Var.a(type, annotationArr);
        } catch (RuntimeException e) {
            throw ulb.o(method, e, "Unable to create call adapter for %s", type);
        }
    }

    public static si1 e(ru8 ru8Var, Method method, Type type) {
        try {
            return ru8Var.h(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw ulb.o(method, e, "Unable to create converter for %s", type);
        }
    }

    public static lt4 f(ru8 ru8Var, Method method, et8 et8Var) {
        Type genericReturnType;
        boolean z;
        boolean z2;
        boolean zM;
        boolean z3 = et8Var.l;
        Annotation[] annotations = method.getAnnotations();
        if (z3) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type typeF = ulb.f(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (ulb.h(typeF) == gu8.class && (typeF instanceof ParameterizedType)) {
                typeF = ulb.g(0, (ParameterizedType) typeF);
                z = true;
                zM = false;
            } else {
                if (ulb.h(typeF) == jq0.class) {
                    throw ulb.n(method, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", ulb.g(0, (ParameterizedType) typeF));
                }
                zM = ulb.m(typeF);
                z = false;
            }
            genericReturnType = new ulb.b(null, jq0.class, typeF);
            annotations = lp9.a(annotations);
            z2 = zM;
        } else {
            genericReturnType = method.getGenericReturnType();
            z = false;
            z2 = false;
        }
        lq0 lq0VarD = d(ru8Var, method, genericReturnType, annotations);
        Type typeResponseType = lq0VarD.responseType();
        if (typeResponseType == Response.class) {
            throw ulb.n(method, "'" + ulb.h(typeResponseType).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        }
        if (typeResponseType == gu8.class) {
            throw ulb.n(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        }
        if (et8Var.d.equals("HEAD") && !Void.class.equals(typeResponseType) && !ulb.m(typeResponseType)) {
            throw ulb.n(method, "HEAD method must use Void or Unit as response type.", new Object[0]);
        }
        si1 si1VarE = e(ru8Var, method, typeResponseType);
        Call.Factory factory = ru8Var.b;
        if (z3) {
            return z ? new c(et8Var, factory, si1VarE, lq0VarD) : new b(et8Var, factory, si1VarE, lq0VarD, false, z2);
        }
        return new a(et8Var, factory, si1VarE, lq0VarD);
    }

    @Override
    public final Object a(Object obj, Object[] objArr) {
        return c(new ge7(this.a, obj, objArr, this.b, this.c), objArr);
    }

    public abstract Object c(jq0 jq0Var, Object[] objArr);
}
