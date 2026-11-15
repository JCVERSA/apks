package com.yandex.mobile.ads.impl;

import android.content.pm.ActivityInfo;
import defpackage.abb;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public final class a1 {
    private static final String a = "com.yandex.mobile.ads.common.AdActivity has missed configuration attribute %s.";
    private static final Map<Integer, String> b = kotlin.collections.a.p(abb.a(16, "ActivityInfo.CONFIG_KEYBOARD"), abb.a(32, "ActivityInfo.CONFIG_KEYBOARD_HIDDEN"), abb.a(128, "ActivityInfo.CONFIG_ORIENTATION"), abb.a(256, "ActivityInfo.CONFIG_SCREEN_LAYOUT"), abb.a(512, "ActivityInfo.CONFIG_UI_MODE"), abb.a(1024, "ActivityInfo.CONFIG_SCREEN_SIZE"), abb.a(2048, "CONFIG_SMALLEST_SCREEN_SIZE"));

    public static void a(ActivityInfo activityInfo) {
        Object obj;
        y45.j(activityInfo, "adActivity");
        Map<Integer, String> map = b;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<Integer, String> next = it.next();
            int iIntValue = next.getKey().intValue();
            String value = next.getValue();
            if ((iIntValue & activityInfo.configChanges) == 0) {
                obj = value;
            }
            arrayList.add(obj);
        }
        for (Object obj2 : arrayList) {
            if (((String) obj2) != null) {
                obj = obj2;
                break;
            }
        }
        String str = (String) obj;
        if (str == null) {
            return;
        }
        String strA = z0.a(new Object[]{str}, 1, a, "format(...)");
        throw new bp0(strA, strA);
    }
}
