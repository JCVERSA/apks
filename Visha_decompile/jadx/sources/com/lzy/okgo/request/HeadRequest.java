package com.lzy.okgo.request;

import com.lzy.okgo.model.HttpMethod;
import com.lzy.okgo.request.base.NoBodyRequest;
import okhttp3.Request;
import okhttp3.RequestBody;

public class HeadRequest<T> extends NoBodyRequest<T, HeadRequest<T>> {
    public HeadRequest(String str) {
        super(str);
    }

    @Override
    public Request generateRequest(RequestBody requestBody) {
        return generateRequestBuilder(requestBody).head().url(this.url).tag(this.tag).build();
    }

    @Override
    public HttpMethod getMethod() {
        return HttpMethod.HEAD;
    }
}
