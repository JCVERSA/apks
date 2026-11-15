package j00;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.p;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import retrofit2.j0;
import retrofit2.k0;

public final class g extends retrofit2.e.a {

    private final Scheduler f62871a;

    private final boolean f62872b;

    private g(Scheduler scheduler, boolean z10) {
        this.f62871a = scheduler;
        this.f62872b = z10;
    }

    public static g d() {
        return new g(null, true);
    }

    public static g e(Scheduler scheduler) {
        if (scheduler != null) {
            return new g(scheduler, false);
        }
        throw new NullPointerException("scheduler == null");
    }

    @Override
    public retrofit2.e a(Type type, Annotation[] annotationArr, k0 k0Var) {
        Type typeB;
        boolean z10;
        boolean z11;
        String str;
        Class clsC = retrofit2.e.a.c(type);
        if (clsC == io.reactivex.rxjava3.core.a.class) {
            return new f(Void.class, this.f62871a, this.f62872b, false, true, false, false, false, true);
        }
        boolean z12 = clsC == io.reactivex.rxjava3.core.e.class;
        boolean z13 = clsC == p.class;
        boolean z14 = clsC == io.reactivex.rxjava3.core.g.class;
        if (clsC != j.class && !z12 && !z13 && !z14) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            if (z12) {
                str = "Flowable";
            } else if (z13) {
                str = "Single";
            } else {
                str = z14 ? "Maybe" : "Observable";
            }
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type typeB2 = retrofit2.e.a.b(0, (ParameterizedType) type);
        Class clsC2 = retrofit2.e.a.c(typeB2);
        if (clsC2 == j0.class) {
            if (!(typeB2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            typeB = retrofit2.e.a.b(0, (ParameterizedType) typeB2);
            z11 = false;
            z10 = false;
        } else if (clsC2 != d.class) {
            typeB = typeB2;
            z10 = true;
            z11 = false;
        } else {
            if (!(typeB2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
            typeB = retrofit2.e.a.b(0, (ParameterizedType) typeB2);
            z11 = true;
            z10 = false;
        }
        return new f(typeB, this.f62871a, this.f62872b, z11, z10, z12, z13, z14, false);
    }
}
