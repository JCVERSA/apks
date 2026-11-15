package com.mbridge.msdk.interstitial.cache;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a {

    private static final String f35082b = "com.mbridge.msdk.interstitial.cache.a";

    private static a f35083c;

    private e f35084a;

    private a() {
        try {
            Context contextD = c.m().d();
            if (contextD != null) {
                this.f35084a = e.a(g.a(contextD));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static synchronized a a() {
        try {
            if (f35083c == null) {
                f35083c = new a();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f35083c;
    }

    public void b(CampaignEx campaignEx, String str) {
        try {
            if (this.f35084a == null || campaignEx == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f35084a.a(campaignEx, str, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public List<CampaignEx> a(String str, int i10) {
        List<CampaignEx> listA;
        ArrayList arrayList = null;
        try {
            if (TextUtils.isEmpty(str) || (listA = this.f35084a.a(str, i10, 0, 1)) == null) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                Iterator<CampaignEx> it = listA.iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next());
                }
                return arrayList2;
            } catch (Exception e10) {
                e = e10;
                arrayList = arrayList2;
            }
        } catch (Exception e11) {
            e = e11;
        }
        e.printStackTrace();
        return arrayList;
    }

    public void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                this.f35084a.e(campaignEx.getId(), str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(List<CampaignEx> list, String str) {
        if (list == null || list.size() <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        Iterator<CampaignEx> it = list.iterator();
        while (it.hasNext()) {
            a(it.next(), str);
        }
    }

    public void a(String str, List<CampaignEx> list) {
        try {
            if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
                return;
            }
            Iterator<CampaignEx> it = list.iterator();
            while (it.hasNext()) {
                b(it.next(), str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void a(long j10, String str) {
        try {
            if (this.f35084a != null && j10 != 0 && !TextUtils.isEmpty(str)) {
                this.f35084a.a(j10, str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            o0.b(f35082b, e10.getMessage());
        }
    }
}
