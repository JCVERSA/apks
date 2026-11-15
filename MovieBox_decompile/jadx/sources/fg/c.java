package fg;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.Okio;
import retrofit2.k;

public class c implements k {

    private final Type f60172a;

    private final String f60173b;

    private final String f60175d = "{\"code\":200005,\"data\":{},\"msg\":\"unknown error\"}";

    private Gson f60174c = new Gson();

    public c(Type type, String str) {
        this.f60172a = type;
        this.f60173b = str;
    }

    @Override
    public Object convert(ResponseBody responseBody) throws IOException {
        BufferedSource bufferedSourceBuffer = Okio.buffer(responseBody.get$this_asResponseBody());
        String utf8 = bufferedSourceBuffer.readUtf8();
        wf.a.f74274a.c("HttpTag", "Converter origin json:" + utf8, false);
        bufferedSourceBuffer.close();
        if (TextUtils.equals(this.f60173b, "1311")) {
            return utf8;
        }
        try {
            return o.e(utf8, this.f60172a);
        } catch (JsonSyntaxException e10) {
            wf.a.f74274a.i("HttpTag", "error =" + e10.getMessage() + "json= " + utf8, true);
            return this.f60174c.fromJson(utf8, this.f60172a);
        }
    }
}
