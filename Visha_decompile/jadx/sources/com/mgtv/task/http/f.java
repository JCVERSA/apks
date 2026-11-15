package com.mgtv.task.http;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class f {
    /* JADX WARN: Type inference failed for: r0v0, types: [Param, com.mgtv.task.http.HttpRequestObject] */
    public static <T> e a(@Nullable Context context, @NonNull String str, @NonNull HttpParams httpParams, @NonNull c<T> cVar) {
        ?? httpRequestObject = new HttpRequestObject();
        httpRequestObject.url = str;
        httpRequestObject.params = httpParams;
        httpRequestObject.traceData = new HttpTraceObject();
        e eVar = new e();
        eVar.b = httpRequestObject;
        eVar.c = cVar;
        g gVar = new g(context);
        gVar.a(new com.mgtv.task.http.host.a());
        eVar.a = gVar;
        return eVar;
    }
}
