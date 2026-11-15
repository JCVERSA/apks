package com.mbridge.msdk.foundation.cache;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class c {

    public static int f34149i = 1;

    public static int f34150j = 0;

    public static int f34151k = 3;

    public static int f34152l = 2;

    private CopyOnWriteArrayList<CampaignEx> f34153a;

    private String f34154b;

    private int f34155c = 21;

    private int f34156d = f34150j;

    private ArrayList<String> f34157e = new ArrayList<>();

    private List<String> f34158f = new ArrayList();

    private List<String> f34159g = new ArrayList();

    private List<String> f34160h = new ArrayList();

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f34153a = copyOnWriteArrayList;
    }

    public String b() {
        List<String> list = this.f34160h;
        return list == null ? "" : list.toString();
    }

    public CopyOnWriteArrayList<CampaignEx> c() {
        return this.f34153a;
    }

    public String d() {
        List<String> list = this.f34159g;
        return list == null ? "" : list.toString();
    }

    public String e() {
        return this.f34154b;
    }

    public String f() {
        List<String> list = this.f34158f;
        return list == null ? "" : list.toString();
    }

    public int g() {
        return this.f34156d;
    }

    public String a() {
        ArrayList<String> arrayList = this.f34157e;
        return arrayList == null ? "" : arrayList.toString();
    }

    public void c(String str) {
        try {
            List<String> list = this.f34158f;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(String str) {
        try {
            List<String> list = this.f34159g;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void d(String str) {
        this.f34154b = str;
    }

    public void a(String str) {
        try {
            ArrayList<String> arrayList = this.f34157e;
            if (arrayList != null) {
                arrayList.add(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10) {
        this.f34156d = i10;
    }
}
