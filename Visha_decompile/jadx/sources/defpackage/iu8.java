package defpackage;

import com.cloud.hisavana.protocol.okhttptransport.OkHttpBridgeRequestCallback;
import com.google.common.collect.ImmutableSet;
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

public final class iu8 {
    public static final ImmutableSet a = ImmutableSet.of("br", "deflate", "gzip", "x-gzip");
    public static final hv9 b = hv9.f(',').k().e();

    public static Protocol a(String str) {
        if (!str.contains("quic") && !str.contains("h3")) {
            if (!str.contains("spdy") && !str.contains("h2")) {
                return str.contains("http/1.1") ? Protocol.HTTP_1_1 : Protocol.HTTP_1_0;
            }
            return Protocol.HTTP_2;
        }
        return Protocol.QUIC;
    }

    public static Response.Builder b(Request request, UrlResponseInfo urlResponseInfo, Source source) {
        Response.Builder builder = new Response.Builder();
        String strE = e("Content-Type", urlResponseInfo);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) f(urlResponseInfo.getAllHeaders(), "Content-Encoding", Collections.emptyList())).iterator();
        while (it.hasNext()) {
            v55.a(arrayList, b.h((String) it.next()));
        }
        boolean z = arrayList.isEmpty() || !a.containsAll(arrayList);
        ResponseBody responseBodyC = source != null ? c(request, urlResponseInfo.getHttpStatusCode(), strE, z ? e("Content-Length", urlResponseInfo) : null, source) : null;
        builder.request(request).code(urlResponseInfo.getHttpStatusCode()).message(urlResponseInfo.getHttpStatusText()).protocol(a(urlResponseInfo.getNegotiatedProtocol()));
        if (responseBodyC != null) {
            builder.body(responseBodyC);
        }
        for (Map.Entry<String, String> entry : urlResponseInfo.getAllHeadersAsList()) {
            if (z || (!ui.a(entry.getKey(), "Content-Length") && !ui.a(entry.getKey(), "Content-Encoding"))) {
                builder.addHeader(entry.getKey(), entry.getValue());
            }
        }
        return builder;
    }

    public static ResponseBody c(Request request, int i, String str, String str2, Source source) throws ProtocolException {
        long j;
        if (request.method().equals("HEAD")) {
            j = 0;
        } else {
            j = -1;
            if (str2 != null) {
                try {
                    j = Long.parseLong(str2);
                } catch (NumberFormatException unused) {
                }
            }
        }
        if ((i != 204 && i != 205) || j <= 0) {
            return ResponseBody.create(str != null ? MediaType.parse(str) : null, j, Okio.buffer(source));
        }
        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + str2);
    }

    public static Object d(Future future) throws IOException {
        try {
            return wfb.a(future);
        } catch (ExecutionException e) {
            throw new IOException(e);
        }
    }

    public static String e(String str, UrlResponseInfo urlResponseInfo) {
        List<String> list = urlResponseInfo.getAllHeaders().get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) v55.g(list);
    }

    public static Object f(Map map, Object obj, Object obj2) {
        Object obj3 = map.get(obj);
        return obj3 == null ? xd8.o(obj2) : obj3;
    }

    public Response g(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        UrlResponseInfo urlResponseInfo = (UrlResponseInfo) d(okHttpBridgeRequestCallback.g());
        Response.Builder builderB = b(request, urlResponseInfo, (Source) d(okHttpBridgeRequestCallback.f()));
        List listH = okHttpBridgeRequestCallback.h();
        List<String> urlChain = urlResponseInfo.getUrlChain();
        if (!listH.isEmpty()) {
            xd8.e(urlChain.size() == listH.size() + 1, "The number of redirects should be consistent across URLs and headers!");
            Response responseBuild = null;
            for (int i = 0; i < listH.size(); i++) {
                responseBuild = b(request.newBuilder().url(urlChain.get(i)).build(), (UrlResponseInfo) listH.get(i), null).priorResponse(responseBuild).build();
            }
            builderB.request(request.newBuilder().url((String) v55.g(urlChain)).build()).priorResponse(responseBuild);
        }
        return builderB.build();
    }
}
