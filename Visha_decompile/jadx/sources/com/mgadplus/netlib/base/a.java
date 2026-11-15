package com.mgadplus.netlib.base;

import android.os.Looper;
import android.text.TextUtils;
import com.lzy.okgo.model.HttpHeaders;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class a {
    private static OkHttpClient a;
    private static C0157a b;
    private static String[] c = new String[0];

    public static class C0157a {
        private CookieJar e;
        private ArrayList<Interceptor> a = new ArrayList<>();
        private HashMap<String, String> b = new HashMap<>();
        private HashMap<String, String> c = new HashMap<>();
        private String d = "okhttp/imgotv";
        private boolean f = true;

        public String a() {
            return this.d;
        }

        public CookieJar b() {
            return this.e;
        }

        public ArrayList<Interceptor> c() {
            return this.a;
        }

        public void a(String str) {
            this.d = str;
        }

        public C0157a a(Interceptor interceptor) {
            this.a.add(interceptor);
            return this;
        }

        public C0157a a(HashMap<String, String> map) {
            this.c = map;
            return this;
        }
    }

    public static void a() {
        HashMap<String, String> map = new HashMap<>();
        C0157a c0157a = new C0157a();
        c0157a.a(map);
        c0157a.a(com.mgmi.f.f.j());
        c0157a.a(new Interceptor() {
            @Override
            public Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                String strHost = request.url().host();
                h hVarA = h.a();
                Request.Builder builderNewBuilder = request.newBuilder();
                String strA = hVarA.a(strHost);
                if (strA != null) {
                    builderNewBuilder.header(HttpHeaders.HEAD_KEY_COOKIE, strA);
                    request = builderNewBuilder.build();
                }
                Response responseProceed = chain.proceed(request);
                hVarA.a(strHost, responseProceed.headers());
                return responseProceed;
            }
        });
        a(c0157a);
    }

    public static OkHttpClient b() {
        return a;
    }

    public static void a(final C0157a c0157a) {
        if (Looper.getMainLooper() == Looper.myLooper() && a == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            if (c0157a != null) {
                if (c0157a.c() != null) {
                    Iterator<Interceptor> it = c0157a.c().iterator();
                    while (it.hasNext()) {
                        builder.addInterceptor(it.next());
                    }
                }
                builder.addInterceptor(new Interceptor() {
                    @Override
                    public Response intercept(Interceptor.Chain chain) throws IOException {
                        Request request = chain.request();
                        String strA = c0157a.a();
                        if (TextUtils.isEmpty(strA) || !TextUtils.isEmpty(request.header("User-Agent"))) {
                            return chain.proceed(request);
                        }
                        Request.Builder builderNewBuilder = request.newBuilder();
                        builderNewBuilder.addHeader("User-Agent", strA);
                        return chain.proceed(builderNewBuilder.build());
                    }
                });
                if (c0157a.b() != null) {
                    builder.cookieJar(c0157a.b());
                }
                b = c0157a;
            }
            a = builder.build();
        }
    }
}
