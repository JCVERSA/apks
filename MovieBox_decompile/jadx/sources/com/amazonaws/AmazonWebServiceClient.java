package com.amazonaws;

import com.amazonaws.auth.RegionAwareSigner;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.HttpClient;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Classes;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class AmazonWebServiceClient {

    private static final Log f17652k = LogFactory.b(AmazonWebServiceClient.class);

    protected volatile URI f17653a;

    private volatile String f17654b;

    protected ClientConfiguration f17655c;

    protected AmazonHttpClient f17656d;

    protected final List f17657e = new CopyOnWriteArrayList();

    protected int f17658f;

    private volatile Signer f17659g;

    private volatile String f17660h;

    protected volatile String f17661i;

    private volatile Region f17662j;

    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f17655c = clientConfiguration;
        this.f17656d = new AmazonHttpClient(clientConfiguration, httpClient);
    }

    private String g() {
        int i10;
        String simpleName = Classes.childClassOf(AmazonWebServiceClient.class, this).getSimpleName();
        String serviceName = ServiceNameFactory.getServiceName(simpleName);
        if (serviceName != null) {
            return serviceName;
        }
        int iIndexOf = simpleName.indexOf("JavaClient");
        if (iIndexOf == -1 && (iIndexOf = simpleName.indexOf("Client")) == -1) {
            throw new IllegalStateException("Unrecognized suffix for the AWS http client class name " + simpleName);
        }
        int iIndexOf2 = simpleName.indexOf("Amazon");
        if (iIndexOf2 == -1) {
            iIndexOf2 = simpleName.indexOf("AWS");
            if (iIndexOf2 == -1) {
                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name " + simpleName);
            }
            i10 = 3;
        } else {
            i10 = 6;
        }
        if (iIndexOf2 < iIndexOf) {
            return StringUtils.b(simpleName.substring(iIndexOf2 + i10, iIndexOf));
        }
        throw new IllegalStateException("Unrecognized AWS http client class name " + simpleName);
    }

    private Signer h(String str, String str2, String str3, boolean z10) {
        String strE = this.f17655c.e();
        Signer signerB = strE == null ? SignerFactory.b(str, str2) : SignerFactory.c(strE, str);
        if (signerB instanceof RegionAwareSigner) {
            RegionAwareSigner regionAwareSigner = (RegionAwareSigner) signerB;
            if (str3 != null) {
                regionAwareSigner.c(str3);
            } else if (str2 != null && z10) {
                regionAwareSigner.c(str2);
            }
        }
        synchronized (this) {
            this.f17662j = Region.f(str2);
        }
        return signerB;
    }

    private Signer i(URI uri, String str, boolean z10) {
        if (uri == null) {
            throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
        }
        String strO = o();
        return h(strO, AwsHostNameUtils.a(uri.getHost(), strO), str, z10);
    }

    protected static boolean r() {
        return System.getProperty("com.amazonaws.sdk.enableRuntimeProfiling") != null;
    }

    private boolean s() {
        RequestMetricCollector requestMetricCollectorU = u();
        return requestMetricCollectorU != null && requestMetricCollectorU.b();
    }

    private URI x(String str) {
        if (!str.contains("://")) {
            str = this.f17655c.c().toString() + "://" + str;
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    protected final void j(AWSRequestMetrics aWSRequestMetrics, Request request, Response response) {
        k(aWSRequestMetrics, request, response, false);
    }

    protected final void k(AWSRequestMetrics aWSRequestMetrics, Request request, Response response, boolean z10) {
        if (request != null) {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.c().c();
            l(request).a(request, response);
        }
        if (z10) {
            aWSRequestMetrics.e();
        }
    }

    protected final RequestMetricCollector l(Request request) {
        RequestMetricCollector requestMetricCollector = request.l().getRequestMetricCollector();
        if (requestMetricCollector != null) {
            return requestMetricCollector;
        }
        RequestMetricCollector requestMetricCollectorN = n();
        return requestMetricCollectorN == null ? AwsSdkMetrics.getRequestMetricCollector() : requestMetricCollectorN;
    }

    public String m() {
        return this.f17661i;
    }

    public RequestMetricCollector n() {
        return this.f17656d.f();
    }

    protected String o() {
        if (this.f17660h == null) {
            synchronized (this) {
                try {
                    if (this.f17660h == null) {
                        this.f17660h = g();
                        return this.f17660h;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f17660h;
    }

    public Signer p(URI uri) {
        return i(uri, this.f17654b, true);
    }

    public final String q() {
        return this.f17654b;
    }

    protected final boolean t(AmazonWebServiceRequest amazonWebServiceRequest) {
        RequestMetricCollector requestMetricCollector = amazonWebServiceRequest.getRequestMetricCollector();
        if (requestMetricCollector == null || !requestMetricCollector.b()) {
            return s();
        }
        return true;
    }

    protected RequestMetricCollector u() {
        RequestMetricCollector requestMetricCollectorF = this.f17656d.f();
        return requestMetricCollectorF == null ? AwsSdkMetrics.getRequestMetricCollector() : requestMetricCollectorF;
    }

    public void v(String str) {
        URI uriX = x(str);
        Signer signerI = i(uriX, this.f17654b, false);
        synchronized (this) {
            this.f17653a = uriX;
            this.f17659g = signerI;
        }
    }

    public void w(Region region) {
        String strG;
        if (region == null) {
            throw new IllegalArgumentException("No region provided");
        }
        String strO = o();
        if (region.i(strO)) {
            strG = region.g(strO);
            int iIndexOf = strG.indexOf("://");
            if (iIndexOf >= 0) {
                strG = strG.substring(iIndexOf + 3);
            }
        } else {
            strG = String.format("%s.%s.%s", m(), region.d(), region.a());
        }
        URI uriX = x(strG);
        Signer signerH = h(strO, region.d(), this.f17654b, false);
        synchronized (this) {
            this.f17653a = uriX;
            this.f17659g = signerH;
        }
    }
}
