package io.appmetrica.analytics.impl;

import defpackage.c74;
import defpackage.ye9;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class El {
    public static final Set a = ye9.j("appmetrica_clids", StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_get_ad_url", "appmetrica_report_ad_url", StartupParamsCallback.APPMETRICA_UUID);
    public static final SystemTimeProvider b = new SystemTimeProvider();
    public static final W3 c = new W3();

    public static final boolean a(String str) {
        return !(str == null || str.length() == 0);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0091  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final boolean a(Hl hl, Collection collection, Map map, c74 c74Var) {
        boolean zA;
        if (collection == null || collection.isEmpty() || collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            switch (str.hashCode()) {
                case -1367801046:
                    if (!str.equals(StartupParamsCallback.APPMETRICA_UUID)) {
                        if (!hl.w) {
                            if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                                break;
                            }
                        }
                        return false;
                    }
                    zA = a(hl.d);
                    if (!zA) {
                        return false;
                    }
                    break;
                    break;
                case 155670667:
                    if (!str.equals("appmetrica_get_ad_url")) {
                        if (!hl.w) {
                            if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                                break;
                            }
                        }
                        return false;
                    }
                    zA = a(hl.i);
                    if (!zA) {
                        return false;
                    }
                    break;
                    break;
                case 299713912:
                    if (!str.equals(StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH)) {
                        if (!hl.w) {
                            if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                                break;
                            }
                        }
                        return false;
                    }
                    zA = a(hl.b);
                    if (!zA) {
                        return false;
                    }
                    break;
                    break;
                case 530949152:
                    if (!str.equals("appmetrica_clids")) {
                        if (!hl.w) {
                            if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                                break;
                            }
                        }
                        return false;
                    }
                    W3 w3 = c;
                    T3 t3 = (T3) c74Var.invoke();
                    w3.getClass();
                    zA = W3.a(map, hl, t3);
                    if (!zA) {
                        return false;
                    }
                    break;
                    break;
                case 703740463:
                    if (!str.equals("appmetrica_report_ad_url")) {
                        if (!hl.w) {
                            if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                                break;
                            }
                        }
                        return false;
                    }
                    zA = a(hl.j);
                    if (!zA) {
                        return false;
                    }
                    break;
                    break;
                case 1117383061:
                    if (!str.equals(StartupParamsCallback.APPMETRICA_DEVICE_ID)) {
                        if (!hl.w) {
                            if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                                break;
                            }
                        }
                        return false;
                    }
                    zA = a(hl.a);
                    if (!zA) {
                        return false;
                    }
                    break;
                    break;
                default:
                    if (!hl.w) {
                        if (b.currentTimeSeconds() <= hl.o + ((long) hl.A.a)) {
                            break;
                        }
                    }
                    return false;
            }
        }
        return true;
    }
}
