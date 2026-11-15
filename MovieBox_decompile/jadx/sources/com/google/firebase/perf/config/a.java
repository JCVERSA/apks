package com.google.firebase.perf.config;

import android.content.Context;

public class a {

    private static final uc.a f31402d = uc.a.e();

    private static volatile a f31403e;

    private final RemoteConfigManager f31404a;

    private com.google.firebase.perf.util.d f31405b;

    private w f31406c;

    public a(RemoteConfigManager remoteConfigManager, com.google.firebase.perf.util.d dVar, w wVar) {
        this.f31404a = remoteConfigManager == null ? RemoteConfigManager.getInstance() : remoteConfigManager;
        this.f31405b = dVar == null ? new com.google.firebase.perf.util.d() : dVar;
        this.f31406c = wVar == null ? w.e() : wVar;
    }

    private boolean H(long j10) {
        return j10 >= 0;
    }

    private boolean I(String str) {
        if (str.trim().isEmpty()) {
            return false;
        }
        for (String str2 : str.split(";")) {
            if (str2.trim().equals(rc.a.f70944b)) {
                return true;
            }
        }
        return false;
    }

    private boolean J(long j10) {
        return j10 >= 0;
    }

    private boolean L(double d10) {
        return 0.0d <= d10 && d10 <= 1.0d;
    }

    private boolean M(long j10) {
        return j10 > 0;
    }

    private boolean N(long j10) {
        return j10 > 0;
    }

    private com.google.firebase.perf.util.e b(u uVar) {
        return this.f31406c.b(uVar.a());
    }

    private com.google.firebase.perf.util.e c(u uVar) {
        return this.f31406c.c(uVar.a());
    }

    private com.google.firebase.perf.util.e d(u uVar) {
        return this.f31406c.f(uVar.a());
    }

    private com.google.firebase.perf.util.e e(u uVar) {
        return this.f31406c.g(uVar.a());
    }

