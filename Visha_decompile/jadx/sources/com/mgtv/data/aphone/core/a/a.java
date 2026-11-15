package com.mgtv.data.aphone.core.a;

import com.mgtv.task.http.HttpResponseObject;
import com.mgtv.task.http.HttpTraceObject;
import com.mgtv.task.http.c;

public abstract class a<T> extends c<T> {
    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        super.a(httpResponseObject, obj, th);
        HttpTraceObject httpTraceObject = (HttpTraceObject) obj;
        int httpStatus = httpTraceObject.getHttpStatus();
        if (th != null || httpResponseObject == 0) {
            return;
        }
        int code = httpResponseObject.getCode();
        String msg = httpResponseObject.getMsg();
        if (httpTraceObject.getHttpStatus() == 200) {
            a(httpResponseObject);
        } else {
            a(null, httpStatus, code, msg, th);
        }
    }
}
