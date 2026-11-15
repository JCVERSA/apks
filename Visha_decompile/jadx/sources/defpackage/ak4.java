package defpackage;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

public final class ak4 extends si1.a {
    public final Gson a;

    public ak4(Gson gson) {
        this.a = gson;
    }

    public static ak4 a() {
        return b(new Gson());
    }

    public static ak4 b(Gson gson) {
        if (gson != null) {
            return new ak4(gson);
        }
        throw new NullPointerException("gson == null");
    }

    @Override
    public si1 requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, ru8 ru8Var) {
        return new ck4(this.a, this.a.getAdapter(TypeToken.get(type)));
    }

    @Override
    public si1 responseBodyConverter(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        return new dk4(this.a, this.a.getAdapter(TypeToken.get(type)));
    }
}
