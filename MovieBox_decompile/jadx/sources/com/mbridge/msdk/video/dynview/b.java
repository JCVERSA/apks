package com.mbridge.msdk.video.dynview;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.dynview.listener.h;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class b {

    private static volatile b f38136b;

    public Map<String, SoftReference<View>> f38137a = new HashMap();

    private b() {
    }

    public static b a() {
        b bVar;
        if (f38136b != null) {
            return f38136b;
        }
        synchronized (b.class) {
            try {
                if (f38136b == null) {
                    f38136b = new b();
                }
                bVar = f38136b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    public void a(Context context, List<CampaignEx> list, h hVar, Map<String, Object> map) {
        new com.mbridge.msdk.video.dynview.ui.a(context, list, hVar, map);
    }

    public void a(c cVar, h hVar) {
        new com.mbridge.msdk.video.dynview.ui.a(cVar, hVar, new HashMap());
    }

    public void a(c cVar, h hVar, Map<String, Object> map) {
        new com.mbridge.msdk.video.dynview.ui.a(cVar, hVar, map);
    }
}
