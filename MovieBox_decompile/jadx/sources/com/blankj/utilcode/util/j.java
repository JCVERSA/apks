package com.blankj.utilcode.util;

import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class j {

    private static final Map f19473a = new ConcurrentHashMap(64);

    private static void a(long j10) {
        Map map = f19473a;
        if (map.size() < 64) {
            return;
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (j10 >= ((Long) ((Map.Entry) it.next()).getValue()).longValue()) {
                it.remove();
            }
        }
    }

    public static boolean b(View view, long j10) {
        return c(String.valueOf(view.hashCode()), j10);
    }

    public static boolean c(String str, long j10) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The key is null.");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("The duration is less than 0.");
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a(jElapsedRealtime);
        Map map = f19473a;
        Long l10 = (Long) map.get(str);
        if (l10 != null && jElapsedRealtime < l10.longValue()) {
            return false;
        }
        map.put(str, Long.valueOf(jElapsedRealtime + j10));
        return true;
    }
}
