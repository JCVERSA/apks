package k00;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.k;
import retrofit2.k0;

public final class a extends k.a {

    private final Gson f63477a;

    private a(Gson gson) {
        this.f63477a = gson;
    }

    public static a f() {
        return g(new Gson());
    }

    public static a g(Gson gson) {
        if (gson != null) {
            return new a(gson);
        }
        throw new NullPointerException("gson == null");
    }

    @Override
    public k c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, k0 k0Var) {
        return new b(this.f63477a, this.f63477a.getAdapter(TypeToken.get(type)));
    }

    @Override
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        return new c(this.f63477a, this.f63477a.getAdapter(TypeToken.get(type)));
    }
}
