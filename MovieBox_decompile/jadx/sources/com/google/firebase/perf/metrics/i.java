package com.google.firebase.perf.metrics;

import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.v1.NetworkRequestMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import xc.k;

public final class i extends com.google.firebase.perf.application.b implements com.google.firebase.perf.session.a {

    private static final uc.a f31476i = uc.a.e();

    private final List f31477a;

    private final GaugeManager f31478b;

    private final k f31479c;

    private final NetworkRequestMetric.b f31480d;

    private final WeakReference f31481e;

    private String f31482f;

    private boolean f31483g;

    private boolean f31484h;

    private i(k kVar) {
        this(kVar, com.google.firebase.perf.application.a.b(), GaugeManager.getInstance());
    }

    public static i b(k kVar) {
        return new i(kVar);
    }

    private static boolean e(String str) {
        if (str.length() > 128) {
            return false;
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt > 127) {
                return false;
            }
        }
        return true;
    }

    private boolean hasStarted() {
        return this.f31480d.l();
    }

    private boolean isStopped() {
        return this.f31480d.n();
    }

    public NetworkRequestMetric a() {
        SessionManager.getInstance().unregisterForSessionUpdates(this.f31481e);
        unregisterForAppState();
        com.google.firebase.perf.v1.h[] hVarArrBuildAndSort = PerfSession.buildAndSort(getSessions());
        if (hVarArrBuildAndSort != null) {
            this.f31480d.d(Arrays.asList(hVarArrBuildAndSort));
        }
        NetworkRequestMetric networkRequestMetric = (NetworkRequestMetric) this.f31480d.build();
        if (!wc.f.c(this.f31482f)) {
            f31476i.a("Dropping network request from a 'User-Agent' that is not allowed");
            return networkRequestMetric;
        }
        if (this.f31483g) {
            if (this.f31484h) {
                f31476i.a("This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response");
            }
            return networkRequestMetric;
        }
        this.f31479c.B(networkRequestMetric, getAppState());
        this.f31483g = true;
        return networkRequestMetric;
    }

    public long c() {
        return this.f31480d.k();
    }

    public boolean d() {
        return this.f31480d.m();
    }

    public i f(String str) {
        NetworkRequestMetric.HttpMethod httpMethod;
        if (str != null) {
            NetworkRequestMetric.HttpMethod httpMethod2 = NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN;
            String upperCase = str.toUpperCase();
            upperCase.hashCode();
            switch (upperCase) {
                case "OPTIONS":
                    httpMethod = NetworkRequestMetric.HttpMethod.OPTIONS;
                    break;
                case "GET":
                    httpMethod = NetworkRequestMetric.HttpMethod.GET;
                    break;
                case "PUT":
                    httpMethod = NetworkRequestMetric.HttpMethod.PUT;
                    break;
                case "HEAD":
                    httpMethod = NetworkRequestMetric.HttpMethod.HEAD;
                    break;
                case "POST":
                    httpMethod = NetworkRequestMetric.HttpMethod.POST;
                    break;
                case "PATCH":
                    httpMethod = NetworkRequestMetric.HttpMethod.PATCH;
                    break;
                case "TRACE":
                    httpMethod = NetworkRequestMetric.HttpMethod.TRACE;
                    break;
                case "CONNECT":
                    httpMethod = NetworkRequestMetric.HttpMethod.CONNECT;
                    break;
                case "DELETE":
                    httpMethod = NetworkRequestMetric.HttpMethod.DELETE;
                    break;
                default:
                    httpMethod = NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN;
                    break;
            }
            this.f31480d.p(httpMethod);
        }
        return this;
    }

    public i g(int i10) {
        this.f31480d.q(i10);
        return this;
    }

    List getSessions() {
        List listUnmodifiableList;
        synchronized (this.f31477a) {
            try {
                ArrayList arrayList = new ArrayList();
                for (PerfSession perfSession : this.f31477a) {
                    if (perfSession != null) {
                        arrayList.add(perfSession);
                    }
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return listUnmodifiableList;
    }

    public void h() {
        this.f31484h = true;
    }

    public i i() {
        this.f31480d.r(NetworkRequestMetric.NetworkClientErrorReason.GENERIC_CLIENT_ERROR);
        return this;
    }

    public i j(long j10) {
        this.f31480d.s(j10);
        return this;
    }

    public i k(long j10) {
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f31481e);
        this.f31480d.o(j10);
        updateSession(perfSession);
        if (perfSession.isGaugeAndEventCollectionEnabled()) {
            this.f31478b.collectGaugeMetricOnce(perfSession.getTimer());
        }
        return this;
    }

    public i l(String str) {
        if (str == null) {
            this.f31480d.j();
            return this;
        }
        if (e(str)) {
            this.f31480d.t(str);
        } else {
            f31476i.j("The content type of the response is not a valid content-type:" + str);
        }
        return this;
    }

    public i m(long j10) {
        this.f31480d.u(j10);
        return this;
    }

    public i n(long j10) {
        this.f31480d.v(j10);
        return this;
    }

    public i o(long j10) {
        this.f31480d.w(j10);
        if (SessionManager.getInstance().perfSession().isGaugeAndEventCollectionEnabled()) {
            this.f31478b.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().getTimer());
        }
        return this;
    }

    public i p(long j10) {
        this.f31480d.x(j10);
        return this;
    }

    public i q(String str) {
        if (str != null) {
            this.f31480d.y(com.google.firebase.perf.util.k.e(com.google.firebase.perf.util.k.d(str), 2000));
        }
        return this;
    }

    public i r(String str) {
        this.f31482f = str;
        return this;
    }

    @Override
    public void updateSession(PerfSession perfSession) {
        if (perfSession == null) {
            f31476i.j("Unable to add new SessionId to the Network Trace. Continuing without it.");
        } else {
            if (!hasStarted() || isStopped()) {
                return;
            }
            this.f31477a.add(perfSession);
        }
    }

    public i(k kVar, com.google.firebase.perf.application.a aVar, GaugeManager gaugeManager) {
        super(aVar);
        this.f31480d = NetworkRequestMetric.R();
        this.f31481e = new WeakReference(this);
        this.f31479c = kVar;
        this.f31478b = gaugeManager;
        this.f31477a = Collections.synchronizedList(new ArrayList());
        registerForAppState();
    }
}
