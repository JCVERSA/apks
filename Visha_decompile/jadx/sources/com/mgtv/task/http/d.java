package com.mgtv.task.http;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.just.agentweb.DefaultWebClient;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;
import okhttp3.ConnectionPool;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class d {
    public static OkHttpClient a;
    private static a b;
    private static h c;

    public static class a {
        private CookieJar e;
        private boolean f;
        private ArrayList<Interceptor> a = new ArrayList<>();
        private HashMap<String, String> b = new HashMap<>();
        private HashMap<String, String> c = new HashMap<>();
        private String d = "okhttp/imgotv";
        private boolean g = false;

        public CookieJar b() {
            return this.e;
        }

        public ArrayList<Interceptor> c() {
            return this.a;
        }

        public HashMap<String, String> d() {
            return this.c;
        }

        public void a(boolean z) {
            this.f = z;
        }

        public String a() {
            return this.d;
        }

        public a a(Interceptor interceptor) {
            this.a.add(interceptor);
            return this;
        }

        public a a(HashMap<String, String> map) {
            this.c = map;
            return this;
        }
    }

    public static void a(Context context, final a aVar) {
        if (a != null) {
            return;
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        if (aVar != null) {
            if (aVar.c() != null) {
                Iterator<Interceptor> it = aVar.c().iterator();
                while (it.hasNext()) {
                    builder.addInterceptor(it.next());
                }
            }
            builder.addInterceptor(new Interceptor() {
                @Override
                public Response intercept(Interceptor.Chain chain) throws IOException {
                    Request request = chain.request();
                    String strA = aVar.a();
                    if (TextUtils.isEmpty(strA) || !TextUtils.isEmpty(request.header("User-Agent"))) {
                        return chain.proceed(request);
                    }
                    Request.Builder builderNewBuilder = request.newBuilder();
                    builderNewBuilder.addHeader("User-Agent", strA);
                    return chain.proceed(builderNewBuilder.build());
                }
            });
            if (aVar.b() != null) {
                builder.cookieJar(aVar.b());
            }
            b = aVar;
            h hVarA = h.a(context);
            c = hVarA;
            builder.dns(hVarA);
            if (aVar.f) {
                builder.connectionPool(new ConnectionPool(5, 120L, TimeUnit.MINUTES));
            }
        }
        a = builder.build();
        Log.d("HttpClientUtil", "initClient   end");
    }

    public static a b() {
        return b;
    }

    @Nullable
    private static HttpURLConnection c(@NonNull String str) {
        try {
            return (HttpURLConnection) new URL(str).openConnection();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    private static HttpsURLConnection b(@NonNull String str) {
        try {
            return (HttpsURLConnection) new URL(str).openConnection();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static OkHttpClient a() {
        return a;
    }

    @Nullable
    public static HttpURLConnection a(@NonNull String str) {
        if (str.startsWith(DefaultWebClient.HTTP_SCHEME)) {
            return c(str);
        }
        if (str.startsWith("https://")) {
            return b(str);
        }
        return null;
    }
}
