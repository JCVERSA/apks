package com.mbridge.msdk.tracker;

import java.io.Serializable;

public class i implements Serializable {

    static String f37684i = "CREATE TABLE IF NOT EXISTS %s (id INTEGER PRIMARY KEY,uuid TEXT,name TEXT,type INTEGER,time_stamp INTEGER,duration INTEGER,properties TEXT,priority INTEGER,state INTEGER,invalid_time INTEGER,ignore_max_timeout INTEGER,ignore_max_retry_times INTEGER,report_error_message TEXT,report_count INTEGER)";

    static String f37685j = "DROP TABLE IF EXISTS %s";

    private final e f37686a;

    private int f37687b;

    private int f37688c;

    private final String f37689d;

    private long f37690e;

    private boolean f37691f = false;

    private boolean f37692g = false;

    private String f37693h;

    public i(e eVar) {
        this.f37686a = eVar;
        this.f37689d = eVar.i();
    }

    public void a(boolean z10) {
        this.f37692g = z10;
    }

    public void b(boolean z10) {
        this.f37691f = z10;
    }

    public int c() {
        return this.f37687b;
    }

    public String d() {
        return this.f37693h;
    }

    public int e() {
        return this.f37688c;
    }

    public String f() {
        return this.f37689d;
    }

    public boolean g() {
        return this.f37692g;
    }

    public boolean h() {
        return this.f37691f;
    }

    public e a() {
        return this.f37686a;
    }

    public void b(int i10) {
        this.f37688c = i10;
    }

    public void a(int i10) {
        this.f37687b = i10;
    }

    public long b() {
        return this.f37690e;
    }

    public void a(long j10) {
        this.f37690e = j10;
    }

    public void a(String str) {
        this.f37693h = str;
    }
}
