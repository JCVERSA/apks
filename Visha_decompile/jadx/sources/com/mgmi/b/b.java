package com.mgmi.b;

import com.mgmi.model.VASTFloatAd;
import com.mgmi.model.h;
import com.mgmi.model.r;
import java.util.HashMap;
import java.util.List;

public class b {
    private HashMap<Float, h> a = new HashMap<>();

    public static class a {
        public static final b a = new b();
    }

    public static b a() {
        return a.a;
    }

    public void b() {
        HashMap<Float, h> map = this.a;
        if (map != null) {
            map.clear();
        }
    }

    public void a(com.mgmi.platform.view.a aVar, r rVar) {
        List<VASTFloatAd> listD;
        VASTFloatAd vASTFloatAd;
        h innerVideo;
        HashMap<Float, h> map;
        if (rVar == null || aVar == null || (listD = rVar.d()) == null || listD.size() == 0 || (vASTFloatAd = listD.get(0)) == null || (innerVideo = vASTFloatAd.getInnerVideo()) == null) {
            return;
        }
        innerVideo.e = vASTFloatAd.getDuration();
        if (vASTFloatAd.isPlayerUse() || (map = this.a) == null) {
            return;
        }
        map.put(Float.valueOf(aVar.t()), innerVideo);
    }
}
