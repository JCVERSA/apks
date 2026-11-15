package vc;

import android.content.Context;
import com.google.firebase.perf.util.i;
import com.google.firebase.perf.v1.NetworkRequestMetric;
import java.net.URI;

final class c extends e {

    private static final uc.a f73574c = uc.a.e();

    private final NetworkRequestMetric f73575a;

    private final Context f73576b;

    c(NetworkRequestMetric networkRequestMetric, Context context) {
        this.f73576b = context;
        this.f73575a = networkRequestMetric;
    }

    private URI g(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e10) {
            f73574c.k("getResultUrl throws exception %s", e10.getMessage());
            return null;
        }
    }

    private boolean h(URI uri, Context context) {
        if (uri == null) {
            return false;
        }
        return i.a(uri, context);
    }

    private boolean i(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    private boolean j(String str) {
        return i(str);
    }

    private boolean k(String str) {
        return (str == null || i(str) || str.length() > 255) ? false : true;
    }

    private boolean m(int i10) {
        return i10 > 0;
    }

    private boolean n(long j10) {
        return j10 >= 0;
    }

    private boolean o(int i10) {
        return i10 == -1 || i10 > 0;
    }

    private boolean p(String str) {
        if (str == null) {
            return false;
        }
        return "http".equalsIgnoreCase(str) || "https".equalsIgnoreCase(str);
    }

    private boolean q(long j10) {
        return j10 >= 0;
    }

    private boolean r(String str) {
        return str == null;
    }

    @Override
    public boolean c() {
        if (j(this.f73575a.I())) {
            f73574c.j("URL is missing:" + this.f73575a.I());
            return false;
        }
        URI uriG = g(this.f73575a.I());
        if (uriG == null) {
            f73574c.j("URL cannot be parsed");
            return false;
        }
        if (!h(uriG, this.f73576b)) {
            f73574c.j("URL fails allowlist rule: " + uriG);
            return false;
        }
        if (!k(uriG.getHost())) {
            f73574c.j("URL host is null or invalid");
            return false;
        }
        if (!p(uriG.getScheme())) {
            f73574c.j("URL scheme is null or invalid");
            return false;
        }
        if (!r(uriG.getUserInfo())) {
            f73574c.j("URL user info is null");
            return false;
        }
        if (!o(uriG.getPort())) {
            f73574c.j("URL port is less than or equal to 0");
            return false;
        }
        if (!l(this.f73575a.K() ? this.f73575a.z() : null)) {
            f73574c.j("HTTP Method is null or invalid: " + this.f73575a.z());
            return false;
        }
        if (this.f73575a.L() && !m(this.f73575a.A())) {
            f73574c.j("HTTP ResponseCode is a negative value:" + this.f73575a.A());
            return false;
        }
        if (this.f73575a.M() && !n(this.f73575a.C())) {
            f73574c.j("Request Payload is a negative value:" + this.f73575a.C());
            return false;
        }
        if (this.f73575a.N() && !n(this.f73575a.E())) {
            f73574c.j("Response Payload is a negative value:" + this.f73575a.E());
            return false;
        }
        if (!this.f73575a.J() || this.f73575a.x() <= 0) {
            f73574c.j("Start time of the request is null, or zero, or a negative value:" + this.f73575a.x());
            return false;
        }
        if (this.f73575a.O() && !q(this.f73575a.F())) {
            f73574c.j("Time to complete the request is a negative value:" + this.f73575a.F());
            return false;
        }
        if (this.f73575a.Q() && !q(this.f73575a.H())) {
            f73574c.j("Time from the start of the request to the start of the response is null or a negative value:" + this.f73575a.H());
            return false;
        }
        if (this.f73575a.P() && this.f73575a.G() > 0) {
            if (this.f73575a.L()) {
                return true;
            }
            f73574c.j("Did not receive a HTTP Response Code");
            return false;
        }
        f73574c.j("Time from the start of the request to the end of the response is null, negative or zero:" + this.f73575a.G());
        return false;
    }

    boolean l(NetworkRequestMetric.HttpMethod httpMethod) {
        return (httpMethod == null || httpMethod == NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN) ? false : true;
    }
}
