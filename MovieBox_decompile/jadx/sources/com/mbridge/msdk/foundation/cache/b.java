package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.i0;
import java.util.concurrent.CopyOnWriteArrayList;

public class b {

    private CopyOnWriteArrayList<CampaignEx> f34139a;

    private double f34140b;

    private String f34141c;

    private String f34142d;

    private int f34143e;

    private long f34144f;

    private int f34145g;

    private long f34146h;

    private String f34147i;

    private long f34148j;

    public void a(long j10) {
        this.f34148j = j10;
    }

    public double b() {
        return this.f34140b;
    }

    public long c() {
        return this.f34148j;
    }

    public String d() {
        return this.f34141c;
    }

    public String e() {
        return this.f34142d;
    }

    public int f() {
        return this.f34143e;
    }

    public int g() {
        return this.f34145g;
    }

    public long h() {
        return this.f34146h;
    }

    public CopyOnWriteArrayList<CampaignEx> a() {
        return this.f34139a;
    }

    public void b(String str) {
        this.f34141c = str;
    }

    public void c(String str) {
        this.f34142d = str;
    }

    public void d(String str) {
        this.f34147i = str;
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f34139a = copyOnWriteArrayList;
    }

    public void b(int i10) {
        this.f34145g = i10;
    }

    public void c(long j10) {
        this.f34146h = j10;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strA = i0.a(str);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        try {
            double d10 = Double.parseDouble(strA);
            if (d10 <= 0.0d) {
                return;
            }
            this.f34140b = d10;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(long j10) {
        this.f34144f = j10;
    }

    public void a(int i10) {
        this.f34143e = i10;
    }
}
