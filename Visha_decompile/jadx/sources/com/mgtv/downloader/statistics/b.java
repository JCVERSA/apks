package com.mgtv.downloader.statistics;

import android.content.Context;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.ThreadManager;
import com.mgtv.downloader.net.RequestParams;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.http.c;
import com.mgtv.task.m;
import java.util.Map;

public class b {
    private static b c;
    private m a;
    private m b;

    private b(Context context) {
        h hVar = new h(ThreadManager.geStatisticsThreadPool(), false);
        this.b = new m(context, hVar, null);
        this.a = new m(context, hVar, null);
    }

    public static b a() {
        if (c == null) {
            c = new b(BaseApplication.getContext());
        }
        return c;
    }

    public void a(String str, RequestParams requestParams) {
        Map<String, String> paramsMap = requestParams.getParamsMap();
        if (com.mgtv.downloader.statistics.b.a.a(paramsMap)) {
            return;
        }
        HttpParams httpParams = new HttpParams();
        httpParams.putParams(paramsMap, HttpParams.Type.BODY);
        a(false).b(10000).a(str, httpParams, new c<String>() {
            @Override
            public void b(String str2) {
            }

            @Override
            public void a(String str2) {
            }
        });
    }

    private m a(boolean z) {
        return z ? this.a : this.b;
    }
}
