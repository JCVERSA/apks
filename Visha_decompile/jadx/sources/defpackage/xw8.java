package defpackage;

import io.reactivex.Scheduler;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public final class xw8 extends lq0.a {
    public final Scheduler a;
    public final boolean b;

    public xw8(Scheduler scheduler, boolean z) {
        this.a = scheduler;
        this.b = z;
    }

    public static xw8 a() {
        return new xw8(null, false);
    }

    @Override
    public lq0 get(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        Type parameterUpperBound;
        boolean z;
        boolean z2;
        String str;
        Class<?> rawType = lq0.a.getRawType(type);
        if (rawType == hb1.class) {
            return new ww8(Void.class, this.a, this.b, false, true, false, false, false, true);
        }
        boolean z3 = rawType == r14.class;
        boolean z4 = rawType == xm9.class;
        boolean z5 = rawType == b96.class;
        if (rawType != mc7.class && !z3 && !z4 && !z5) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            if (z3) {
                str = "Flowable";
            } else if (z4) {
                str = "Single";
            } else {
                str = z5 ? "Maybe" : "Observable";
            }
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type parameterUpperBound2 = lq0.a.getParameterUpperBound(0, (ParameterizedType) type);
        Class<?> rawType2 = lq0.a.getRawType(parameterUpperBound2);
        if (rawType2 == gu8.class) {
            if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            parameterUpperBound = lq0.a.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
            z2 = false;
            z = false;
        } else if (rawType2 != ku8.class) {
            parameterUpperBound = parameterUpperBound2;
            z = true;
            z2 = false;
        } else {
            if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
            parameterUpperBound = lq0.a.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
            z2 = true;
            z = false;
        }
        return new ww8(parameterUpperBound, this.a, this.b, z2, z, z3, z4, z5, false);
    }
}
