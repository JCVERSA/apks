package com.android.net.toolbox;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectTimeoutException;

final class a extends b {
    private final i a;

    public a(i iVar) {
        this.a = iVar;
    }

    @Override
    public final h a(com.android.net.n<?> nVar, Map<String, String> map) throws IOException {
        try {
            HttpResponse httpResponseB = this.a.b(nVar, map);
            int statusCode = httpResponseB.getStatusLine().getStatusCode();
            Header[] allHeaders = httpResponseB.getAllHeaders();
            ArrayList arrayList = new ArrayList(allHeaders.length);
            for (Header header : allHeaders) {
                arrayList.add(new com.android.net.g(header.getName(), header.getValue()));
            }
            if (httpResponseB.getEntity() == null) {
                return new h(statusCode, arrayList);
            }
            long contentLength = httpResponseB.getEntity().getContentLength();
            if (((int) contentLength) == contentLength) {
                return new h(statusCode, arrayList, (int) httpResponseB.getEntity().getContentLength(), httpResponseB.getEntity().getContent());
            }
            throw new IOException("Response too large: ".concat(String.valueOf(contentLength)));
        } catch (ConnectTimeoutException e) {
            throw new SocketTimeoutException(e.getMessage());
        }
    }
}
