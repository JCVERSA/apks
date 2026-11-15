package com.lzy.okgo.request.base;

import com.lzy.okgo.request.base.NoBodyRequest;
import defpackage.ut4;
import okhttp3.RequestBody;

public abstract class NoBodyRequest<T, R extends NoBodyRequest> extends Request<T, R> {
    private static final long serialVersionUID = 1200621102761691196L;

    public NoBodyRequest(String str) {
        super(str);
    }

    @Override
    public RequestBody generateRequestBody() {
        return null;
    }

    public okhttp3.Request.Builder generateRequestBuilder(RequestBody requestBody) {
        this.url = ut4.c(this.baseUrl, this.params.urlParamsMap);
        return ut4.a(new okhttp3.Request.Builder(), this.headers);
    }
}
