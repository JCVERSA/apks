package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c9j;
import defpackage.nlh;
import defpackage.u2j;
import defpackage.w6j;
import defpackage.wd8;
import defpackage.x2j;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class h extends nlh {
    public volatile u2j c;
    public volatile u2j d;
    public u2j e;
    public final Map f;
    public Activity g;
    public volatile boolean h;
    public volatile u2j i;
    public u2j j;
    public boolean k;
    public final Object l;

    public h(e eVar) {
        super(eVar);
        this.l = new Object();
        this.f = new ConcurrentHashMap();
    }

    public static void v(h hVar, Bundle bundle, u2j u2jVar, u2j u2jVar2, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        hVar.n(u2jVar, u2jVar2, j, true, hVar.a.N().s0(null, "screen_view", bundle, null, false));
    }

    public final void A(Activity activity) {
        synchronized (this.l) {
            this.k = true;
            if (activity != this.g) {
                synchronized (this.l) {
                    this.g = activity;
                    this.h = false;
                }
                if (this.a.z().w()) {
                    this.i = null;
                    this.a.a().w(new zzir(this));
                }
            }
        }
        if (!this.a.z().w()) {
            this.c = this.i;
            this.a.a().w(new zzio(this));
        } else {
            F(activity, E(activity), false);
            b bVarY = this.a.y();
            bVarY.a.a().w(new zzc(bVarY, bVarY.a.c().elapsedRealtime()));
        }
    }

    public final void B(Activity activity, Bundle bundle) {
        u2j u2jVar;
        if (!this.a.z().w() || bundle == null || (u2jVar = (u2j) this.f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong(TtmlNode.ATTR_ID, u2jVar.c);
        bundle2.putString("name", u2jVar.a);
        bundle2.putString("referrer_name", u2jVar.b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        if (r5.length() <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
    
        if (r6.length() <= 100) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void C(Activity activity, String str, String str2) {
        if (!this.a.z().w()) {
            this.a.b().w().a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        u2j u2jVar = this.c;
        if (u2jVar == null) {
            this.a.b().w().a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.f.get(activity) == null) {
            this.a.b().w().a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = s(activity.getClass(), "Activity");
        }
        boolean zA = x2j.a(u2jVar.b, str2);
        boolean zA2 = x2j.a(u2jVar.a, str);
        if (zA && zA2) {
            this.a.b().w().a("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null) {
            if (str.length() > 0) {
                this.a.z();
            }
            this.a.b().w().b("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null) {
            if (str2.length() > 0) {
                this.a.z();
            }
            this.a.b().w().b("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        this.a.b().u().c("Setting current screen to name, class", str == null ? "null" : str, str2);
        u2j u2jVar2 = new u2j(str, str2, this.a.N().p0());
        this.f.put(activity, u2jVar2);
        F(activity, u2jVar2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
    
        if (r2 > 100) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        if (r4 > 100) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void D(Bundle bundle, long j) {
        String strS;
        synchronized (this.l) {
            try {
                if (!this.k) {
                    this.a.b().w().a("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String string = bundle.getString("screen_name");
                if (string != null) {
                    if (string.length() > 0) {
                        int length = string.length();
                        this.a.z();
                    }
                    this.a.b().w().b("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                    return;
                }
                String string2 = bundle.getString("screen_class");
                if (string2 != null) {
                    if (string2.length() > 0) {
                        int length2 = string2.length();
                        this.a.z();
                    }
                    this.a.b().w().b("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                    return;
                }
                if (string2 == null) {
                    Activity activity = this.g;
                    strS = activity != null ? s(activity.getClass(), "Activity") : "Activity";
                } else {
                    strS = string2;
                }
                u2j u2jVar = this.c;
                if (this.h && u2jVar != null) {
                    this.h = false;
                    boolean zA = x2j.a(u2jVar.b, strS);
                    boolean zA2 = x2j.a(u2jVar.a, string);
                    if (zA && zA2) {
                        this.a.b().w().a("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                this.a.b().u().c("Logging screen view with name, class", string == null ? "null" : string, strS == null ? "null" : strS);
                u2j u2jVar2 = this.c == null ? this.d : this.c;
                u2j u2jVar3 = new u2j(string, strS, this.a.N().p0(), true, j);
                this.c = u2jVar3;
                this.d = u2jVar2;
                this.i = u2jVar3;
                this.a.a().w(new zzim(this, bundle, u2jVar3, u2jVar2, this.a.c().elapsedRealtime()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final u2j E(Activity activity) {
        wd8.l(activity);
        u2j u2jVar = (u2j) this.f.get(activity);
        if (u2jVar == null) {
            u2j u2jVar2 = new u2j(null, s(activity.getClass(), "Activity"), this.a.N().p0());
            this.f.put(activity, u2jVar2);
            u2jVar = u2jVar2;
        }
        return this.i != null ? this.i : u2jVar;
    }

    public final void F(Activity activity, u2j u2jVar, boolean z) {
        u2j u2jVar2;
        u2j u2jVar3 = this.c == null ? this.d : this.c;
        if (u2jVar.b == null) {
            u2jVar2 = new u2j(u2jVar.a, activity != null ? s(activity.getClass(), "Activity") : null, u2jVar.c, u2jVar.e, u2jVar.f);
        } else {
            u2jVar2 = u2jVar;
        }
        this.d = this.c;
        this.c = u2jVar2;
        this.a.a().w(new zzin(this, u2jVar2, u2jVar3, this.a.c().elapsedRealtime(), z));
    }

    @Override
    public final boolean m() {
        return false;
    }

    public final void n(u2j u2jVar, u2j u2jVar2, long j, boolean z, Bundle bundle) {
        long j2;
        g();
        boolean z2 = false;
        boolean z3 = (u2jVar2 != null && u2jVar2.c == u2jVar.c && x2j.a(u2jVar2.b, u2jVar.b) && x2j.a(u2jVar2.a, u2jVar.a)) ? false : true;
        if (z && this.e != null) {
            z2 = true;
        }
        if (z3) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            c9j.x(u2jVar, bundle2, true);
            if (u2jVar2 != null) {
                String str = u2jVar2.a;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = u2jVar2.b;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", u2jVar2.c);
            }
            if (z2) {
                w6j w6jVar = this.a.M().e;
                long j3 = j - w6jVar.b;
                w6jVar.b = j;
                if (j3 > 0) {
                    this.a.N().v(bundle2, j3);
                }
            }
            if (!this.a.z().w()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = true != u2jVar.e ? TtmlNode.TEXT_EMPHASIS_AUTO : "app";
            long jCurrentTimeMillis = this.a.c().currentTimeMillis();
            if (u2jVar.e) {
                long j4 = u2jVar.f;
                if (j4 != 0) {
                    j2 = j4;
                }
                this.a.I().u(str3, "_vs", j2, bundle2);
            }
            j2 = jCurrentTimeMillis;
            this.a.I().u(str3, "_vs", j2, bundle2);
        }
        if (z2) {
            o(this.e, true, j);
        }
        this.e = u2jVar;
        if (u2jVar.e) {
            this.j = u2jVar;
        }
        this.a.L().t(u2jVar);
    }

    public final void o(u2j u2jVar, boolean z, long j) {
        this.a.y().m(this.a.c().elapsedRealtime());
        if (!this.a.M().e.d(u2jVar != null && u2jVar.d, z, j) || u2jVar == null) {
            return;
        }
        u2jVar.d = false;
    }

    public final u2j q() {
        return this.c;
    }

    public final u2j r(boolean z) {
        h();
        g();
        if (!z) {
            return this.e;
        }
        u2j u2jVar = this.e;
        return u2jVar != null ? u2jVar : this.j;
    }

    public final String s(Class cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] strArrSplit = canonicalName.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : "";
        int length2 = str2.length();
        this.a.z();
        if (length2 <= 100) {
            return str2;
        }
        this.a.z();
        return str2.substring(0, 100);
    }

    public final void x(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.a.z().w() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f.put(activity, new u2j(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong(TtmlNode.ATTR_ID)));
    }

    public final void y(Activity activity) {
        synchronized (this.l) {
            try {
                if (activity == this.g) {
                    this.g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.a.z().w()) {
            this.f.remove(activity);
        }
    }

    public final void z(Activity activity) {
        synchronized (this.l) {
            this.k = false;
            this.h = true;
        }
        long jElapsedRealtime = this.a.c().elapsedRealtime();
        if (!this.a.z().w()) {
            this.c = null;
            this.a.a().w(new zzip(this, jElapsedRealtime));
        } else {
            u2j u2jVarE = E(activity);
            this.d = this.c;
            this.c = null;
            this.a.a().w(new zziq(this, u2jVarE, jElapsedRealtime));
        }
    }
}
