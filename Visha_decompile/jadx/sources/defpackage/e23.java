package defpackage;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;

public final class e23 extends c23 {
    public static e23 c;
    public final Map a = new HashMap();
    public final OkHttpClient b;

    public e23(OkHttpClient.Builder builder) {
        this.b = builder.readTimeout(30L, TimeUnit.SECONDS).build();
    }

    public static e23 l(OkHttpClient.Builder builder) {
        if (builder == null) {
            builder = new OkHttpClient.Builder();
        }
        e23 e23Var = new e23(builder);
        c = e23Var;
        return e23Var;
    }

    @Override
    public fu8 a(vs8 vs8Var) throws ReCaptchaException, IOException {
        String strD = vs8Var.d();
        String strF = vs8Var.f();
        Map mapC = vs8Var.c();
        byte[] bArrA = vs8Var.a();
        Request.Builder builderAddHeader = new Request.Builder().method(strD, bArrA != null ? RequestBody.create(bArrA) : null).url(strF).addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101 Firefox/91.0");
        for (Map.Entry entry : mapC.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (list.size() > 1) {
                builderAddHeader.removeHeader(str);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    builderAddHeader.addHeader(str, (String) it.next());
                }
            } else if (list.size() == 1) {
                builderAddHeader.header(str, (String) list.get(0));
            }
        }
        Response responseExecute = this.b.newCall(builderAddHeader.build()).execute();
        if (responseExecute.code() == 429) {
            responseExecute.close();
            throw new ReCaptchaException("reCaptcha Challenge requested", strF);
        }
        ResponseBody responseBodyBody = responseExecute.body();
        return new fu8(responseExecute.code(), responseExecute.message(), responseExecute.headers().toMultimap(), responseBodyBody != null ? responseBodyBody.string() : null, responseExecute.request().url().getUrl());
    }
}
