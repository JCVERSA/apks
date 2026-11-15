package com.hunantv.imgo.report;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.o;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import java.util.HashMap;
import java.util.Map;

public class d {
    private static d c;
    private m a;
    private m b;

    private d(Context context) {
        this.b = new m(context, new h(ThreadManager.geStatisticsThreadPool(), false), null);
        this.a = new m(context, new h(ThreadManager.getMediumExecutorService(), false), null);
    }

    public static d a() {
        if (c == null) {
            c = new d(BaseApplication.getContext());
        }
        return c;
    }

    public void b(String str, String str2, final a aVar) {
        if (str2 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
        HttpParams httpParams = new HttpParams();
        httpParams.putParams(map, HttpParams.Type.HEADER);
        httpParams.put("data", str2);
        a(false).a(true).a().b(10000).a(str, httpParams, new com.mgtv.task.http.c<String>() {
            @Override
            public void b(String str3) {
            }

            @Override
            public boolean a() {
                return true;
            }

            @Override
            public void a(String str3) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(str3);
                }
            }

            @Override
            public void a(String str3, int i, int i2, String str4, Throwable th) {
                super.a(str3, i, i2, str4, th);
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(i, i2, str4, th);
                }
            }
        });
    }

    public void a(String str, String str2, final a aVar) {
        if (str2 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("Content-Type", "application/json");
        HttpParams httpParams = new HttpParams();
        httpParams.putParams(map, HttpParams.Type.HEADER);
        httpParams.setMethod("POST");
        httpParams.setBodyJson(str2);
        a(false).a(true).a().b(10000).a(str, httpParams, new com.mgtv.task.http.c<String>() {
            @Override
            public void b(String str3) {
            }

            @Override
            public boolean a() {
                return true;
            }

            @Override
            public void a(String str3) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(str3);
                }
            }

            @Override
            public void a(String str3, int i, int i2, String str4, Throwable th) {
                super.a(str3, i, i2, str4, th);
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(i, i2, str4, th);
                }
            }
        });
    }

    public void a(String str, RequestParams requestParams) {
        Map<String, String> paramsMap = requestParams.getParamsMap();
        if (o.a(paramsMap)) {
            return;
        }
        HttpParams httpParams = new HttpParams();
        httpParams.putParams(paramsMap);
        a(false).a(true).a().b(10000).a(str, httpParams, new com.mgtv.task.http.c<String>() {
            @Override
            public void b(String str2) {
            }

            @Override
            public void a(String str2) {
            }

            @Override
            public void a(@Nullable String str2, int i, int i2, @Nullable String str3, @Nullable Throwable th) {
                super.a(str2, i, i2, str3, th);
            }
        });
    }

    public void a(String str, Map<String, String> map) {
        HttpParams httpParamsA = b.a(map);
        if (httpParamsA != null) {
            a(false).a(true).a(str, httpParamsA, null);
        }
    }

    private m a(boolean z) {
        return z ? this.a : this.b;
    }

    public void a(String str, String str2, String str3) {
        if (str2 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
        HttpParams httpParams = new HttpParams();
        httpParams.putParams(map, HttpParams.Type.HEADER);
        httpParams.setMethod(str3);
        httpParams.setBodyJson(str2);
        httpParams.setContentTypeS(ShareTarget.ENCODING_TYPE_URL_ENCODED);
        a(false).a(true).a().b(10000).a(str, httpParams, new com.mgtv.task.http.c<String>() {
            @Override
            public void b(String str4) {
            }

            @Override
            public void a(String str4) {
            }

            @Override
            public boolean a() {
                return true;
            }

            @Override
            public void a(String str4, int i, int i2, String str5, Throwable th) {
                super.a(str4, i, i2, str5, th);
            }
        });
    }
}
