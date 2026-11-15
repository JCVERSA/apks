package com.mgmi.ads.api.e;

import android.text.TextUtils;
import com.mgmi.model.VASTFloatAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class d extends b {
    public List<VASTFloatAd> c;

    public d(com.mgmi.g.a aVar, com.mgmi.ads.api.d.b bVar) {
        super(aVar, bVar);
        this.c = new ArrayList();
    }

    public boolean a(String str) {
        List<VASTFloatAd> list = this.c;
        if (list == null || list.size() <= 0 || TextUtils.isEmpty(str)) {
            return true;
        }
        Iterator<VASTFloatAd> it = this.c.iterator();
        com.mgmi.platform.view.a aVar = null;
        int i = 0;
        while (it.hasNext()) {
            com.mgmi.platform.view.a entry = it.next().getEntry();
            if (entry != null && str.equalsIgnoreCase(entry.D())) {
                i++;
                aVar = entry;
            }
        }
        return aVar == null || i < aVar.E();
    }

    @Override
    public void d() {
        super.d();
        List<VASTFloatAd> list = this.c;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.c.clear();
    }

    public static boolean a(com.mgmi.platform.view.a aVar) {
        return aVar != null && aVar.m() > 0;
    }
}
