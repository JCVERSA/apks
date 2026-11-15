package com.google.net.cronet.okhttptransport;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.base.m;
import com.google.common.base.o;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.g3;
import com.google.common.util.concurrent.z;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Okio;
import okio.Source;
import org.chromium.net.UrlResponseInfo;

final class i {

    private static final ImmutableSet f31982a = ImmutableSet.of(TtmlNode.TAG_BR, "deflate", "gzip", "x-gzip");

    private static final o f31983b = o.f(',').k().e();

    i() {
    }

    private static Protocol a(String str) {
        if (str.contains("quic")) {
            return Protocol.QUIC;
        }
        if (str.contains("h3")) {
            return Protocol.QUIC;
        }
        if (str.contains("spdy")) {
            return Protocol.HTTP_2;
        }
        if (str.contains("h2")) {
            return Protocol.HTTP_2;
        }
        return str.contains("http1.1") ? Protocol.HTTP_1_1 : Protocol.HTTP_1_0;
    }

    private static ResponseBody b(Request request, int i10, String str, String str2, Source source) throws ProtocolException {
        long j10;
        if (request.method().equals("HEAD")) {
            j10 = 0;
        } else {
            j10 = -1;
            if (str2 != null) {
                try {
                    j10 = Long.parseLong(str2);
                } catch (NumberFormatException unused) {
                }
            }
        }
        if ((i10 != 204 && i10 != 205) || j10 <= 0) {
            return ResponseBody.create(str != null ? MediaType.parse(str) : null, j10, Okio.buffer(source));
        }
        throw new ProtocolException("HTTP " + i10 + " had non-zero Content-Length: " + str2);
    }

    private static Object c(Future future) throws IOException {
        try {
            return z.a(future);
        } catch (ExecutionException e10) {
            throw new IOException(e10);
        }
    }

    private static String d(String str, UrlResponseInfo urlResponseInfo) {
        List<String> list = urlResponseInfo.getAllHeaders().get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) g3.g(list);
    }

    private static Object e(Map map, Object obj, Object obj2) {
        Object obj3 = map.get(obj);
        return obj3 == null ? m.o(obj2) : obj3;
    }

    Response f(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        Response.Builder builder = new Response.Builder();
        UrlResponseInfo urlResponseInfo = (UrlResponseInfo) c(okHttpBridgeRequestCallback.g());
        String strD = d(HttpHeaders.CONTENT_TYPE, urlResponseInfo);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) e(urlResponseInfo.getAllHeaders(), HttpHeaders.CONTENT_ENCODING, Collections.emptyList())).iterator();
        while (it.hasNext()) {
            g3.a(arrayList, f31983b.h((String) it.next()));
        }
        boolean z10 = arrayList.isEmpty() || !f31982a.containsAll(arrayList);
        builder.request(request).code(urlResponseInfo.getHttpStatusCode()).message(urlResponseInfo.getHttpStatusText()).protocol(a(urlResponseInfo.getNegotiatedProtocol())).body(b(request, urlResponseInfo.getHttpStatusCode(), strD, z10 ? d(HttpHeaders.CONTENT_LENGTH, urlResponseInfo) : null, (Source) c(okHttpBridgeRequestCallback.f())));
        for (Map.Entry<String, String> entry : urlResponseInfo.getAllHeadersAsList()) {
            if (z10 || (!com.google.common.base.a.a(entry.getKey(), HttpHeaders.CONTENT_LENGTH) && !com.google.common.base.a.a(entry.getKey(), HttpHeaders.CONTENT_ENCODING))) {
                builder.addHeader(entry.getKey(), entry.getValue());
            }
        }
        return builder.build();
    }
}
