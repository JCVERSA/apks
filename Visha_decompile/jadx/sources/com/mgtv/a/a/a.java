package com.mgtv.a.a;

import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.c;
import com.mgmi.e.a.d;
import com.mgmi.e.g;
import com.mgmi.model.VASTAd;
import com.mgmi.net.bean.BootAdBean;
import com.mgmi.net.bean.BootDataItem;
import com.mgmi.net.bean.BootEncTrace;
import defpackage.g4d;
import defpackage.wrd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a {
    protected long a;
    private int b;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private String j;
    private VASTAd k;
    private BootAdBean l;
    private boolean c = false;
    private boolean d = true;
    private boolean e = true;
    private ArrayList<String> m = new ArrayList<>();
    private ArrayList<String> n = new ArrayList<>();

    public void a(Object obj) {
        if (obj instanceof VASTAd) {
            this.k = (VASTAd) obj;
        } else if (obj instanceof BootAdBean) {
            this.l = (BootAdBean) obj;
        }
        this.d = true;
        this.e = true;
    }

    public void b() {
        String url;
        if (this.d) {
            this.d = false;
            if (this.k != null) {
                SourceKitLogger.a("BBC", "base ad view onExpose onExposeVisibility" + this.k.getVastAid());
                g gVarA = a(this.k);
                gVarA.a(this.k.getBidResult());
                com.mgmi.net.b.a().b().a(this.k, gVarA);
                VASTAd vASTAd = this.k;
                if (vASTAd == null || vASTAd.getCurrentStaticResource() == null || this.k.getCurrentStaticResource().getUrl() == null || (url = this.k.getCurrentStaticResource().getUrl()) == null || this.n.contains(url)) {
                    return;
                }
                d dVarB = com.mgmi.net.b.a().b();
                VASTAd vASTAd2 = this.k;
                dVarB.a((Object) vASTAd2, vASTAd2.getCurrentStaticResource().getUrl(), 0, -1);
                this.n.add(url);
            }
        }
    }

    public void c() {
        BootEncTrace bootEncTrace;
        VASTAd vASTAd = this.k;
        if (vASTAd != null) {
            com.mgmi.net.b.a().b().c(this.k, a(vASTAd));
            return;
        }
        BootAdBean bootAdBean = this.l;
        if (bootAdBean == null || this.h) {
            return;
        }
        BootDataItem bootDataItem = bootAdBean.data;
        if (bootDataItem != null && (bootEncTrace = bootDataItem.enc) != null) {
            this.l.data.thirdQuartile = a(bootDataItem.thirdQuartile, bootEncTrace.thirdQuartile);
        }
        List<String> list = bootDataItem.thirdQuartile;
        if (list != null && list.size() > 0) {
            Iterator<String> it = bootDataItem.thirdQuartile.iterator();
            while (it.hasNext()) {
                com.mgmi.net.b.a().b().a(com.mgmi.net.a.a.a(it.next(), c.a()));
            }
        }
        this.h = true;
    }

    public void d() {
        BootEncTrace bootEncTrace;
        VASTAd vASTAd = this.k;
        if (vASTAd != null) {
            com.mgmi.net.b.a().b().d(this.k, a(vASTAd));
            return;
        }
        BootAdBean bootAdBean = this.l;
        if (bootAdBean == null || this.g) {
            return;
        }
        BootDataItem bootDataItem = bootAdBean.data;
        if (bootDataItem != null && (bootEncTrace = bootDataItem.enc) != null) {
            this.l.data.midpoint = a(bootDataItem.midpoint, bootEncTrace.midpoint);
        }
        List<String> list = bootDataItem.midpoint;
        if (list != null && list.size() > 0) {
            Iterator<String> it = bootDataItem.midpoint.iterator();
            while (it.hasNext()) {
                com.mgmi.net.b.a().b().a(com.mgmi.net.a.a.a(it.next(), c.a()));
            }
        }
        this.g = true;
    }

    public void e() {
        BootEncTrace bootEncTrace;
        VASTAd vASTAd = this.k;
        if (vASTAd != null) {
            com.mgmi.net.b.a().b().f(this.k, a(vASTAd));
            return;
        }
        BootAdBean bootAdBean = this.l;
        if (bootAdBean == null || this.f) {
            return;
        }
        BootDataItem bootDataItem = bootAdBean.data;
        if (bootDataItem != null && (bootEncTrace = bootDataItem.enc) != null) {
            this.l.data.firstQuartile = a(bootDataItem.firstQuartile, bootEncTrace.firstQuartile);
        }
        List<String> list = bootDataItem.firstQuartile;
        if (list != null && list.size() > 0) {
            Iterator<String> it = bootDataItem.firstQuartile.iterator();
            while (it.hasNext()) {
                com.mgmi.net.b.a().b().a(com.mgmi.net.a.a.a(it.next(), c.a()));
            }
        }
        this.f = true;
    }

    public void f() {
        BootEncTrace bootEncTrace;
        BootAdBean bootAdBean = this.l;
        if (bootAdBean != null) {
            BootDataItem bootDataItem = bootAdBean.data;
            if (bootDataItem != null && (bootEncTrace = bootDataItem.enc) != null) {
                this.l.data.impression = a(bootDataItem.impression, bootEncTrace.impression);
            }
            com.mgmi.net.b.a().b().a(this.l);
            a(this.l, System.currentTimeMillis() - this.a, true);
        }
    }

    public void g() {
        if (this.k != null) {
            g gVar = new g();
            gVar.a(this.j);
            com.mgmi.net.b.a().b().h(this.k, gVar);
        } else if (this.l != null) {
            h();
        }
    }

    public void h() {
        BootEncTrace bootEncTrace;
        if (this.k != null) {
            com.mgmi.net.b.a().b().a(this.k);
            return;
        }
        BootAdBean bootAdBean = this.l;
        if (bootAdBean == null || this.i) {
            return;
        }
        BootDataItem bootDataItem = bootAdBean.data;
        if (bootDataItem != null && (bootEncTrace = bootDataItem.enc) != null) {
            this.l.data.complete = a(bootDataItem.complete, bootEncTrace.complete);
        }
        List<String> list = bootDataItem.complete;
        if (list != null && list.size() > 0) {
            Iterator<String> it = bootDataItem.complete.iterator();
            while (it.hasNext()) {
                com.mgmi.net.b.a().b().a(com.mgmi.net.a.a.a(it.next(), c.a()));
            }
        }
        this.i = true;
    }

    public void a() {
        this.a = System.currentTimeMillis();
    }

    public void a(String str) {
        this.j = str;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(int i, int i2) {
        int i3 = i / 1000;
        if (i3 != this.b) {
            this.b = i3;
            double d = i2 / 1000;
            int i4 = (int) (0.75d * d);
            int i5 = (int) (0.5d * d);
            int i6 = (int) (d * 0.25d);
            if (i3 == i4) {
                c();
            } else if (i3 == i5) {
                d();
            } else if (i3 == i6) {
                e();
            }
            if (this.c) {
                a(i3);
            }
        }
    }

    public void b(int i) {
        VASTAd vASTAd = this.k;
        if (vASTAd != null) {
            String url = vASTAd.getCurrentStaticResource() == null ? "" : this.k.getCurrentStaticResource().getUrl();
            if (this.m.contains(url)) {
                this.e = false;
            } else {
                this.m.add(url);
                this.e = true;
            }
            if (this.e) {
                com.mgmi.net.b.a().b().a((Object) this.k, url, i, -1);
                this.e = false;
            }
        }
    }

    private g a(VASTAd vASTAd) {
        g gVar = new g();
        String str = this.j;
        if (str != null) {
            gVar.a(str);
        }
        if (vASTAd != null && vASTAd.getCurrentStaticResource() != null && vASTAd.getCurrentStaticResource().getVideoClick() != null && vASTAd.getCurrentStaticResource().getVideoClick().getClickThrough() != null) {
            gVar.c(vASTAd.getCurrentStaticResource().getVideoClick().getClickThrough());
            gVar.d(vASTAd.getVastAid() + "").e(vASTAd.getCurrentStaticResource().getCid());
        }
        return gVar;
    }

    public void b(boolean z) {
        List<String> trackingEventUnMute;
        VASTAd vASTAd = this.k;
        if (vASTAd == null) {
            return;
        }
        if (z) {
            trackingEventUnMute = vASTAd.getTrackingEventMute();
        } else {
            trackingEventUnMute = vASTAd.getTrackingEventUnMute();
        }
        if (trackingEventUnMute == null || trackingEventUnMute.size() <= 0) {
            return;
        }
        com.mgmi.net.b.a().b().a(trackingEventUnMute);
    }

    public void a(int i, boolean z) {
        if (this.k != null) {
            com.mgmi.net.b.a().b().a(this.k, i, 0, z);
        }
    }

    private void b(String str, int i, String str2) {
        BootDataItem bootDataItem;
        try {
            BootAdBean bootAdBean = this.l;
            if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null || TextUtils.isEmpty(bootDataItem.err)) {
                return;
            }
            String strReplace = this.l.data.err.replace("[ERRORCODE]", String.valueOf(i)).replace("[ERRORMSG]", str2 == null ? "null" : g4d.b(str2));
            if (str != null) {
                strReplace = strReplace.replace("[ERRORURL]", str);
            }
            com.mgmi.net.b.a().b().a(com.mgmi.net.a.a.a(strReplace, c.a()));
        } catch (Throwable unused) {
        }
    }

    public void a(int i) {
        if (this.k != null) {
            g gVar = new g();
            gVar.a(this.j);
            com.mgmi.net.b.a().b().a(i, this.k, gVar);
        }
    }

    public void a(String str, int i) {
        if (this.k != null) {
            com.mgmi.net.b.a().b().a(this.k, str, i, 0);
        }
    }

    public void b(BootAdBean bootAdBean, long j, boolean z) {
        SourceKitLogger.c("lyzzzzzz", "reportTrack");
        if (bootAdBean == null || bootAdBean.reportCreativeTrackInfo == null || !z) {
            return;
        }
        if (TextUtils.isEmpty(bootAdBean.data.type) || !bootAdBean.data.type.equals("4") || bootAdBean.data.interact_tpid <= 0) {
            com.mgmi.trace.a.a().a(bootAdBean, true);
        }
    }

    public void a(int i, String str) {
        int i2 = this.b;
        int i3 = 6;
        if (i != 206000 && i == 600000) {
            i3 = 9;
        }
        int i4 = i3;
        if (this.k != null) {
            g gVar = new g();
            gVar.a(this.j);
            com.mgmi.net.b.a().b().a(this.k, i4, str, i2, gVar);
        } else if (this.l != null) {
            g gVar2 = new g();
            gVar2.a(this.j);
            com.mgmi.net.b.a().b().a(this.l, gVar2);
        }
    }

    public void a(String str, int i, String str2) {
        b(str, i, str2);
        a(this.l, System.currentTimeMillis() - this.a, false);
    }

    public void a(BootAdBean bootAdBean, long j, boolean z) {
        com.mgmi.net.bean.a aVar;
        if (bootAdBean == null || (aVar = bootAdBean.reportCreativeTrackInfo) == null) {
            return;
        }
        aVar.d = a(bootAdBean);
        bootAdBean.reportCreativeTrackInfo.c = j;
        com.mgmi.net.b.a().b().b(bootAdBean);
        b(bootAdBean, j, z);
    }

    private String a(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        if (bootAdBean != null) {
            try {
                if (bootAdBean.reportCreativeTrackInfo != null && (bootDataItem = bootAdBean.data) != null) {
                    if ("2".equals(bootDataItem.type)) {
                        bootAdBean.reportCreativeTrackInfo.d = "video";
                        return "video";
                    }
                    if ("4".equals(bootAdBean.data.type)) {
                        bootAdBean.reportCreativeTrackInfo.d = "H5";
                        return "H5";
                    }
                    if ("3".equals(bootAdBean.data.type)) {
                        bootAdBean.reportCreativeTrackInfo.d = "c2s";
                        return "c2s";
                    }
                    bootAdBean.reportCreativeTrackInfo.d = "image";
                    return "image";
                }
                return "none";
            } catch (Throwable unused) {
                return "none";
            }
        }
        return "none";
    }

    public void a(boolean z, BootAdBean bootAdBean, com.mgmi.e.a aVar) {
        BootDataItem bootDataItem;
        List<String> list;
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null) {
            return;
        }
        if (z) {
            list = bootDataItem.win_notice;
        } else {
            list = bootDataItem.loss_notice;
        }
        bootAdBean.bidResult = aVar;
        a(list, aVar);
    }

    public void a(boolean z, VASTAd vASTAd, com.mgmi.e.a aVar) {
        List<String> lossNotices;
        if (vASTAd != null) {
            if (z) {
                lossNotices = vASTAd.getWinNotices();
            } else {
                lossNotices = vASTAd.getLossNotices();
            }
            vASTAd.setBidResult(aVar);
            a(lossNotices, aVar);
        }
    }

    private void a(List<String> list, com.mgmi.e.a aVar) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (String strReplace : list) {
            if (aVar != null) {
                strReplace = strReplace.replace("[AUCTION_LOSS]", "" + aVar.getResult());
                if (!TextUtils.isEmpty(aVar.getWinECPM())) {
                    strReplace = strReplace.replace("[AUCTION_PRICE]", wrd.a(aVar.getWinECPM()));
                }
                if (!TextUtils.isEmpty(aVar.getSecondECPM())) {
                    String strA = wrd.a(aVar.getSecondECPM());
                    if (!TextUtils.isEmpty(strA)) {
                        strReplace = strReplace.replace("[HIGHEST_LOSS_PRICE]", strA);
                    }
                }
                if (!TextUtils.isEmpty(aVar.getBidWinner())) {
                    strReplace = strReplace.replace("[AUCTION_SEAT_ID]", aVar.getBidWinner());
                }
            }
            com.mgmi.net.b.a().b().a(strReplace);
        }
    }

    public List<String> a(List<String> list, List<String> list2) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            arrayList.addAll(list);
        }
        if (list2 != null) {
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                String str = list2.get(i);
                if (!TextUtils.isEmpty(str)) {
                    String strD = wrd.d(str);
                    if (!TextUtils.isEmpty(strD)) {
                        arrayList.add(strD);
                    }
                }
            }
        }
        return arrayList;
    }
}
