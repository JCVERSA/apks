package com.mbridge.msdk.mbnative.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.Campaign;
import java.util.ArrayList;
import java.util.List;

public class a extends b<String, List<Campaign>> {

    private e f35399a = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    private int f35400b;

    class RunnableC0482a implements Runnable {

        final List f35401a;

        final String f35402b;

        RunnableC0482a(List list, String str) {
            this.f35401a = list;
            this.f35402b = str;
        }

        @Override
        public void run() {
            for (int i10 = 0; i10 < this.f35401a.size(); i10++) {
                CampaignEx campaignEx = (CampaignEx) this.f35401a.get(i10);
                campaignEx.setCacheLevel(1);
                a.this.f35399a.a(campaignEx, this.f35402b, 1);
            }
        }
    }

    public a(int i10) {
        this.f35400b = i10;
    }

    @Override
    public List<Campaign> b(String str, int i10) {
        List<CampaignEx> listA = this.f35399a.a(str, i10, 2, this.f35400b);
        if (listA == null) {
            return null;
        }
        if (a(listA, 2)) {
            this.f35399a.a(str, 2, this.f35400b);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(listA);
        return arrayList;
    }

    public void a(List<CampaignEx> list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = list.get(i10);
            campaignEx.setCacheLevel(2);
            this.f35399a.a(campaignEx, str, 1);
        }
    }

    public boolean a(List<CampaignEx> list, int i10) {
        long jA;
        if (list != null && list.size() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long timestamp = list.get(0).getTimestamp();
            if (i10 != 1) {
                jA = i10 != 2 ? 0L : b();
            } else {
                jA = a();
            }
            if (jCurrentTimeMillis - timestamp > jA) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void a(String str, List<Campaign> list) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        this.f35399a.a(str, 1, this.f35400b, false);
        this.f35399a.a(str, 2, this.f35400b, false);
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = (CampaignEx) list.get(i10);
            campaignEx.setCacheLevel(1);
            this.f35399a.a(campaignEx, str, 1);
        }
    }

    @Override
    public void a(String str, List<Campaign> list, String str2) {
        boolean z10 = !TextUtils.isEmpty(str2);
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        this.f35399a.a(str, 1, this.f35400b, z10);
        this.f35399a.a(str, 2, this.f35400b, z10);
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0482a(list, str));
    }

    @Override
    public List<Campaign> a(String str, int i10) {
        List<CampaignEx> listA = this.f35399a.a(str, i10, 1, this.f35400b);
        if (listA == null) {
            return null;
        }
        if (a(listA, 1)) {
            a(listA, str);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(listA);
        return arrayList;
    }

    @Override
    public void a(String str, Campaign campaign, String str2) {
        boolean z10 = !TextUtils.isEmpty(str2);
        if (campaign == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (this.f35399a.a(campaignEx.getId(), campaignEx.getTab(), str, campaignEx.getCacheLevel(), campaignEx.getType(), z10)) {
                this.f35399a.a(campaignEx.getId(), str, campaignEx.getCacheLevel(), this.f35400b, z10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
