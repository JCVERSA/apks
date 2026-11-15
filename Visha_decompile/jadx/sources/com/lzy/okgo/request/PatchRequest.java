package com.lzy.okgo.request;

import com.lzy.okgo.model.HttpMethod;
import com.lzy.okgo.request.base.BodyRequest;
import okhttp3.Request;
import okhttp3.RequestBody;

public class PatchRequest<T> extends BodyRequest<T, PatchRequest<T>> {
    public PatchRequest(String str) {
        super(str);
    }

    @Override
    public Request generateRequest(RequestBody requestBody) {
        return generateRequestBuilder(requestBody).patch(requestBody).url(this.url).tag(this.tag).build();
    }

    @Override
    public HttpMethod getMethod() {
        return HttpMethod.PATCH;
    }
}
