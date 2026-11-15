package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.coroutines.Continuation;
import okhttp3.Call;
import okhttp3.Response;

abstract class u extends l0 {

    private final i0 f71146a;

    private final Call.Factory f71147b;

    private final k f71148c;

    static final class a extends u {

        private final e f71149d;

        a(i0 i0Var, Call.Factory factory, k kVar, e eVar) {
            super(i0Var, factory, kVar);
            this.f71149d = eVar;
        }

        @Override
        protected Object c(d dVar, Object[] objArr) {
            return this.f71149d.b(dVar);
        }
    }

    static final class b extends u {

        private final e f71150d;

        private final boolean f71151e;

        private final boolean f71152f;

        b(i0 i0Var, Call.Factory factory, k kVar, e eVar, boolean z10, boolean z11) {
            super(i0Var, factory, kVar);
            this.f71150d = eVar;
            this.f71151e = z10;
            this.f71152f = z11;
        }

        @Override
        protected Object c(d dVar, Object[] objArr) {
            d dVar2 = (d) this.f71150d.b(dVar);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                if (this.f71152f) {
                    return KotlinExtensions.d(dVar2, continuation);
                }
                return this.f71151e ? KotlinExtensions.b(dVar2, continuation) : KotlinExtensions.a(dVar2, continuation);
            } catch (LinkageError e10) {
                throw e10;
            } catch (ThreadDeath e11) {
                throw e11;
            } catch (VirtualMachineError e12) {
                throw e12;
            } catch (Throwable th2) {
                return KotlinExtensions.e(th2, continuation);
            }
        }
    }

    static final class c extends u {

        private final e f71153d;

        c(i0 i0Var, Call.Factory factory, k kVar, e eVar) {
            super(i0Var, factory, kVar);
            this.f71153d = eVar;
        }

        @Override
        protected Object c(d dVar, Object[] objArr) {
            d dVar2 = (d) this.f71153d.b(dVar);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                return KotlinExtensions.c(dVar2, continuation);
            } catch (Exception e10) {
                return KotlinExtensions.e(e10, continuation);
            }
        }
    }

    u(i0 i0Var, Call.Factory factory, k kVar) {
        this.f71146a = i0Var;
        this.f71147b = factory;
        this.f71148c = kVar;
    }

    private static e d(k0 k0Var, Method method, Type type, Annotation[] annotationArr) {
        try {
            return k0Var.a(type, annotationArr);
        } catch (RuntimeException e10) {
            throw o0.o(method, e10, "Unable to create call adapter for %s", type);
        }
    }

    private static k e(k0 k0Var, Method method, Type type) {
        try {
            return k0Var.h(type, method.getAnnotations());
        } catch (RuntimeException e10) {
            throw o0.o(method, e10, "Unable to create converter for %s", type);
        }
    }

    static u f(k0 k0Var, Method method, i0 i0Var) {
        Type genericReturnType;
        boolean z10;
        boolean z11;
        boolean zM;
        boolean z12 = i0Var.f71067l;
        Annotation[] annotations = method.getAnnotations();
        if (z12) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type typeF = o0.f(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (o0.h(typeF) == j0.class && (typeF instanceof ParameterizedType)) {
                typeF = o0.g(0, (ParameterizedType) typeF);
                z10 = true;
                zM = false;
            } else {
                if (o0.h(typeF) == d.class) {
                    throw o0.n(method, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", o0.g(0, (ParameterizedType) typeF));
                }
                zM = o0.m(typeF);
                z10 = false;
            }
            genericReturnType = new o0.b(null, d.class, typeF);
            annotations = n0.a(annotations);
            z11 = zM;
        } else {
            genericReturnType = method.getGenericReturnType();
            z10 = false;
            z11 = false;
        }
        e eVarD = d(k0Var, method, genericReturnType, annotations);
        Type typeA = eVarD.a();
        if (typeA == Response.class) {
            throw o0.n(method, "'" + o0.h(typeA).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        }
        if (typeA == j0.class) {
            throw o0.n(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        }
        if (i0Var.f71059d.equals("HEAD") && !Void.class.equals(typeA) && !o0.m(typeA)) {
            throw o0.n(method, "HEAD method must use Void or Unit as response type.", new Object[0]);
        }
        k kVarE = e(k0Var, method, typeA);
        Call.Factory factory = k0Var.f71105b;
        if (z12) {
            return z10 ? new c(i0Var, factory, kVarE, eVarD) : new b(i0Var, factory, kVarE, eVarD, false, z11);
        }
        return new a(i0Var, factory, kVarE, eVarD);
    }

    @Override
    final Object a(Object obj, Object[] objArr) {
        return c(new w(this.f71146a, obj, objArr, this.f71147b, this.f71148c), objArr);
    }

    protected abstract Object c(d dVar, Object[] objArr);
}