    public static synchronized a g() {
        try {
            if (f31403e == null) {
                f31403e = new a(null, null, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31403e;
    }

    private boolean k() {
        k kVarE = k.e();
        com.google.firebase.perf.util.e eVarU = u(kVarE);
        if (!eVarU.d()) {
            com.google.firebase.perf.util.e eVarB = b(kVarE);
            return eVarB.d() ? ((Boolean) eVarB.c()).booleanValue() : kVarE.d().booleanValue();
        }
        if (this.f31404a.isLastFetchFailed()) {
            return false;
        }
        this.f31406c.m(kVarE.a(), ((Boolean) eVarU.c()).booleanValue());
        return ((Boolean) eVarU.c()).booleanValue();
    }

    private boolean l() {
        j jVarE = j.e();
        com.google.firebase.perf.util.e eVarX = x(jVarE);
        if (eVarX.d()) {
            this.f31406c.l(jVarE.a(), (String) eVarX.c());
            return I((String) eVarX.c());
        }
        com.google.firebase.perf.util.e eVarE = e(jVarE);
        return eVarE.d() ? I((String) eVarE.c()) : I(jVarE.d());
    }

    private com.google.firebase.perf.util.e n(u uVar) {
        return this.f31405b.b(uVar.b());
    }

    private com.google.firebase.perf.util.e o(u uVar) {
        return this.f31405b.c(uVar.b());
    }

    private com.google.firebase.perf.util.e p(u uVar) {
        return this.f31405b.e(uVar.b());
    }

    private com.google.firebase.perf.util.e u(u uVar) {
        return this.f31404a.getBoolean(uVar.c());
    }

    private com.google.firebase.perf.util.e v(u uVar) {
        return this.f31404a.getDouble(uVar.c());
    }

    private com.google.firebase.perf.util.e w(u uVar) {
        return this.f31404a.getLong(uVar.c());
    }

    private com.google.firebase.perf.util.e x(u uVar) {
        return this.f31404a.getString(uVar.c());
    }

    public long A() {
        n nVarE = n.e();
        com.google.firebase.perf.util.e eVarP = p(nVarE);
        if (eVarP.d() && M(((Long) eVarP.c()).longValue())) {
            return ((Long) eVarP.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarW = w(nVarE);
        if (eVarW.d() && M(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(nVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(nVarE);
        return (eVarD.d() && M(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : nVarE.d().longValue();
    }

    public long B() {
        o oVarE = o.e();
        com.google.firebase.perf.util.e eVarP = p(oVarE);
        if (eVarP.d() && J(((Long) eVarP.c()).longValue())) {
            return ((Long) eVarP.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarW = w(oVarE);
        if (eVarW.d() && J(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(oVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(oVarE);
        return (eVarD.d() && J(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : oVarE.d().longValue();
    }

    public long C() {
        p pVarF = p.f();
        com.google.firebase.perf.util.e eVarP = p(pVarF);
        if (eVarP.d() && J(((Long) eVarP.c()).longValue())) {
            return ((Long) eVarP.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarW = w(pVarF);
        if (eVarW.d() && J(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(pVarF.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(pVarF);
        if (eVarD.d() && J(((Long) eVarD.c()).longValue())) {
            return ((Long) eVarD.c()).longValue();
        }
        return this.f31404a.isLastFetchFailed() ? pVarF.e().longValue() : pVarF.d().longValue();
    }

    public double D() {
        q qVarF = q.f();
        com.google.firebase.perf.util.e eVarO = o(qVarF);
        if (eVarO.d()) {
            double dDoubleValue = ((Double) eVarO.c()).doubleValue() / 100.0d;
            if (L(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        com.google.firebase.perf.util.e eVarV = v(qVarF);
        if (eVarV.d() && L(((Double) eVarV.c()).doubleValue())) {
            this.f31406c.j(qVarF.a(), ((Double) eVarV.c()).doubleValue());
            return ((Double) eVarV.c()).doubleValue();
        }
        com.google.firebase.perf.util.e eVarC = c(qVarF);
        if (eVarC.d() && L(((Double) eVarC.c()).doubleValue())) {
            return ((Double) eVarC.c()).doubleValue();
        }
        return this.f31404a.isLastFetchFailed() ? qVarF.e().doubleValue() : qVarF.d().doubleValue();
    }

    public long E() {
        r rVarE = r.e();
        com.google.firebase.perf.util.e eVarW = w(rVarE);
        if (eVarW.d() && H(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(rVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(rVarE);
        return (eVarD.d() && H(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : rVarE.d().longValue();
    }

    public long F() {
        s sVarE = s.e();
        com.google.firebase.perf.util.e eVarW = w(sVarE);
        if (eVarW.d() && H(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(sVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(sVarE);
        return (eVarD.d() && H(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : sVarE.d().longValue();
    }

    public double G() {
        t tVarF = t.f();
        com.google.firebase.perf.util.e eVarV = v(tVarF);
        if (eVarV.d() && L(((Double) eVarV.c()).doubleValue())) {
            this.f31406c.j(tVarF.a(), ((Double) eVarV.c()).doubleValue());
            return ((Double) eVarV.c()).doubleValue();
        }
        com.google.firebase.perf.util.e eVarC = c(tVarF);
        if (eVarC.d() && L(((Double) eVarC.c()).doubleValue())) {
            return ((Double) eVarC.c()).doubleValue();
        }
        return this.f31404a.isLastFetchFailed() ? tVarF.e().doubleValue() : tVarF.d().doubleValue();
    }

    public boolean K() {
        Boolean boolJ = j();
        return (boolJ == null || boolJ.booleanValue()) && m();
    }

    public void O(Context context) {
        f31402d.i(com.google.firebase.perf.util.k.b(context));
        this.f31406c.i(context);
    }

    public void P(com.google.firebase.perf.util.d dVar) {
        this.f31405b = dVar;
    }

    public String a() {
        String strF;
        ConfigurationConstants$LogSourceName configurationConstants$LogSourceNameE = ConfigurationConstants$LogSourceName.e();
        if (rc.a.f70943a.booleanValue()) {
            return configurationConstants$LogSourceNameE.d();
        }
        String strC = configurationConstants$LogSourceNameE.c();
        long jLongValue = strC != null ? ((Long) this.f31404a.getRemoteConfigValueOrDefault(strC, -1L)).longValue() : -1L;
        String strA = configurationConstants$LogSourceNameE.a();
        if (!ConfigurationConstants$LogSourceName.g(jLongValue) || (strF = ConfigurationConstants$LogSourceName.f(jLongValue)) == null) {
            com.google.firebase.perf.util.e eVarE = e(configurationConstants$LogSourceNameE);
            return eVarE.d() ? (String) eVarE.c() : configurationConstants$LogSourceNameE.d();
        }
        this.f31406c.l(strA, strF);
        return strF;
    }

    public double f() {
        e eVarE = e.e();
        com.google.firebase.perf.util.e eVarO = o(eVarE);
        if (eVarO.d()) {
            double dDoubleValue = ((Double) eVarO.c()).doubleValue() / 100.0d;
            if (L(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        com.google.firebase.perf.util.e eVarV = v(eVarE);
        if (eVarV.d() && L(((Double) eVarV.c()).doubleValue())) {
            this.f31406c.j(eVarE.a(), ((Double) eVarV.c()).doubleValue());
            return ((Double) eVarV.c()).doubleValue();
        }
        com.google.firebase.perf.util.e eVarC = c(eVarE);
        return (eVarC.d() && L(((Double) eVarC.c()).doubleValue())) ? ((Double) eVarC.c()).doubleValue() : eVarE.d().doubleValue();
    }

    public boolean h() {
        d dVarE = d.e();
        com.google.firebase.perf.util.e eVarN = n(dVarE);
        if (eVarN.d()) {
            return ((Boolean) eVarN.c()).booleanValue();
        }
        com.google.firebase.perf.util.e eVarU = u(dVarE);
        if (eVarU.d()) {
            this.f31406c.m(dVarE.a(), ((Boolean) eVarU.c()).booleanValue());
            return ((Boolean) eVarU.c()).booleanValue();
        }
        com.google.firebase.perf.util.e eVarB = b(dVarE);
        return eVarB.d() ? ((Boolean) eVarB.c()).booleanValue() : dVarE.d().booleanValue();
    }

    public Boolean i() {
        b bVarE = b.e();
        com.google.firebase.perf.util.e eVarN = n(bVarE);
        return eVarN.d() ? (Boolean) eVarN.c() : bVarE.d();
    }

    public Boolean j() {
        if (i().booleanValue()) {
            return Boolean.FALSE;
        }
        c cVarD = c.d();
        com.google.firebase.perf.util.e eVarB = b(cVarD);
        if (eVarB.d()) {
            return (Boolean) eVarB.c();
        }
        com.google.firebase.perf.util.e eVarN = n(cVarD);
        if (eVarN.d()) {
            return (Boolean) eVarN.c();
        }
        return null;
    }

    public boolean m() {
        return k() && !l();
    }

    public long q() {
        f fVarE = f.e();
        com.google.firebase.perf.util.e eVarW = w(fVarE);
        if (eVarW.d() && H(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(fVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(fVarE);
        return (eVarD.d() && H(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : fVarE.d().longValue();
    }

    public long r() {
        g gVarE = g.e();
        com.google.firebase.perf.util.e eVarW = w(gVarE);
        if (eVarW.d() && H(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(gVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(gVarE);
        return (eVarD.d() && H(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : gVarE.d().longValue();
    }

    public double s() {
        h hVarF = h.f();
        com.google.firebase.perf.util.e eVarV = v(hVarF);
        if (eVarV.d() && L(((Double) eVarV.c()).doubleValue())) {
            this.f31406c.j(hVarF.a(), ((Double) eVarV.c()).doubleValue());
            return ((Double) eVarV.c()).doubleValue();
        }
        com.google.firebase.perf.util.e eVarC = c(hVarF);
        if (eVarC.d() && L(((Double) eVarC.c()).doubleValue())) {
            return ((Double) eVarC.c()).doubleValue();
        }
        return this.f31404a.isLastFetchFailed() ? hVarF.e().doubleValue() : hVarF.d().doubleValue();
    }

    public long t() {
        i iVarE = i.e();
        com.google.firebase.perf.util.e eVarW = w(iVarE);
        if (eVarW.d() && N(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(iVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(iVarE);
        return (eVarD.d() && N(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : iVarE.d().longValue();
    }

    public long y() {
        l lVarE = l.e();
        com.google.firebase.perf.util.e eVarP = p(lVarE);
        if (eVarP.d() && J(((Long) eVarP.c()).longValue())) {
            return ((Long) eVarP.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarW = w(lVarE);
        if (eVarW.d() && J(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(lVarE.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(lVarE);
        return (eVarD.d() && J(((Long) eVarD.c()).longValue())) ? ((Long) eVarD.c()).longValue() : lVarE.d().longValue();
    }

    public long z() {
        m mVarF = m.f();
        com.google.firebase.perf.util.e eVarP = p(mVarF);
        if (eVarP.d() && J(((Long) eVarP.c()).longValue())) {
            return ((Long) eVarP.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarW = w(mVarF);
        if (eVarW.d() && J(((Long) eVarW.c()).longValue())) {
            this.f31406c.k(mVarF.a(), ((Long) eVarW.c()).longValue());
            return ((Long) eVarW.c()).longValue();
        }
        com.google.firebase.perf.util.e eVarD = d(mVarF);
        if (eVarD.d() && J(((Long) eVarD.c()).longValue())) {
            return ((Long) eVarD.c()).longValue();
        }
        return this.f31404a.isLastFetchFailed() ? mVarF.e().longValue() : mVarF.d().longValue();
    }
}
