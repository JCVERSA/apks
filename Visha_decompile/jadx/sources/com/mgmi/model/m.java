package com.mgmi.model;

import android.text.TextUtils;
import com.mgmi.net.bean.BootDataItem;
import java.util.ArrayList;
import java.util.List;

public class m<T> {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public List<String> h;
    public List<String> i;
    public List<String> j;
    public List<String> k;
    public VASTAd l;
    public int m;
    private T n;

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public List<String> d() {
        return this.h;
    }

    public String e() {
        return this.e;
    }

    public List<String> f() {
        return this.i;
    }

    public String g() {
        return this.f;
    }

    public T h() {
        return this.n;
    }

    public List<String> i() {
        return this.k;
    }

    public String j() {
        return this.d;
    }

    public List<String> k() {
        return this.j;
    }

    public String l() {
        VASTAd vASTAd;
        T t = this.n;
        if (t instanceof VASTAd) {
            return ((VASTAd) t).getmAdtype();
        }
        if (t instanceof BootDataItem) {
            return ((BootDataItem) t).ad_type;
        }
        if (!(t instanceof com.mgmi.platform.view.ViewGroup.widget.d) || (vASTAd = this.l) == null) {
            return "";
        }
        vASTAd.getmAdtype();
        return "";
    }

    public int m() {
        VASTAd vASTAd;
        T t = this.n;
        if (t instanceof VASTAd) {
            return ((VASTAd) t).getClk_area();
        }
        if (t instanceof BootDataItem) {
            return ((BootDataItem) t).clk_area;
        }
        if (!(t instanceof com.mgmi.platform.view.ViewGroup.widget.d) || (vASTAd = this.l) == null) {
            return 0;
        }
        vASTAd.getClk_area();
        return 0;
    }

    public long n() {
        VASTAd vASTAd;
        T t = this.n;
        if (t instanceof VASTAd) {
            return ((VASTAd) t).getVastAid();
        }
        if (t instanceof BootDataItem) {
            return 9000031L;
        }
        if (!(t instanceof com.mgmi.platform.view.ViewGroup.widget.d) || (vASTAd = this.l) == null) {
            return -1L;
        }
        vASTAd.getVastAid();
        return -1L;
    }

    public int o() {
        VASTAd vASTAd;
        T t = this.n;
        if (t instanceof VASTAd) {
            return ((VASTAd) t).getAdStyle();
        }
        if (t instanceof BootDataItem) {
            return Integer.valueOf(((BootDataItem) t).adstyle).intValue();
        }
        if (!(t instanceof com.mgmi.platform.view.ViewGroup.widget.d) || (vASTAd = this.l) == null) {
            return 0;
        }
        vASTAd.getAdStyle();
        return 0;
    }

    public boolean p() {
        T t = this.n;
        if (t != null) {
            return t instanceof BootDataItem;
        }
        return false;
    }

    public m a(T t) {
        return a((Object) t, false);
    }

    public void b(String str) {
        T t = this.n;
        if (t instanceof VASTAd) {
            if (((VASTAd) t).getCurrentStaticResource().getVideoClick() != null) {
                ((VASTAd) this.n).getCurrentStaticResource().getVideoClick().setClickThrough(str);
            }
        } else if (t instanceof BootDataItem) {
            ((BootDataItem) t).webviewClickUrl = "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m a(T t, boolean z) {
        this.n = t;
        if (t instanceof VASTAd) {
            return a((VASTAd) t, z);
        }
        if (t instanceof BootDataItem) {
            return a((BootDataItem) t);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m a(BootDataItem bootDataItem) {
        String str;
        String str2;
        String str3;
        this.n = bootDataItem;
        if (bootDataItem != 0 && (str3 = bootDataItem.url) != null) {
            this.a = str3;
        }
        if (bootDataItem != 0 && (str2 = bootDataItem.err) != null) {
            this.f = str2;
        }
        if (bootDataItem != 0 && (str = bootDataItem.interact_online) != null) {
            this.b = str;
        }
        if (bootDataItem != 0) {
            this.c = bootDataItem.pageUrl;
            this.e = bootDataItem.bid;
            String str4 = bootDataItem.trace;
            this.g = str4;
            if (!TextUtils.isEmpty(str4)) {
                ArrayList arrayList = new ArrayList();
                this.i = arrayList;
                arrayList.add(this.g);
            }
            this.k = bootDataItem.interactTrace;
            this.j = bootDataItem.click;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m a(VASTAd vASTAd, boolean z) {
        this.n = vASTAd;
        a(vASTAd);
        if (vASTAd != 0 && vASTAd.getCurrentStaticResource() != null) {
            this.a = vASTAd.getCurrentStaticResource().getUrl();
        }
        if (vASTAd != 0 && vASTAd.getCurrentStaticResource() != null && vASTAd.getCurrentStaticResource().getVideoClick() != null) {
            this.c = vASTAd.getCurrentStaticResource().getVideoClick().getClickThrough();
        }
        if (z) {
            if (vASTAd != 0 && vASTAd.getCurrentStaticResource() != null) {
                this.d = vASTAd.getCurrentStaticResource().getUrl();
            }
        } else if (vASTAd != 0 && vASTAd.getmCompanions() != null && vASTAd.getmCompanions().a() != null) {
            List<d> listA = vASTAd.getmCompanions().a();
            int size = listA.size();
            for (int i = 0; i < size; i++) {
                d dVar = listA.get(i);
                if ("thumbnail_pic".equals(dVar.h()) && !TextUtils.isEmpty(dVar.e())) {
                    this.d = dVar.e();
                    break;
                }
            }
            List<d> listA2 = vASTAd.getmCompanions().a();
            int size2 = listA2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                d dVar2 = listA2.get(i2);
                if ("zip_online".equals(dVar2.h())) {
                    this.b = dVar2.i();
                    break;
                }
            }
        }
        if (vASTAd != 0 && vASTAd.getErrors() != null) {
            this.h = vASTAd.getErrors();
        }
        if (vASTAd != 0) {
            this.e = vASTAd.getBid();
            this.i = vASTAd.getTraceCheck();
            this.k = vASTAd.getTrackingEventList(null, "interactTrace");
            Clicks videoClick = vASTAd.getVideoClick();
            VASTStaticResource currentStaticResource = vASTAd.getCurrentStaticResource();
            if (currentStaticResource != null && currentStaticResource.getVideoClick() != null) {
                videoClick = currentStaticResource.getVideoClick();
            }
            if (videoClick != null) {
                this.j = videoClick.getClickTracking();
            }
        }
        return this;
    }

    public void a(String str) {
        T t = this.n;
        if (t instanceof VASTAd) {
            if (((VASTAd) t).getCurrentStaticResource().getVideoClick() != null) {
                ((VASTAd) this.n).getCurrentStaticResource().getVideoClick().setClickThrough(str);
            }
        } else if (t instanceof BootDataItem) {
            ((BootDataItem) t).webviewClickUrl = str;
        }
    }

    private void a(VASTAd vASTAd) {
        if (vASTAd == null || !(vASTAd instanceof VASTFloatAd)) {
            return;
        }
        this.m = ((VASTFloatAd) vASTAd).getDelayRandTime();
    }
}
