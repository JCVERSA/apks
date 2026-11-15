package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public class g0 implements h0 {

    private static final Pattern f30355g = Pattern.compile("[^\\p{Alnum}]");

    private static final String f30356h = Pattern.quote("/");

    private final i0 f30357a;

    private final Context f30358b;

    private final String f30359c;

    private final lc.e f30360d;

    private final d0 f30361e;

    private h0.a f30362f;

    public g0(Context context, String str, lc.e eVar, d0 d0Var) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.f30358b = context;
        this.f30359c = str;
        this.f30360d = eVar;
        this.f30361e = d0Var;
        this.f30357a = new i0();
    }

    private synchronized String b(String str, SharedPreferences sharedPreferences) {
        String strE;
        strE = e(UUID.randomUUID().toString());
        qb.g.f().i("Created new Crashlytics installation ID: " + strE + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", strE).putString("firebase.installation.id", str).apply();
        return strE;
    }

    static String c() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    private static String e(String str) {
        return f30355g.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    static boolean k(String str) {
        return str != null && str.startsWith("SYN_");
    }

    private String l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String m(String str) {
        return str.replaceAll(f30356h, "");
    }

    private boolean n() {
        h0.a aVar = this.f30362f;
        return aVar == null || (aVar.e() == null && this.f30361e.d());
    }

    @Override
    public synchronized h0.a a() {
        if (!n()) {
            return this.f30362f;
        }
        qb.g.f().i("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferencesQ = CommonUtils.q(this.f30358b);
        String string = sharedPreferencesQ.getString("firebase.installation.id", null);
        qb.g.f().i("Cached Firebase Installation ID: " + string);
        if (this.f30361e.d()) {
            f0 f0VarD = d(false);
            qb.g.f().i("Fetched Firebase Installation ID: " + f0VarD.b());
            if (f0VarD.b() == null) {
                f0VarD = new f0(string == null ? c() : string, null);
            }
            if (Objects.equals(f0VarD.b(), string)) {
                this.f30362f = h0.a.a(l(sharedPreferencesQ), f0VarD);
            } else {
                this.f30362f = h0.a.a(b(f0VarD.b(), sharedPreferencesQ), f0VarD);
            }
        } else if (k(string)) {
            this.f30362f = h0.a.b(l(sharedPreferencesQ));
        } else {
            this.f30362f = h0.a.b(b(c(), sharedPreferencesQ));
        }
        qb.g.f().i("Install IDs: " + this.f30362f);
        return this.f30362f;
    }

    public f0 d(boolean z10) {
        String strB;
        CrashlyticsWorkers.e();
        String str = null;
        if (z10) {
            try {
                strB = ((com.google.firebase.installations.f) Tasks.await(this.f30360d.a(false), 10000L, TimeUnit.MILLISECONDS)).b();
            } catch (Exception e10) {
                qb.g.f().l("Error getting Firebase authentication token.", e10);
                strB = null;
            }
        } else {
            strB = null;
        }
        try {
            str = (String) Tasks.await(this.f30360d.getId(), 10000L, TimeUnit.MILLISECONDS);
        } catch (Exception e11) {
            qb.g.f().l("Error getting Firebase installation id.", e11);
        }
        return new f0(str, strB);
    }

    public String f() {
        return this.f30359c;
    }

    public String g() {
        return this.f30357a.a(this.f30358b);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", m(Build.MANUFACTURER), m(Build.MODEL));
    }

    public String i() {
        return m(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return m(Build.VERSION.RELEASE);
    }
}
