package com.android.net.toolbox;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public abstract class b implements i {
    public abstract h a(com.android.net.n<?> nVar, Map<String, String> map);

    @Override
    @Deprecated
    public final HttpResponse b(com.android.net.n<?> nVar, Map<String, String> map) {
        h hVarA = a(nVar, map);
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(new ProtocolVersion("HTTP", 1, 1), hVarA.a, ""));
        ArrayList arrayList = new ArrayList();
        for (com.android.net.g gVar : Collections.unmodifiableList(hVarA.b)) {
            arrayList.add(new BasicHeader(gVar.a, gVar.b));
        }
        basicHttpResponse.setHeaders((Header[]) arrayList.toArray(new Header[arrayList.size()]));
        InputStream inputStream = hVarA.d;
        if (inputStream != null) {
            BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
            basicHttpEntity.setContent(inputStream);
            basicHttpEntity.setContentLength(hVarA.c);
            basicHttpResponse.setEntity(basicHttpEntity);
        }
        return basicHttpResponse;
    }
}
