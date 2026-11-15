package com.yandex.mobile.ads.impl;

import android.util.Log;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import defpackage.j1a;
import defpackage.l1a;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class rd {
    private static final CopyOnWriteArraySet<Logger> a = new CopyOnWriteArraySet<>();
    private static final Map<String, String> b;
    public static final int c = 0;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r2 = fe1.class.getPackage();
        String name = r2 != null ? r2.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        String name2 = fe1.class.getName();
        y45.i(name2, "getName(...)");
        linkedHashMap.put(name2, "okhttp.OkHttpClient");
        String name3 = gh0.class.getName();
        y45.i(name3, "getName(...)");
        linkedHashMap.put(name3, "okhttp.Http2");
        String name4 = l42.class.getName();
        y45.i(name4, "getName(...)");
        linkedHashMap.put(name4, "okhttp.TaskRunner");
        linkedHashMap.put("com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttplib.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        b = kotlin.collections.a.A(linkedHashMap);
    }

    public static void a(String str, int i, String str2, Throwable th) {
        int iMin;
        y45.j(str, "loggerName");
        y45.j(str2, "message");
        String strU1 = b.get(str);
        if (strU1 == null) {
            strU1 = l1a.u1(str, 23);
        }
        if (Log.isLoggable(strU1, i)) {
            if (th != null) {
                str2 = str2 + "\n" + Log.getStackTraceString(th);
            }
            int length = str2.length();
            int i2 = 0;
            while (i2 < length) {
                int iL0 = j1a.l0(str2, '\n', i2, false, 4, null);
                if (iL0 == -1) {
                    iL0 = length;
                }
                while (true) {
                    iMin = Math.min(iL0, i2 + FlacTagCreator.DEFAULT_PADDING);
                    String strSubstring = str2.substring(i2, iMin);
                    y45.i(strSubstring, "substring(...)");
                    Log.println(i, strU1, strSubstring);
                    if (iMin >= iL0) {
                        break;
                    } else {
                        i2 = iMin;
                    }
                }
                i2 = iMin + 1;
            }
        }
    }

    public static void a() {
        Level level;
        for (Map.Entry<String, String> entry : b.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Logger logger = Logger.getLogger(key);
            if (a.add(logger)) {
                logger.setUseParentHandlers(false);
                if (Log.isLoggable(value, 3)) {
                    level = Level.FINE;
                } else {
                    level = Log.isLoggable(value, 4) ? Level.INFO : Level.WARNING;
                }
                logger.setLevel(level);
                logger.addHandler(sd.a);
            }
        }
    }
}
