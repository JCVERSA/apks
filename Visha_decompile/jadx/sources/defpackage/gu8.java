package defpackage;

import java.util.Objects;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class gu8<T> {
    public final Response a;
    public final Object b;
    public final ResponseBody c;

    public gu8(Response response, Object obj, ResponseBody responseBody) {
        this.a = response;
        this.b = obj;
        this.c = responseBody;
    }

    public static gu8 c(ResponseBody responseBody, Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new gu8(response, null, responseBody);
    }

    public static gu8 g(Object obj, Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new gu8(response, obj, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public Object a() {
        return this.b;
    }

    public int b() {
        return this.a.code();
    }

    public Headers d() {
        return this.a.headers();
    }

    public boolean e() {
        return this.a.isSuccessful();
    }

    public String f() {
        return this.a.message();
    }

    public String toString() {
        return this.a.toString();
    }
}
