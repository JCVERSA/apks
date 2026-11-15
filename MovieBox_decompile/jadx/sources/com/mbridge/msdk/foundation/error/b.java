package com.mbridge.msdk.foundation.error;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.MBridgeIds;
import java.io.Serializable;
import java.util.HashMap;

public class b implements Serializable {

    private int f34439a;

    private int f34440b;

    private String f34441c;

    private Throwable f34442d;

    private CampaignEx f34443e;

    private MBridgeIds f34444f;

    private String f34445g;

    private String f34446h;

    private boolean f34447i;

    private int f34448j = -1;

    private String f34449k;

    private HashMap<Object, Object> f34450l;

    private int f34451m;

    private String f34452n;

    private String f34453o;

    private String f34454p;

    public b(int i10) {
        this.f34439a = i10;
        this.f34440b = a.b(i10);
    }

    public void a(Throwable th2) {
        this.f34442d = th2;
    }

    public int b() {
        return this.f34439a;
    }

    public void c(String str) {
        this.f34441c = str;
    }

    public void d(String str) {
        this.f34449k = str;
    }

    public MBridgeIds e() {
        if (this.f34444f == null) {
            this.f34444f = new MBridgeIds();
        }
        return this.f34444f;
    }

    public String f() {
        return this.f34446h;
    }

    public String g() {
        int i10;
        String strA = !TextUtils.isEmpty(this.f34441c) ? this.f34441c : "";
        if (TextUtils.isEmpty(strA) && (i10 = this.f34439a) != -1) {
            strA = a.a(i10);
        }
        Throwable th2 = this.f34442d;
        if (th2 == null) {
            return strA;
        }
        String message = th2.getMessage();
        if (TextUtils.isEmpty(message)) {
            return strA;
        }
        return strA + " # " + message;
    }

    public String h() {
        return this.f34449k;
    }

    public int i() {
        return this.f34448j;
    }

    public String toString() {
        return "MBFailureReason{errorCode=" + this.f34439a + ", errorSubType=" + this.f34440b + ", message='" + this.f34441c + "', cause=" + this.f34442d + ", campaign=" + this.f34443e + ", ids=" + this.f34444f + ", requestId='" + this.f34445g + "', localRequestId='" + this.f34446h + "', isHeaderBidding=" + this.f34447i + ", typeD=" + this.f34448j + ", reasonD='" + this.f34449k + "', extraMap=" + this.f34450l + ", serverErrorCode=" + this.f34451m + ", errorUrl='" + this.f34452n + "', serverErrorResponse='" + this.f34453o + "'}";
    }

    public CampaignEx a() {
        return this.f34443e;
    }

    public void b(String str) {
        this.f34446h = str;
    }

    public int c() {
        return this.f34440b;
    }

    public String d() {
        return this.f34454p;
    }

    public void a(CampaignEx campaignEx) {
        this.f34443e = campaignEx;
    }

    public void a(MBridgeIds mBridgeIds) {
        this.f34444f = mBridgeIds;
    }

    public b(int i10, String str) {
        this.f34439a = i10;
        if (!TextUtils.isEmpty(str)) {
            a("his_reason", str);
        }
        this.f34441c = str;
        this.f34440b = a.b(i10);
    }

    public void a(boolean z10) {
        this.f34447i = z10;
    }

    public void a(Object obj, Object obj2) {
        if (this.f34450l == null) {
            this.f34450l = new HashMap<>();
        }
        this.f34450l.put(obj, obj2);
    }

    public Object a(Object obj) {
        HashMap<Object, Object> map = this.f34450l;
        if (map != null && map.containsKey(obj)) {
            return this.f34450l.get(obj);
        }
        return null;
    }

    public void a(int i10) {
        this.f34448j = i10;
    }

    public void a(String str) {
        this.f34454p = str;
    }
}
