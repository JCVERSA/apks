package vc;

public class a extends e {

    private static final uc.a f73571b = uc.a.e();

    private final com.google.firebase.perf.v1.c f73572a;

    a(com.google.firebase.perf.v1.c cVar) {
        this.f73572a = cVar;
    }

    private boolean g() {
        com.google.firebase.perf.v1.c cVar = this.f73572a;
        if (cVar == null) {
            f73571b.j("ApplicationInfo is null");
            return false;
        }
        if (!cVar.s()) {
            f73571b.j("GoogleAppId is null");
            return false;
        }
        if (!this.f73572a.q()) {
            f73571b.j("AppInstanceId is null");
            return false;
        }
        if (!this.f73572a.r()) {
            f73571b.j("ApplicationProcessState is null");
            return false;
        }
        if (!this.f73572a.p()) {
            return true;
        }
        if (!this.f73572a.m().l()) {
            f73571b.j("AndroidAppInfo.packageName is null");
            return false;
        }
        if (this.f73572a.m().m()) {
            return true;
        }
        f73571b.j("AndroidAppInfo.sdkVersion is null");
        return false;
    }

    @Override
    public boolean c() {
        if (g()) {
            return true;
        }
        f73571b.j("ApplicationInfo is invalid");
        return false;
    }
}
