package defpackage;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.measurement.internal.e;

public final class roh extends boi {
    public static final Pair x = new Pair("", 0L);
    public SharedPreferences c;
    public nmh d;
    public final ikh e;
    public final ikh f;
    public final pnh g;
    public String h;
    public boolean i;
    public long j;
    public final ikh k;
    public final lih l;
    public final pnh m;
    public final lih n;
    public final ikh o;
    public boolean p;
    public final lih q;
    public final lih r;
    public final ikh s;
    public final pnh t;
    public final pnh u;
    public final ikh v;
    public final jjh w;

    public roh(e eVar) {
        super(eVar);
        this.k = new ikh(this, "session_timeout", 1800000L);
        this.l = new lih(this, "start_new_session", true);
        this.o = new ikh(this, "last_pause_time", 0L);
        this.m = new pnh(this, "non_personalized_ads", null);
        this.n = new lih(this, "allow_remote_dynamite", false);
        this.e = new ikh(this, "first_open_time", 0L);
        this.f = new ikh(this, "app_install_time", 0L);
        this.g = new pnh(this, "app_instance_id", null);
        this.q = new lih(this, "app_backgrounded", false);
        this.r = new lih(this, "deep_link_retrieval_complete", false);
        this.s = new ikh(this, "deep_link_retrieval_attempts", 0L);
        this.t = new pnh(this, "firebase_feature_rollouts", null);
        this.u = new pnh(this, "deferred_attribution_cache", null);
        this.v = new ikh(this, "deferred_attribution_cache_timestamp", 0L);
        this.w = new jjh(this, "default_event_parameters", null);
    }

    @Override
    public final void h() {
        SharedPreferences sharedPreferences = this.a.e().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.c = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.p = z;
        if (!z) {
            SharedPreferences.Editor editorEdit = this.c.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        this.a.z();
        this.d = new nmh(this, "health_monitor", Math.max(0L, ((Long) kwg.d.a(null)).longValue()), null);
    }

    @Override
    public final boolean i() {
        return true;
    }

    public final SharedPreferences n() {
        g();
        j();
        wd8.l(this.c);
        return this.c;
    }

    public final Pair o(String str) {
        g();
        long jElapsedRealtime = this.a.c().elapsedRealtime();
        String str2 = this.h;
        if (str2 != null && jElapsedRealtime < this.j) {
            return new Pair(str2, Boolean.valueOf(this.i));
        }
        this.j = jElapsedRealtime + this.a.z().m(str, kwg.c);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a.e());
            this.h = "";
            String id = advertisingIdInfo.getId();
            if (id != null) {
                this.h = id;
            }
            this.i = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e) {
            this.a.b().p().b("Unable to get advertising id", e);
            this.h = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(this.h, Boolean.valueOf(this.i));
    }

    public final uee p() {
        g();
        return uee.b(n().getString("consent_settings", "G1"));
    }

    public final Boolean q() {
        g();
        if (n().contains("measurement_enabled")) {
            return Boolean.valueOf(n().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final void r(Boolean bool) {
        g();
        SharedPreferences.Editor editorEdit = n().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
    }

    public final void s(boolean z) {
        g();
        this.a.b().u().b("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = n().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z);
        editorEdit.apply();
    }

    public final boolean t() {
        SharedPreferences sharedPreferences = this.c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    public final boolean u(long j) {
        return j - this.k.a() > this.o.a();
    }

    public final boolean v(int i) {
        return uee.i(i, n().getInt("consent_source", 100));
    }
}
