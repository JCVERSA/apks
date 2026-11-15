package com.mgmi.e.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.j;
import com.mgmi.e.g;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTMediaFile;
import com.mgmi.model.VASTStaticResource;
import com.mgmi.model.i;
import com.mgmi.net.bean.BootAdBean;
import com.mgmi.net.bean.BootDataItem;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import defpackage.bld;
import defpackage.g4d;
import defpackage.jed;
import defpackage.wrd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class b<T extends VASTAd> implements c {
    protected Context a;
    VASTAd b;
    private long c = 0;

    public b(Context context) {
        this.a = context;
    }

    private String a(String str, g gVar) {
        String strReplace;
        if (gVar == null || str == null) {
            return str;
        }
        String strReplace2 = gVar.a() != null ? str.replace("[STATUS]", gVar.a()) : str.replace("[STATUS]", "-1");
        String strReplace3 = gVar.c() != null ? strReplace2.replace("[TIME]", gVar.c()) : strReplace2.replace("[TIME]", "-1");
        String strReplace4 = gVar.f() != null ? strReplace3.replace("[CLICK_STATUS]", gVar.f()) : strReplace3.replace("[CLICK_STATUS]", "-1");
        String strReplace5 = gVar.e() != null ? strReplace4.replace("[DPLINK]", gVar.e()) : strReplace4.replace("[DPLINK]", "-1");
        if (gVar.d() != null) {
            strReplace5 = strReplace5.replaceAll("tn=\\d", "tn=" + gVar.d());
        }
        if (gVar.b() != null) {
            strReplace = strReplace5.replace("[CS_A_X]", String.valueOf((int) gVar.b().j())).replace("[CS_A_Y]", String.valueOf((int) gVar.b().k())).replace("[CS_D_X]", String.valueOf((int) gVar.b().d())).replace("[CS_D_Y]", String.valueOf((int) gVar.b().i())).replace("[CE_A_X]", String.valueOf((int) gVar.b().j())).replace("[CE_A_Y]", String.valueOf((int) gVar.b().k())).replace("[CE_D_X]", String.valueOf((int) gVar.b().d())).replace("[CE_D_Y]", String.valueOf((int) gVar.b().i()));
            if (gVar.b().g() != -1) {
                strReplace = strReplace.replace("[CLICK_POS]", String.valueOf(gVar.b().g()));
            }
        } else {
            strReplace = strReplace5.replace("[CS_A_X]", "-999").replace("[CS_A_Y]", "-999").replace("[CS_D_X]", "-999").replace("[CS_D_Y]", "-999").replace("[CE_A_X]", "-999").replace("[CE_A_Y]", "-999").replace("[CE_D_X]", "-999").replace("[CE_D_Y]", "-999");
        }
        if (gVar.b() != null) {
            strReplace = strReplace.replace("__WIDTH__", String.valueOf((int) gVar.b().a())).replace("__HEIGHT__", String.valueOf((int) gVar.b().c())).replace("__DOWN_X__", String.valueOf((int) gVar.b().j())).replace("__DOWN_Y__", String.valueOf((int) gVar.b().k())).replace("__UP_X__", String.valueOf((int) gVar.b().j())).replace("__UP_Y__", String.valueOf((int) gVar.b().k()));
        }
        if (gVar.b() != null && strReplace.contains("[CLICK_ASSIS]")) {
            strReplace = strReplace.replace("[CLICK_ASSIS]", String.valueOf(jed.a));
        }
        SourceKitLogger.a("fanfansss", "AutoClickHelper.tkct" + jed.a);
        jed.a = 0;
        com.mgmi.e.a aVarH = gVar.h();
        return aVarH != null ? a(aVarH, strReplace) : strReplace;
    }

    private boolean b(VASTAd vASTAd) {
        return !"paster".equals(vASTAd.getmAdtype());
    }

    private boolean c(VASTAd vASTAd) {
        return (TypedValues.Custom.S_FLOAT.equals(vASTAd.getmAdtype()) && vASTAd.getAdStyle() == 13) ? false : true;
    }

    @Override
    public void d(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null || vASTAd.hasSendMidpointTrackings()) {
            return;
        }
        List<String> trackingEventMid = vASTAd.getTrackingEventMid();
        if (trackingEventMid != null && trackingEventMid.size() > 0) {
            Iterator<String> it = trackingEventMid.iterator();
            while (it.hasNext()) {
                final String strA = a(it.next(), gVar);
                if (strA != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "702." + i2, strA, str);
                        }
                    });
                }
            }
        }
        List<String> trackingEventMid2 = vASTAd.getTrackingEventMid(com.mgmi.e.f.a());
        if (trackingEventMid2 != null && trackingEventMid2.size() > 0) {
            Iterator<String> it2 = trackingEventMid2.iterator();
            while (it2.hasNext()) {
                com.mgmi.e.f.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.isMk());
            }
        }
        if ("mid".equals(vASTAd.getmAdtype()) || "focus-head".equals(vASTAd.getmAdtype()) || "banner".equals(vASTAd.getmAdtype()) || !b(vASTAd)) {
            return;
        }
        vASTAd.setHasSendMidpointTrackings(true);
    }

    @Override
    public void e(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null || vASTAd.hasSendStartTrackings()) {
            return;
        }
        List<String> trackingEventStart = vASTAd.getTrackingEventStart();
        if (trackingEventStart != null && trackingEventStart.size() > 0) {
            Iterator<String> it = trackingEventStart.iterator();
            while (it.hasNext()) {
                final String strA = a(it.next(), gVar);
                if (strA != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "701." + i2, strA, str);
                        }
                    });
                }
            }
        }
        List<String> trackingEventStart2 = vASTAd.getTrackingEventStart(com.mgmi.e.f.a());
        if (trackingEventStart2 != null && trackingEventStart2.size() > 0) {
            Iterator<String> it2 = trackingEventStart2.iterator();
            while (it2.hasNext()) {
                com.mgmi.e.f.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.isMk());
            }
        }
        if ("mid".equals(vASTAd.getmAdtype()) || "focus-head".equals(vASTAd.getmAdtype()) || "banner".equals(vASTAd.getmAdtype()) || !b(vASTAd)) {
            return;
        }
        vASTAd.setHasSendStartTrackings(true);
    }

    @Override
    public void f(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null || vASTAd.hasSendFirstQuartileTrackings()) {
            return;
        }
        List<String> trackingEventFirst = vASTAd.getTrackingEventFirst();
        if (trackingEventFirst != null && trackingEventFirst.size() > 0) {
            Iterator<String> it = trackingEventFirst.iterator();
            while (it.hasNext()) {
                final String strA = a(it.next(), gVar);
                if (strA != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "701." + i2, strA, str);
                        }
                    });
                }
            }
        }
        List<String> trackingEventFirst2 = vASTAd.getTrackingEventFirst(com.mgmi.e.f.a());
        if (trackingEventFirst2 != null && trackingEventFirst2.size() > 0) {
            Iterator<String> it2 = trackingEventFirst2.iterator();
            while (it2.hasNext()) {
                com.mgmi.e.f.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.isMk());
            }
        }
        if ("mid".equals(vASTAd.getmAdtype()) || "focus-head".equals(vASTAd.getmAdtype()) || "banner".equals(vASTAd.getmAdtype()) || !b(vASTAd)) {
            return;
        }
        vASTAd.setHasSendfirstQuartileTrackings(true);
    }

    @Override
    public void g(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null) {
            return;
        }
        Clicks videoClick = vASTAd.getVideoClick();
        VASTMediaFile currentMediaFile = vASTAd.getCurrentMediaFile();
        if (currentMediaFile != null && currentMediaFile.getVideoClick() != null) {
            videoClick = currentMediaFile.getVideoClick();
        }
        if (videoClick == null) {
            return;
        }
        List<String> clickTracking = videoClick.getClickTracking();
        com.mgmi.e.b.a().a(com.mgmi.ads.api.c.a(), videoClick.getClickThrough(), gVar.g(), clickTracking, vASTAd.getTrackingEventDlStart(), vASTAd.getTrackingEventDlFinish(), vASTAd.getTrackingEventDlInstall(), vASTAd.getTrackingEventDlComplete(), videoClick.getClickTracking(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlStart(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlFinish(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlInstall(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlComplete(com.mgmi.e.f.a()));
        if (clickTracking != null && clickTracking.size() > 0) {
            Iterator<String> it = clickTracking.iterator();
            g4d.a();
            while (it.hasNext()) {
                final String strB = bld.b(a(it.next(), gVar), vASTAd.getClk_trac_macro(), vASTAd.getClk_trac_value());
                if (strB != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strB).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "705." + i2, strB, str);
                        }
                    });
                }
            }
        }
        List<String> clickTracking2 = videoClick.getClickTracking(com.mgmi.e.f.a());
        if (clickTracking2 == null || clickTracking2.size() <= 0) {
            return;
        }
        Iterator<String> it2 = clickTracking2.iterator();
        this.c = System.currentTimeMillis();
        while (it2.hasNext()) {
            com.mgmi.e.f.a(bld.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.getClk_trac_macro(), vASTAd.getClk_trac_value()), vASTAd.isMk());
        }
    }

    @Override
    public void h(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null || vASTAd.hasSendCompleteTrackings()) {
            return;
        }
        List<String> trackingEventComplete = vASTAd.getTrackingEventComplete();
        if (trackingEventComplete != null && trackingEventComplete.size() > 0) {
            Iterator<String> it = trackingEventComplete.iterator();
            while (it.hasNext()) {
                final String strA = a(it.next(), gVar);
                if (strA != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "707." + i2, strA, str);
                        }
                    });
                }
            }
        }
        List<String> trackingEventComplete2 = vASTAd.getTrackingEventComplete(com.mgmi.e.f.a());
        if (trackingEventComplete2 != null && trackingEventComplete2.size() > 0) {
            Iterator<String> it2 = trackingEventComplete2.iterator();
            while (it2.hasNext()) {
                com.mgmi.e.f.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.isMk());
            }
        }
        if ("mid".equals(vASTAd.getmAdtype()) || "focus-head".equals(vASTAd.getmAdtype()) || "banner".equals(vASTAd.getmAdtype()) || !b(vASTAd)) {
            return;
        }
        vASTAd.setHasSendCompleteTrackings(true);
    }

    @Override
    public void i(final VASTAd vASTAd, @Nullable g gVar) {
        if (vASTAd == null) {
            return;
        }
        List<String> trackingEventClose = vASTAd.getTrackingEventClose(null);
        if (trackingEventClose != null && trackingEventClose.size() > 0) {
            Iterator<String> it = trackingEventClose.iterator();
            while (it.hasNext()) {
                final String strA = a(it.next(), gVar);
                if (strA != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "706." + i2, strA, str);
                        }
                    });
                }
            }
        }
        List<String> trackingEventClose2 = vASTAd.getTrackingEventClose(com.mgmi.e.f.a());
        if (trackingEventClose2 == null || trackingEventClose2.size() <= 0) {
            return;
        }
        Iterator<String> it2 = trackingEventClose2.iterator();
        while (it2.hasNext()) {
            com.mgmi.e.f.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.isMk());
        }
    }

    @Override
    public void b(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null) {
            return;
        }
        Clicks videoClick = vASTAd.getVideoClick();
        VASTStaticResource currentStaticResource = vASTAd.getCurrentStaticResource();
        if (currentStaticResource != null && currentStaticResource.getVideoClick() != null) {
            videoClick = currentStaticResource.getVideoClick();
        }
        if (videoClick == null) {
            return;
        }
        List<String> clickTracking = videoClick.getClickTracking();
        com.mgmi.e.b.a().a(com.mgmi.ads.api.c.a(), videoClick.getClickThrough(), gVar.g(), clickTracking, vASTAd.getTrackingEventDlStart(), vASTAd.getTrackingEventDlFinish(), vASTAd.getTrackingEventDlInstall(), vASTAd.getTrackingEventDlComplete(), videoClick.getClickTracking(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlStart(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlFinish(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlInstall(com.mgmi.e.f.a()), vASTAd.getTrackingEventDlComplete(com.mgmi.e.f.a()));
        if (clickTracking != null && clickTracking.size() > 0) {
            Iterator<String> it = clickTracking.iterator();
            while (it.hasNext()) {
                final String strB = bld.b(a(it.next(), gVar), vASTAd.getClk_trac_macro(), vASTAd.getClk_trac_value());
                if (strB != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(strB).a(1).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "705." + i2, strB, str);
                        }
                    });
                }
            }
        }
        List<String> clickTracking2 = videoClick.getClickTracking(com.mgmi.e.f.a());
        if (clickTracking2 == null || clickTracking2.size() <= 0) {
            return;
        }
        Iterator<String> it2 = clickTracking2.iterator();
        this.c = System.currentTimeMillis();
        while (it2.hasNext()) {
            com.mgmi.e.f.a(bld.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.getClk_trac_macro(), vASTAd.getClk_trac_value()), vASTAd.isMk());
        }
    }

    @Override
    public void c(final VASTAd vASTAd, g gVar) {
        if (vASTAd == null || vASTAd.hasSendThirdQuartileTrackings()) {
            return;
        }
        if (vASTAd.getTrackingEventThird() == null) {
            SourceKitLogger.a("mgmisdkreport", "reportThirdQuartileTracking error no url-----------------");
            return;
        }
        List<String> trackingEventThird = vASTAd.getTrackingEventThird();
        if (trackingEventThird != null && trackingEventThird.size() > 0) {
            Iterator<String> it = trackingEventThird.iterator();
            while (it.hasNext()) {
                final String strA = a(it.next(), gVar);
                if (strA != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(Object obj) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                            b.this.a(vASTAd, "703." + i2, strA, str);
                        }
                    });
                }
            }
        }
        List<String> trackingEventThird2 = vASTAd.getTrackingEventThird(com.mgmi.e.f.a());
        if (trackingEventThird2 != null && trackingEventThird2.size() > 0) {
            Iterator<String> it2 = trackingEventThird2.iterator();
            while (it2.hasNext()) {
                com.mgmi.e.f.b(com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a), vASTAd.isMk());
            }
        }
        if ("mid".equals(vASTAd.getmAdtype()) || "focus-head".equals(vASTAd.getmAdtype()) || "banner".equals(vASTAd.getmAdtype()) || !b(vASTAd)) {
            return;
        }
        vASTAd.setHasSendThirdQuartileTrackings(true);
    }

    private List<String> c(BootDataItem bootDataItem) {
        List<BootDataItem> list;
        List<String> list2;
        ArrayList arrayList = new ArrayList();
        if (bootDataItem != null && (list = bootDataItem.ad_list) != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem2 = list.get(i);
                if (bootDataItem2 != null && "boot".equalsIgnoreCase(bootDataItem2.ad_type) && !"3".equals(bootDataItem2.type) && (list2 = bootDataItem2.close) != null) {
                    arrayList.addAll(list2);
                }
            }
        }
        return arrayList;
    }

    private List<String> b(BootDataItem bootDataItem) {
        List<BootDataItem> list;
        List<String> list2;
        ArrayList arrayList = new ArrayList();
        if (bootDataItem != null && (list = bootDataItem.ad_list) != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem2 = list.get(i);
                if (bootDataItem2 != null && "boot".equalsIgnoreCase(bootDataItem2.ad_type) && !"3".equals(bootDataItem2.type) && (list2 = bootDataItem2.impression) != null) {
                    arrayList.addAll(list2);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void b(BootAdBean bootAdBean) {
        com.mgmi.net.bean.a aVar;
        BootDataItem bootDataItem;
        List<String> list;
        if (bootAdBean == null || (aVar = bootAdBean.reportCreativeTrackInfo) == null || aVar.a || (bootDataItem = bootAdBean.data) == null || (list = bootDataItem.creativeTrack) == null || list.size() <= 0) {
            return;
        }
        com.mgmi.net.bean.a aVar2 = bootAdBean.reportCreativeTrackInfo;
        long j = aVar2.b;
        long j2 = aVar2.c;
        if (j < 0 || j2 < 0) {
            return;
        }
        String strValueOf = String.valueOf(j + j2);
        com.mgmi.net.bean.a aVar3 = bootAdBean.reportCreativeTrackInfo;
        int i = 1;
        aVar3.a = true;
        String str = aVar3.h;
        String str2 = aVar3.d;
        String str3 = aVar3.e;
        String str4 = aVar3.g;
        String str5 = aVar3.f;
        for (String str6 : bootAdBean.data.creativeTrack) {
            if (!TextUtils.isEmpty(str6)) {
                String strReplace = str6.replace("[CMS]", String.valueOf(j2)).replace("[AD_REQ_MS]", String.valueOf(j)).replace("[AD_TOTAL_MS]", strValueOf);
                if (!TextUtils.isEmpty(str2)) {
                    strReplace = strReplace.replace("[AD_TYPE]", str2);
                }
                if (!TextUtils.isEmpty(str5)) {
                    strReplace = strReplace.replace("[AD_URL]", str5);
                }
                if (!TextUtils.isEmpty(str3)) {
                    strReplace = strReplace.replace("[AD_STATUS]", str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    strReplace = strReplace.replace("[REC_TYPE]", str4);
                }
                if (!TextUtils.isEmpty(str)) {
                    strReplace = strReplace.replace("[PAGE_STATUS]", str);
                }
                com.mgmi.net.a.a aVarA = new com.mgmi.net.a.a().a(i).a(strReplace).a(this.a);
                SourceKitLogger.a("ReporterBasereportCreativeTrack", "url:" + strReplace);
                com.mgadplus.netlib.a.e.a(aVarA, new com.mgadplus.netlib.base.b() {
                    @Override
                    public void a(int i2, int i3, @Nullable String str7, @Nullable Throwable th, String str8) {
                    }

                    @Override
                    public void b(@NonNull Object obj) {
                    }

                    @Override
                    public void a(Object obj) {
                    }
                });
            }
            i = 1;
        }
    }

    @Override
    public void a(final VASTAd vASTAd, g gVar) {
        if (vASTAd != null && !vASTAd.hasFireImpressions()) {
            this.b = vASTAd;
            List<String> impression = vASTAd.getImpression();
            if (impression != null && impression.size() > 0) {
                Iterator<String> it = impression.iterator();
                while (it.hasNext()) {
                    String strA = a(it.next(), gVar);
                    if (strA != null) {
                        final String strReplace = strA.replace("[CT_USE]", "0");
                        SourceKitLogger.a("zhengfeng", "onAdExpose-----url=" + strA);
                        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(strReplace).a(1).a(this.a), new com.mgadplus.netlib.base.b() {
                            @Override
                            public void a(Object obj) {
                            }

                            @Override
                            public void b(@NonNull Object obj) {
                                SourceKitLogger.a("ReporterBase", "reportImpression onSucess");
                            }

                            @Override
                            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                                SourceKitLogger.a("ReporterBase", "reportImpression error=" + i2 + "errDesc=" + th);
                                b.this.a(vASTAd, "700." + i2, strReplace, str);
                            }
                        });
                    }
                }
            }
            List<String> impression2 = vASTAd.getImpression(com.mgmi.e.f.a());
            if (impression2 != null && impression2.size() > 0) {
                Iterator<String> it2 = impression2.iterator();
                this.c = System.currentTimeMillis();
                while (it2.hasNext()) {
                    String strA2 = com.mgmi.net.a.a.a(a(it2.next(), gVar), this.a);
                    if (!TextUtils.isEmpty(strA2)) {
                        strA2 = strA2.replace("[CT_USE]", "0");
                    }
                    com.mgmi.e.f.b(strA2, vASTAd.isMk());
                }
            }
            if ("banner".equals(vASTAd.getmAdtype()) || "ai_implant".equals(vASTAd.getmAdtype()) || "mid".equals(vASTAd.getmAdtype()) || "focus-head".equals(vASTAd.getmAdtype()) || "progress".equals(vASTAd.getmAdtype()) || "el".equals(vASTAd.getmAdtype()) || !b(vASTAd) || !c(vASTAd)) {
                return;
            }
            vASTAd.setHasFireImpressions(true);
            return;
        }
        SourceKitLogger.a("ReporterBase", "reportImpression error-----------------");
    }

    @Override
    public void a(int i, VASTAd vASTAd, g gVar) {
        List<com.mgmi.net.bean.c> trackingEventList = vASTAd.getTrackingEventList(null);
        if (trackingEventList != null && trackingEventList.size() > 0) {
            for (com.mgmi.net.bean.c cVar : trackingEventList) {
                if (cVar != null && i >= cVar.a() && cVar.c()) {
                    cVar.a(false);
                    String strA = a(cVar.b(), gVar);
                    if (strA != null) {
                        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                            @Override
                            public void a(int i2, int i3, @Nullable String str, @Nullable Throwable th, String str2) {
                                SourceKitLogger.a("ReporterBase", "reportImpression error=" + i3 + "errDesc=" + str);
                            }

                            @Override
                            public void b(@NonNull Object obj) {
                                SourceKitLogger.a("ReporterBase", "onSucess");
                            }
                        });
                    }
                }
            }
        }
        List<com.mgmi.net.bean.c> trackingEventList2 = vASTAd.getTrackingEventList(com.mgmi.e.f.a());
        if (trackingEventList2 == null || trackingEventList2.isEmpty()) {
            return;
        }
        for (com.mgmi.net.bean.c cVar2 : trackingEventList2) {
            if (cVar2 != null && i >= cVar2.a() && cVar2.c()) {
                cVar2.a(false);
                String strA2 = a(cVar2.b(), gVar);
                if (strA2 != null) {
                    com.mgmi.e.f.b(strA2, vASTAd.isMk());
                }
            }
        }
    }

    @Override
    public void a(BootDataItem bootDataItem, g gVar) {
        if (bootDataItem == null) {
            return;
        }
        List<String> list = bootDataItem.click;
        List<String> listA = a(bootDataItem);
        if (listA != null && listA.size() > 0) {
            list.addAll(listA);
        }
        com.mgmi.e.b.a().a(com.mgmi.ads.api.c.a(), bootDataItem.pageUrl, gVar.g(), list, bootDataItem.dlSt, bootDataItem.dlFin, bootDataItem.insSt, bootDataItem.insFin, null, null, null, null, null);
        int i = bootDataItem.tkct;
        boolean z = i == 1 || i == 2;
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strC = bld.c(a(it.next(), gVar), bootDataItem.clk_trac_macro, bootDataItem.clk_trac_value, z && bootDataItem.isFromCAClick);
            if (strC != null) {
                com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strC).a(this.a), new com.mgadplus.netlib.base.b() {
                    @Override
                    public void a(int i2, int i3, @Nullable String str, @Nullable Throwable th, String str2) {
                    }

                    @Override
                    public void b(@NonNull Object obj) {
                    }

                    @Override
                    public void a(Object obj) {
                    }
                });
            }
        }
    }

    private List<String> a(BootDataItem bootDataItem) {
        List<BootDataItem> list;
        List<String> list2;
        ArrayList arrayList = new ArrayList();
        if (bootDataItem != null && (list = bootDataItem.ad_list) != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem2 = list.get(i);
                if (bootDataItem2 != null && "boot".equalsIgnoreCase(bootDataItem2.ad_type) && !"3".equals(bootDataItem2.type) && (list2 = bootDataItem2.click) != null) {
                    arrayList.addAll(list2);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void a(VASTAd vASTAd, int i, String str, long j, g gVar) {
        if (vASTAd != null && vASTAd.getAdlosturl() != null && !TextUtils.isEmpty(vASTAd.getAdlosturl())) {
            if (str == null) {
                str = "";
            }
            String strA = a(vASTAd.getAdlosturl().replace("[LOSTID]", String.valueOf(i)).replace("[TPN]", str).replace("[LOSTTIME]", String.valueOf(j)), gVar);
            if (strA != null) {
                com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                    @Override
                    public void a(int i2, int i3, @Nullable String str2, @Nullable Throwable th, String str3) {
                    }

                    @Override
                    public void b(@NonNull Object obj) {
                    }

                    @Override
                    public void a(Object obj) {
                    }
                });
                return;
            }
            return;
        }
        SourceKitLogger.a("mgmi", "report adlost but error");
    }

    @Override
    public void a(final BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        final String strReplace;
        if (bootAdBean != null && (bootDataItem = bootAdBean.data) != null && !bootDataItem.hasExposed) {
            List<String> list = bootDataItem.impression;
            List<String> listB = b(bootDataItem);
            if (listB != null && listB.size() > 0) {
                list.addAll(listB);
            }
            int i = bootAdBean.data.sdk;
            if (i == 3) {
                com.mgmi.e.a aVar = bootAdBean.bidResult;
                if (list != null && list.size() > 0) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        if (next != null) {
                            if (aVar != null) {
                                next = a(aVar, next);
                            }
                            com.mgmi.e.f.b(com.mgadplus.netlib.a.e.a(next, this.a), bootAdBean.data.mk == 1);
                        }
                    }
                }
            } else if (i == 1) {
                com.mgmi.e.a aVar2 = bootAdBean.bidResult;
                if (list != null && list.size() > 0) {
                    Iterator<String> it2 = list.iterator();
                    while (it2.hasNext()) {
                        String next2 = it2.next();
                        if (next2 != null) {
                            if (aVar2 != null) {
                                next2 = a(aVar2, next2);
                            }
                            com.mgmi.e.f.b(com.mgadplus.netlib.a.e.a(next2, this.a), bootAdBean.data.mk == 1);
                        }
                    }
                }
            } else {
                com.mgmi.e.a aVar3 = bootAdBean.bidResult;
                if (list != null && list.size() > 0) {
                    for (String str : list) {
                        if (str != null) {
                            if (bootAdBean.data.isBackUp) {
                                strReplace = str.replace("[CT_USE]", "1");
                            } else {
                                strReplace = str.replace("[CT_USE]", "0");
                            }
                            if (aVar3 != null) {
                                strReplace = a(aVar3, strReplace);
                            }
                            com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strReplace).a(this.a), new com.mgadplus.netlib.base.b() {
                                @Override
                                public void a(Object obj) {
                                }

                                @Override
                                public void b(@NonNull Object obj) {
                                    SourceKitLogger.a("ReporterBase", "onSucess");
                                }

                                @Override
                                public void a(int i2, int i3, @Nullable String str2, @Nullable Throwable th, String str3) {
                                    SourceKitLogger.a("ReporterBase", "reportImpression error=" + i3 + "errDesc=" + str2);
                                    b.this.a(bootAdBean, "700." + i3, str2, strReplace);
                                }
                            });
                        }
                    }
                }
            }
            bootAdBean.data.hasExposed = true;
            return;
        }
        SourceKitLogger.a("ReporterBase", "reportImpression error-----------------");
    }

    private String a(com.mgmi.e.a aVar, String str) {
        if (aVar == null || str == null) {
            return str;
        }
        String strReplace = str.replace("[AUCTION_LOSS]", "" + aVar.getResult());
        if (!TextUtils.isEmpty(aVar.getWinECPM())) {
            strReplace = strReplace.replace("[AUCTION_PRICE]", wrd.a(aVar.getWinECPM()));
        }
        if (!TextUtils.isEmpty(aVar.getSecondECPM())) {
            String strA = wrd.a(aVar.getSecondECPM());
            if (!TextUtils.isEmpty(strA)) {
                strReplace = strReplace.replace("[HIGHEST_LOSS_PRICE]", strA);
            }
        }
        String str2 = strReplace;
        return !TextUtils.isEmpty(aVar.getBidWinner()) ? str2.replace("[AUCTION_SEAT_ID]", aVar.getBidWinner()) : str2;
    }

    @Override
    public void a(VASTAd vASTAd, String str, int i, int i2) {
        VASTMediaFile next;
        String str2;
        Iterator<VASTMediaFile> it = vASTAd.getMediaFiles().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next == null);
        VASTMediaFile vASTMediaFile = next;
        if (vASTMediaFile == null || vASTMediaFile.getValue() == null || TextUtils.isEmpty(vASTMediaFile.getValue())) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(com.mgmi.platform.b.g());
        if (i2 == 0) {
            com.mgmi.f.b.a(sb, 300000, -1, vASTMediaFile.getValue(), 3, i, str, this.a);
            a(vASTAd, "302000", vASTMediaFile.getValue(), str);
        } else if (i2 == 2) {
            com.mgmi.f.b.a(sb, 300000, -1, ImgoP2pConstants.LOCAL_HOST, 3, i, str, this.a);
            a(vASTAd, "302000", ImgoP2pConstants.LOCAL_HOST, str);
        } else if (i2 == 3) {
            String[] strArrH = g4d.h(vASTMediaFile.getValue());
            if (strArrH.length >= 2) {
                str2 = strArrH[1];
            } else {
                str2 = "";
            }
            com.mgmi.f.b.a(sb, 300000, -1, "local_file", str2, 3, i, str, this.a);
            a(vASTAd, "302000", "local_file", str);
        }
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&z=");
        sb.append("1");
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        if (!TextUtils.isEmpty(vASTAd.getResInfo())) {
            sb.append("&adinfo=");
            sb.append(vASTAd.getResInfo());
        }
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i3, int i4, @Nullable String str3, @Nullable Throwable th, String str4) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }

            @Override
            public void a(Object obj) {
            }
        });
    }

    @Override
    public void a(Object obj, String str, int i, int i2) {
        BootAdBean bootAdBean;
        BootDataItem bootDataItem;
        StringBuilder sb = new StringBuilder();
        sb.append(com.mgmi.platform.b.g());
        if (str == null) {
            str = "unkown url";
        }
        if (i == 0) {
            com.mgmi.f.b.a(sb, 0, 0, str, 3, 4, (String) null, this.a);
        } else {
            com.mgmi.f.b.a(sb, i, -1, str, 3, 4, (String) null, this.a);
        }
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&z=");
        sb.append("1");
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        if (obj != null && (obj instanceof VASTAd)) {
            VASTAd vASTAd = (VASTAd) obj;
            if (!TextUtils.isEmpty(vASTAd.getResInfo())) {
                sb.append("&adinfo=");
                sb.append(vASTAd.getResInfo());
            } else {
                sb.append("&adinfo=");
                sb.append("");
            }
        } else if (obj != null && (obj instanceof BootAdBean) && (bootDataItem = (bootAdBean = (BootAdBean) obj).data) != null && bootDataItem.resInfo != null) {
            sb.append("&adinfo=");
            sb.append(bootAdBean.data.resInfo);
        }
        if (i2 != -1) {
            sb.append("&cache=");
            sb.append(i2);
        }
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i3, int i4, @Nullable String str2, @Nullable Throwable th, String str3) {
            }

            @Override
            public void b(@NonNull Object obj2) {
            }

            @Override
            public void a(Object obj2) {
            }
        });
        if (i == 0 || 302001 == i || obj == null || !(obj instanceof VASTAd)) {
            return;
        }
        a((VASTAd) obj, String.valueOf(i), str, "");
    }

    @Override
    public void a(VASTAd vASTAd, int i, int i2, boolean z) {
        VASTMediaFile next;
        String str;
        String str2;
        Iterator<VASTMediaFile> it = vASTAd.getMediaFiles().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next == null);
        if (next == null || next.getValue() == null || TextUtils.isEmpty(next.getValue())) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(com.mgmi.platform.b.g());
        if (i2 == 0) {
            com.mgmi.f.b.a(sb, 0, 0, next.getValue(), 3, i, (String) null, this.a);
        } else if (i2 == 2) {
            String[] strArrH = g4d.h(next.getValue());
            if (strArrH.length < 2) {
                str2 = "";
            } else {
                str2 = strArrH[1];
            }
            com.mgmi.f.b.a(sb, 0, 0, ImgoP2pConstants.LOCAL_HOST, str2, 3, i, null, this.a);
        } else if (i2 == 3) {
            String[] strArrH2 = g4d.h(next.getValue());
            if (strArrH2.length < 2) {
                str = "";
            } else {
                str = strArrH2[1];
            }
            com.mgmi.f.b.a(sb, 0, 0, "local_file", str, 3, i, null, this.a);
        }
        if (("front".equals(vASTAd.getmAdtype()) || ("paster".equals(vASTAd.getmAdtype()) && vASTAd.getShow_type() == 1)) && i == 4 && !z) {
            sb.append("&type=");
            sb.append("3");
        }
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&z=");
        sb.append("1");
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        if (!TextUtils.isEmpty(vASTAd.getResInfo())) {
            sb.append("&adinfo=");
            sb.append(vASTAd.getResInfo());
        }
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i3, int i4, @Nullable String str3, @Nullable Throwable th, String str4) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }

            @Override
            public void a(Object obj) {
            }
        });
    }

    @Override
    public void a(VASTAd vASTAd) {
        VASTMediaFile next;
        Iterator<VASTMediaFile> it = vASTAd.getMediaFiles().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next == null);
        if (next == null || next.getValue() == null || TextUtils.isEmpty(next.getValue())) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, 0, 0, next.getValue(), 3, 4, (String) null, this.a);
        sb.append("&type=");
        sb.append("4");
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&z=");
        sb.append("1");
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        if (!TextUtils.isEmpty(vASTAd.getResInfo())) {
            sb.append("&adinfo=");
            sb.append(vASTAd.getResInfo());
        }
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }

            @Override
            public void a(Object obj) {
            }
        });
    }

    public void a(VASTAd vASTAd, String str, String str2, String str3) {
        String strB;
        if (vASTAd == null || vASTAd.getErrors() == null || vASTAd.getErrors().size() <= 0) {
            return;
        }
        List<String> errors = vASTAd.getErrors();
        ArrayList<String> arrayList = new ArrayList();
        for (String str4 : errors) {
            SourceKitLogger.a("mgmi", "reportErrors url=" + str4);
            String strB2 = "null";
            String strReplace = str4.replace("[ERRORCODE]", str == null ? "null" : str);
            if (str3 == null) {
                strB = "null";
            } else {
                strB = g4d.b(str3);
            }
            String strReplace2 = strReplace.replace("[ERRORMSG]", strB);
            if (str2 != null) {
                strB2 = g4d.b(str2);
            }
            String strReplace3 = strReplace2.replace("[ERRORURL]", strB2);
            if (vASTAd.getErrorReportType() != 0) {
                strReplace3 = strReplace3.replace("[CT_INDEX]", vASTAd.getErrorReportType() + "");
            }
            arrayList.add(strReplace3);
        }
        if (arrayList.size() > 0) {
            for (String str5 : arrayList) {
                if (str5 != null) {
                    com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(str5).a(this.a), new com.mgadplus.netlib.base.b() {
                        @Override
                        public void a(int i, int i2, @Nullable String str6, @Nullable Throwable th, String str7) {
                        }

                        @Override
                        public void b(@NonNull Object obj) {
                        }

                        @Override
                        public void a(Object obj) {
                        }
                    });
                }
            }
        }
    }

    public void a(BootAdBean bootAdBean, String str, String str2, String str3) {
        if (bootAdBean != null) {
            try {
                BootDataItem bootDataItem = bootAdBean.data;
                if (bootDataItem == null || TextUtils.isEmpty(bootDataItem.err)) {
                    return;
                }
                String strB = "null";
                String strReplace = bootAdBean.data.err.replace("[ERRORCODE]", str).replace("[ERRORMSG]", str2 == null ? "null" : g4d.b(str2));
                if (str3 != null) {
                    strB = g4d.b(str3);
                }
                String strA = com.mgmi.net.a.a.a(strReplace.replace("[ERRORURL]", strB), com.mgmi.ads.api.c.a());
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                    @Override
                    public void a(int i, int i2, @Nullable String str4, @Nullable Throwable th, String str5) {
                    }

                    @Override
                    public void b(@NonNull Object obj) {
                    }

                    @Override
                    public void a(Object obj) {
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public void a(BootAdBean bootAdBean, g gVar) {
        BootDataItem bootDataItem;
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null) {
            return;
        }
        List<String> list = bootDataItem.close;
        List<String> listC = c(bootDataItem);
        if (listC != null && listC.size() > 0) {
            list.addAll(listC);
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strA = a(it.next(), gVar);
            if (strA != null) {
                com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(strA).a(this.a), new com.mgadplus.netlib.base.b() {
                    @Override
                    public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                    }

                    @Override
                    public void b(@NonNull Object obj) {
                    }

                    @Override
                    public void a(Object obj) {
                    }
                });
            }
        }
    }

    @Override
    public void a(int i, i iVar, g gVar) {
        List<String> listD;
        if (iVar == null) {
            return;
        }
        if (i == 0 && iVar.m()) {
            return;
        }
        if (i == 0) {
            listD = iVar.b();
            iVar.a(true);
        } else if (i == 1) {
            listD = iVar.c();
        } else {
            listD = i == 2 ? iVar.d() : null;
        }
        a(listD);
    }

    @Override
    public void a(List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null) {
                com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(str).a(this.a), new com.mgadplus.netlib.base.b() {
                    @Override
                    public void a(int i, int i2, @Nullable String str2, @Nullable Throwable th, String str3) {
                    }

                    @Override
                    public void b(@NonNull Object obj) {
                    }

                    @Override
                    public void a(Object obj) {
                    }
                });
            }
        }
    }

    @Override
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(str).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str2, @Nullable Throwable th, String str3) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }

            @Override
            public void a(Object obj) {
            }
        });
    }
}
