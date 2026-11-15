package com.mgmi.ads.api;

import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.net.bean.BootDataItem;

public class j {
    private static j a;
    private String b = "vod";
    private com.mgmi.net.bean.e c;
    private VASTAd d;

    private j() {
    }

    public static j a() {
        if (a == null) {
            synchronized (j.class) {
                try {
                    if (a == null) {
                        a = new j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public String b() {
        return this.b;
    }

    public void a(VASTAd vASTAd) {
        this.d = vASTAd;
        if (vASTAd instanceof VASTFloatAd) {
            this.c = new com.mgmi.net.bean.e(vASTAd.getTrackingEventlandClick(null), vASTAd.getTrackingEventLandclose(null), vASTAd.getTrackingEventlandClick(com.mgmi.e.f.a()), vASTAd.getTrackingEventLandclose(com.mgmi.e.f.a()), ((VASTFloatAd) vASTAd).getDelayRandTime());
        } else if (vASTAd != null) {
            this.c = new com.mgmi.net.bean.e(vASTAd.getTrackingEventlandClick(null), vASTAd.getTrackingEventLandclose(null), vASTAd.getTrackingEventlandClick(com.mgmi.e.f.a()), vASTAd.getTrackingEventLandclose(com.mgmi.e.f.a()));
        }
    }

    public void a(BootDataItem bootDataItem) {
        if (bootDataItem != null) {
            this.c = new com.mgmi.net.bean.e(bootDataItem.landClick, bootDataItem.landClose, null, null);
        } else {
            this.c = null;
        }
    }

    public void a(String str) {
        this.b = str;
    }
}
