package defpackage;

import com.transsion.gslb.NetResponse;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;
import org.json.JSONException;
import org.json.JSONObject;

public final class fc2 implements Interceptor {
    public final String b;

    public fc2(String str) {
        y45.j(str, "diskDomain");
        this.b = str;
    }

    public final String a(RequestBody requestBody) throws IOException {
        Charset charset;
        Buffer buffer = new Buffer();
        requestBody.writeTo(buffer);
        MediaType contentType = requestBody.getContentType();
        if (y45.e(contentType != null ? contentType.type() : null, MultipartBody.FORM.type())) {
            return "";
        }
        if (contentType == null || (charset = contentType.charset(StandardCharsets.UTF_8)) == null) {
            charset = StandardCharsets.UTF_8;
            y45.i(charset, "UTF_8");
        }
        return buffer.readString(charset);
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws JSONException {
        y45.j(chain, "chain");
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        RequestBody requestBodyBody = request.body();
        if (y45.e(request.method(), "POST")) {
            String str = NetResponse.EMPTY_RESPONSE;
            String strA = requestBodyBody != null ? a(requestBodyBody) : NetResponse.EMPTY_RESPONSE;
            if (!j1a.o0(strA)) {
                str = strA;
            }
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.put("disk_domain", this.b);
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jSONObject.toString();
            y45.i(string, "toString(...)");
            builderNewBuilder.post(companion.create(string, MediaType.INSTANCE.parse("application/json")));
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
