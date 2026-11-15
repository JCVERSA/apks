package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;

public class n {

    static final Date f31712e = new Date(-1);

    static final Date f31713f = new Date(-1);

    private final SharedPreferences f31714a;

    private final Object f31715b = new Object();

    private final Object f31716c = new Object();

    private final Object f31717d = new Object();

    static class a {

        private int f31718a;

        private Date f31719b;

        a(int i10, Date date) {
            this.f31718a = i10;
            this.f31719b = date;
        }

        Date a() {
            return this.f31719b;
        }

        int b() {
            return this.f31718a;
        }
    }

    public static class b {

        private int f31720a;

        private Date f31721b;

        public b(int i10, Date date) {
            this.f31720a = i10;
            this.f31721b = date;
        }

        Date a() {
            return this.f31721b;
        }

        int b() {
            return this.f31720a;
        }
    }

    public n(SharedPreferences sharedPreferences) {
        this.f31714a = sharedPreferences;
    }

    a a() {
        a aVar;
        synchronized (this.f31716c) {
            aVar = new a(this.f31714a.getInt("num_failed_fetches", 0), new Date(this.f31714a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    public long b() {
        return this.f31714a.getLong("fetch_timeout_in_seconds", 60L);
    }

    public ad.i c() {
        s sVarA;
        synchronized (this.f31715b) {
            long j10 = this.f31714a.getLong("last_fetch_time_in_millis", -1L);
            int i10 = this.f31714a.getInt("last_fetch_status", 0);
            sVarA = s.b().c(i10).d(j10).b(new ad.j.b().d(this.f31714a.getLong("fetch_timeout_in_seconds", 60L)).e(this.f31714a.getLong("minimum_fetch_interval_in_seconds", ConfigFetchHandler.f31616j)).c()).a();
        }
        return sVarA;
    }

    String d() {
        return this.f31714a.getString("last_fetch_etag", null);
    }

    Date e() {
        return new Date(this.f31714a.getLong("last_fetch_time_in_millis", -1L));
    }

    long f() {
        return this.f31714a.getLong("last_template_version", 0L);
    }

    public long g() {
        return this.f31714a.getLong("minimum_fetch_interval_in_seconds", ConfigFetchHandler.f31616j);
    }

    public b h() {
        b bVar;
        synchronized (this.f31717d) {
            bVar = new b(this.f31714a.getInt("num_failed_realtime_streams", 0), new Date(this.f31714a.getLong("realtime_backoff_end_time_in_millis", -1L)));
        }
        return bVar;
    }

    void i() {
        k(0, f31713f);
    }

    void j() {
        o(0, f31713f);
    }

    void k(int i10, Date date) {
        synchronized (this.f31716c) {
            this.f31714a.edit().putInt("num_failed_fetches", i10).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public void l(ad.j jVar) {
        synchronized (this.f31715b) {
            this.f31714a.edit().putLong("fetch_timeout_in_seconds", jVar.a()).putLong("minimum_fetch_interval_in_seconds", jVar.b()).commit();
        }
    }

    void m(String str) {
        synchronized (this.f31715b) {
            this.f31714a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    void n(long j10) {
        synchronized (this.f31715b) {
            this.f31714a.edit().putLong("last_template_version", j10).apply();
        }
    }

    void o(int i10, Date date) {
        synchronized (this.f31717d) {
            this.f31714a.edit().putInt("num_failed_realtime_streams", i10).putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    void p() {
        synchronized (this.f31715b) {
            this.f31714a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    void q(Date date) {
        synchronized (this.f31715b) {
            this.f31714a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    void r() {
        synchronized (this.f31715b) {
            this.f31714a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
