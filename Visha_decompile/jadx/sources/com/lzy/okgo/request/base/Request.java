package com.lzy.okgo.request.base;

import android.text.TextUtils;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.HttpMethod;
import com.lzy.okgo.model.HttpParams;
import com.lzy.okgo.request.base.Request;
import defpackage.b8;
import defpackage.fe7;
import defpackage.kp0;
import defpackage.kq0;
import defpackage.mq0;
import defpackage.ti1;
import defpackage.uq0;
import defpackage.ut4;
import defpackage.xp0;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;

public abstract class Request<T, R extends Request> implements Serializable {
    private static final long serialVersionUID = -7174118653689916252L;
    protected String baseUrl;
    protected String cacheKey;
    protected CacheMode cacheMode;
    protected transient xp0 cachePolicy;
    protected long cacheTime;
    protected transient kq0 call;
    protected transient uq0 callback;
    protected transient OkHttpClient client;
    protected transient ti1 converter;
    protected transient okhttp3.Request mRequest;
    protected int retryCount;
    protected transient Object tag;
    protected transient ProgressRequestBody.b uploadInterceptor;
    protected String url;
    protected HttpParams params = new HttpParams();
    protected HttpHeaders headers = new HttpHeaders();

    public Request(String str) {
        this.url = str;
        this.baseUrl = str;
        fe7 fe7VarI = fe7.i();
        String acceptLanguage = HttpHeaders.getAcceptLanguage();
        if (!TextUtils.isEmpty(acceptLanguage)) {
            headers(HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE, acceptLanguage);
        }
        String userAgent = HttpHeaders.getUserAgent();
        if (!TextUtils.isEmpty(userAgent)) {
            headers("User-Agent", userAgent);
        }
        if (fe7VarI.f() != null) {
            params(fe7VarI.f());
        }
        if (fe7VarI.e() != null) {
            headers(fe7VarI.e());
        }
        this.retryCount = fe7VarI.k();
        this.cacheMode = fe7VarI.c();
        this.cacheTime = fe7VarI.d();
    }

    public kq0 adapt() {
        kq0 kq0Var = this.call;
        return kq0Var == null ? new kp0(this) : kq0Var;
    }

    public R addUrlParams(String str, List<String> list) {
        this.params.putUrlParams(str, list);
        return this;
    }

    public R cacheKey(String str) {
        ut4.b(str, "cacheKey == null");
        this.cacheKey = str;
        return this;
    }

    public R cacheMode(CacheMode cacheMode) {
        this.cacheMode = cacheMode;
        return this;
    }

    public R cachePolicy(xp0 xp0Var) {
        ut4.b(xp0Var, "cachePolicy == null");
        this.cachePolicy = xp0Var;
        return this;
    }

    public R cacheTime(long j) {
        if (j <= -1) {
            j = -1;
        }
        this.cacheTime = j;
        return this;
    }

    public R call(kq0 kq0Var) {
        ut4.b(kq0Var, "call == null");
        this.call = kq0Var;
        return this;
    }

    public R client(OkHttpClient okHttpClient) {
        ut4.b(okHttpClient, "OkHttpClient == null");
        this.client = okHttpClient;
        return this;
    }

    public R converter(ti1 ti1Var) {
        ut4.b(ti1Var, "converter == null");
        return this;
    }

    public Response execute() throws IOException {
        return getRawCall().execute();
    }

    public abstract okhttp3.Request generateRequest(RequestBody requestBody);

    public abstract RequestBody generateRequestBody();

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public String getCacheKey() {
        return this.cacheKey;
    }

    public CacheMode getCacheMode() {
        return this.cacheMode;
    }

    public xp0 getCachePolicy() {
        return this.cachePolicy;
    }

    public long getCacheTime() {
        return this.cacheTime;
    }

    public ti1 getConverter() {
        ut4.b(null, "converter == null, do you forget to call Request#converter(Converter<T>) ?");
        return null;
    }

    public HttpParams.FileWrapper getFileParam(String str) {
        List<HttpParams.FileWrapper> list = this.params.fileParamsMap.get(str);
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public HttpHeaders getHeaders() {
        return this.headers;
    }

    public abstract HttpMethod getMethod();

    public HttpParams getParams() {
        return this.params;
    }

    public Call getRawCall() {
        RequestBody requestBodyGenerateRequestBody = generateRequestBody();
        if (requestBodyGenerateRequestBody != null) {
            ProgressRequestBody progressRequestBody = new ProgressRequestBody(requestBodyGenerateRequestBody, null);
            progressRequestBody.e(this.uploadInterceptor);
            this.mRequest = generateRequest(progressRequestBody);
        } else {
            this.mRequest = generateRequest(null);
        }
        if (this.client == null) {
            this.client = fe7.i().j();
        }
        return this.client.newCall(this.mRequest);
    }

    public okhttp3.Request getRequest() {
        return this.mRequest;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public Object getTag() {
        return this.tag;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUrlParam(String str) {
        List<String> list = this.params.urlParamsMap.get(str);
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public R headers(HttpHeaders httpHeaders) {
        this.headers.put(httpHeaders);
        return this;
    }

    public R params(HttpParams httpParams) {
        this.params.put(httpParams);
        return this;
    }

    public R removeAllHeaders() {
        this.headers.clear();
        return this;
    }

    public R removeAllParams() {
        this.params.clear();
        return this;
    }

    public R removeHeader(String str) {
        this.headers.remove(str);
        return this;
    }

    public R removeParam(String str) {
        this.params.remove(str);
        return this;
    }

    public R retryCount(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("retryCount must > 0");
        }
        this.retryCount = i;
        return this;
    }

    public void setCallback(uq0 uq0Var) {
    }

    public R tag(Object obj) {
        this.tag = obj;
        return this;
    }

    public R uploadInterceptor(ProgressRequestBody.b bVar) {
        this.uploadInterceptor = bVar;
        return this;
    }

    public void execute(uq0 uq0Var) {
        ut4.b(uq0Var, "callback == null");
        adapt().a(uq0Var);
    }

    public R headers(String str, String str2) {
        this.headers.put(str, str2);
        return this;
    }

    public R params(Map<String, String> map, boolean... zArr) {
        this.params.put(map, zArr);
        return this;
    }

    public <E> E adapt(mq0 mq0Var) {
        kq0 kp0Var = this.call;
        if (kp0Var == null) {
            kp0Var = new kp0(this);
        }
        return (E) mq0Var.a(kp0Var, null);
    }

    public R params(String str, String str2, boolean... zArr) {
        this.params.put(str, str2, zArr);
        return this;
    }

    public R params(String str, int i, boolean... zArr) {
        this.params.put(str, i, zArr);
        return this;
    }

    public R params(String str, float f, boolean... zArr) {
        this.params.put(str, f, zArr);
        return this;
    }

    public <E> E adapt(b8 b8Var, mq0 mq0Var) {
        kq0 kp0Var = this.call;
        if (kp0Var == null) {
            kp0Var = new kp0(this);
        }
        return (E) mq0Var.a(kp0Var, b8Var);
    }

    public R params(String str, double d, boolean... zArr) {
        this.params.put(str, d, zArr);
        return this;
    }

    public R params(String str, long j, boolean... zArr) {
        this.params.put(str, j, zArr);
        return this;
    }

    public R params(String str, char c, boolean... zArr) {
        this.params.put(str, c, zArr);
        return this;
    }

    public R params(String str, boolean z, boolean... zArr) {
        this.params.put(str, z, zArr);
        return this;
    }
}
