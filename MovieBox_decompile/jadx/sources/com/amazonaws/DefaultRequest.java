package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class DefaultRequest<T> implements Request<T> {

    private String f17687a;

    private URI f17691e;

    private String f17692f;

    private final AmazonWebServiceRequest f17693g;

    private InputStream f17695i;

    private int f17696j;

    private AWSRequestMetrics f17697k;

    private String f17698l;

    private boolean f17688b = false;

    private final Map f17689c = new LinkedHashMap();

    private final Map f17690d = new HashMap();

    private HttpMethodName f17694h = HttpMethodName.POST;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.f17692f = str;
        this.f17693g = amazonWebServiceRequest;
    }

    @Override
    public void a(InputStream inputStream) {
        this.f17695i = inputStream;
    }

    @Override
    public void addHeader(String str, String str2) {
        this.f17690d.put(str, str2);
    }

    @Override
    public AWSRequestMetrics b() {
        return this.f17697k;
    }

    @Override
    public void c(String str) {
        this.f17687a = str;
    }

    @Override
    public String d() {
        return this.f17692f;
    }

    @Override
    public void e(int i10) {
        this.f17696j = i10;
    }

    @Override
    public int f() {
        return this.f17696j;
    }

    @Override
    public void g(String str, String str2) {
        this.f17689c.put(str, str2);
    }

    @Override
    public InputStream getContent() {
        return this.f17695i;
    }

    @Override
    public Map getHeaders() {
        return this.f17690d;
    }

    @Override
    public Map getParameters() {
        return this.f17689c;
    }

    @Override
    public void h(AWSRequestMetrics aWSRequestMetrics) {
        if (this.f17697k != null) {
            throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
        }
        this.f17697k = aWSRequestMetrics;
    }

    @Override
    public void i(Map map) {
        this.f17690d.clear();
        this.f17690d.putAll(map);
    }

    @Override
    public String j() {
        return this.f17698l;
    }

    @Override
    public boolean k() {
        return this.f17688b;
    }

    @Override
    public AmazonWebServiceRequest l() {
        return this.f17693g;
    }

    @Override
    public HttpMethodName m() {
        return this.f17694h;
    }

    @Override
    public void n(boolean z10) {
        this.f17688b = z10;
    }

    @Override
    public void o(HttpMethodName httpMethodName) {
        this.f17694h = httpMethodName;
    }

    @Override
    public String p() {
        return this.f17687a;
    }

    @Override
    public void q(Map map) {
        this.f17689c.clear();
        this.f17689c.putAll(map);
    }

    @Override
    public URI r() {
        return this.f17691e;
    }

    @Override
    public void s(URI uri) {
        this.f17691e = uri;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m());
        sb2.append(" ");
        sb2.append(r());
        sb2.append(" ");
        String strP = p();
        if (strP == null) {
            sb2.append("/");
        } else {
            if (!strP.startsWith("/")) {
                sb2.append("/");
            }
            sb2.append(strP);
        }
        sb2.append(" ");
        if (!getParameters().isEmpty()) {
            sb2.append("Parameters: (");
            for (String str : getParameters().keySet()) {
                String str2 = (String) getParameters().get(str);
                sb2.append(str);
                sb2.append(": ");
                sb2.append(str2);
                sb2.append(", ");
            }
            sb2.append(") ");
        }
        if (!getHeaders().isEmpty()) {
            sb2.append("Headers: (");
            for (String str3 : getHeaders().keySet()) {
                String str4 = (String) getHeaders().get(str3);
                sb2.append(str3);
                sb2.append(": ");
                sb2.append(str4);
                sb2.append(", ");
            }
            sb2.append(") ");
        }
        return sb2.toString();
    }
}
