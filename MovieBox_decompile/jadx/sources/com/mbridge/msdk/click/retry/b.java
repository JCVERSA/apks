package com.mbridge.msdk.click.retry;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;

public class b {

    public static int f33597k = 0;

    public static int f33598l = 1;

    private final String f33599a;

    private int f33600b;

    private final HashSet<String> f33601c = new HashSet<>();

    private final long f33602d = System.currentTimeMillis();

    private CampaignEx f33603e;

    private String f33604f;

    private int f33605g;

    private boolean f33606h;

    private boolean f33607i;

    private int f33608j;

    public b(String str, String str2) {
        this.f33599a = str;
        a(str2);
    }

    public void a(boolean z10) {
        this.f33606h = z10;
    }

    public void b(boolean z10) {
        this.f33607i = z10;
    }

    public long c() {
        return this.f33602d;
    }

    public int d() {
        return this.f33608j;
    }

    public int e() {
        return this.f33600b;
    }

    public String f() {
        return this.f33604f;
    }

    public String g() {
        return this.f33599a;
    }

    public int h() {
        return this.f33605g;
    }

    public boolean i() {
        return this.f33606h;
    }

    public boolean j() {
        return this.f33607i;
    }

    public void a(int i10) {
        this.f33608j = i10;
    }

    public void b(int i10) {
        this.f33605g = i10;
    }

    public CampaignEx a() {
        return this.f33603e;
    }

    public void b(String str) {
        this.f33604f = str;
    }

    public void a(CampaignEx campaignEx) {
        this.f33603e = campaignEx;
    }

    public HashSet<String> b() {
        return this.f33601c;
    }

    public void a(String str) {
        this.f33600b++;
        this.f33601c.add(str);
    }
}
