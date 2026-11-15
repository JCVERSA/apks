package com.android.net.toolbox;

import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

@Deprecated
public final class f implements i {
    protected final HttpClient a;

    public static final class a extends HttpEntityEnclosingRequestBase {
        public a() {
        }

        @Override
        public final String getMethod() {
            return "PATCH";
        }

        public a(String str) {
            setURI(URI.create(str));
        }
    }

    public f(HttpClient httpClient) {
        this.a = httpClient;
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, com.android.net.n<?> nVar) {
        byte[] bArrH = nVar.h();
        if (bArrH != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(bArrH));
        }
    }

    @Override
    public final HttpResponse b(com.android.net.n<?> nVar, Map<String, String> map) {
        HttpUriRequest httpGet;
        HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase;
        switch (nVar.a) {
            case -1:
                byte[] bArrE = nVar.e();
                if (bArrE != null) {
                    HttpPost httpPost = new HttpPost(nVar.b);
                    httpPost.addHeader("Content-Type", nVar.d());
                    httpPost.setEntity(new ByteArrayEntity(bArrE));
                    httpGet = httpPost;
                } else {
                    httpGet = new HttpGet(nVar.b);
                }
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params = httpGet.getParams();
                int iJ = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params, 5000);
                HttpConnectionParams.setSoTimeout(params, iJ);
                return this.a.execute(httpGet);
            case 0:
                httpGet = new HttpGet(nVar.b);
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params2 = httpGet.getParams();
                int iJ2 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params2, 5000);
                HttpConnectionParams.setSoTimeout(params2, iJ2);
                return this.a.execute(httpGet);
            case 1:
                HttpPost httpPost2 = new HttpPost(nVar.b);
                httpPost2.addHeader("Content-Type", nVar.g());
                httpEntityEnclosingRequestBase = httpPost2;
                a(httpEntityEnclosingRequestBase, nVar);
                httpGet = httpEntityEnclosingRequestBase;
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params3 = httpGet.getParams();
                int iJ3 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params3, 5000);
                HttpConnectionParams.setSoTimeout(params3, iJ3);
                return this.a.execute(httpGet);
            case 2:
                HttpPut httpPut = new HttpPut(nVar.b);
                httpPut.addHeader("Content-Type", nVar.g());
                httpEntityEnclosingRequestBase = httpPut;
                a(httpEntityEnclosingRequestBase, nVar);
                httpGet = httpEntityEnclosingRequestBase;
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params4 = httpGet.getParams();
                int iJ4 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params4, 5000);
                HttpConnectionParams.setSoTimeout(params4, iJ4);
                return this.a.execute(httpGet);
            case 3:
                httpGet = new HttpDelete(nVar.b);
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params5 = httpGet.getParams();
                int iJ5 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params5, 5000);
                HttpConnectionParams.setSoTimeout(params5, iJ5);
                return this.a.execute(httpGet);
            case 4:
                httpGet = new HttpHead(nVar.b);
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params6 = httpGet.getParams();
                int iJ6 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params6, 5000);
                HttpConnectionParams.setSoTimeout(params6, iJ6);
                return this.a.execute(httpGet);
            case 5:
                httpGet = new HttpOptions(nVar.b);
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params7 = httpGet.getParams();
                int iJ7 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params7, 5000);
                HttpConnectionParams.setSoTimeout(params7, iJ7);
                return this.a.execute(httpGet);
            case 6:
                httpGet = new HttpTrace(nVar.b);
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params8 = httpGet.getParams();
                int iJ8 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params8, 5000);
                HttpConnectionParams.setSoTimeout(params8, iJ8);
                return this.a.execute(httpGet);
            case 7:
                a aVar = new a(nVar.b);
                aVar.addHeader("Content-Type", nVar.g());
                httpEntityEnclosingRequestBase = aVar;
                a(httpEntityEnclosingRequestBase, nVar);
                httpGet = httpEntityEnclosingRequestBase;
                a(httpGet, map);
                a(httpGet, nVar.c());
                HttpParams params9 = httpGet.getParams();
                int iJ9 = nVar.j();
                HttpConnectionParams.setConnectionTimeout(params9, 5000);
                HttpConnectionParams.setSoTimeout(params9, iJ9);
                return this.a.execute(httpGet);
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }
}
