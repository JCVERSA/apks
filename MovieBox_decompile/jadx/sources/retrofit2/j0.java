package retrofit2;

import java.util.Objects;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class j0<T> {

    private final Response f71101a;

    private final Object f71102b;

    private final ResponseBody f71103c;

    private j0(Response response, Object obj, ResponseBody responseBody) {
        this.f71101a = response;
        this.f71102b = obj;
        this.f71103c = responseBody;
    }

    public static j0 c(ResponseBody responseBody, Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new j0(response, null, responseBody);
    }

    public static j0 g(Object obj, Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new j0(response, obj, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public Object a() {
        return this.f71102b;
    }

    public int b() {
        return this.f71101a.code();
    }

    public ResponseBody d() {
        return this.f71103c;
    }

    public boolean e() {
        return this.f71101a.isSuccessful();
    }

    public String f() {
        return this.f71101a.message();
    }

    public String toString() {
        return this.f71101a.toString();
    }
}
