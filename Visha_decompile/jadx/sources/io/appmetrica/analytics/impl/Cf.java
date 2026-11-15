package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

public abstract class Cf {
    public static final Map a;
    public static final SparseArray b;
    public static final Map c;
    public static final Map d;

    static {
        HashMap map = new HashMap();
        EnumC3045zk enumC3045zk = EnumC3045zk.FOREGROUND;
        map.put(enumC3045zk, 0);
        EnumC3045zk enumC3045zk2 = EnumC3045zk.BACKGROUND;
        map.put(enumC3045zk2, 1);
        a = Collections.unmodifiableMap(map);
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, enumC3045zk);
        sparseArray.put(1, enumC3045zk2);
        b = sparseArray;
        HashMap map2 = new HashMap();
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_INIT;
        map2.put(enumC2588hb, 1);
        EnumC2588hb enumC2588hb2 = EnumC2588hb.EVENT_TYPE_REGULAR;
        map2.put(enumC2588hb2, 4);
        EnumC2588hb enumC2588hb3 = EnumC2588hb.EVENT_TYPE_SEND_REFERRER;
        map2.put(enumC2588hb3, 5);
        EnumC2588hb enumC2588hb4 = EnumC2588hb.EVENT_TYPE_ALIVE;
        map2.put(enumC2588hb4, 7);
        EnumC2588hb enumC2588hb5 = EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        map2.put(enumC2588hb5, 26);
        EnumC2588hb enumC2588hb6 = EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        map2.put(enumC2588hb6, 26);
        EnumC2588hb enumC2588hb7 = EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        map2.put(enumC2588hb7, 26);
        EnumC2588hb enumC2588hb8 = EnumC2588hb.EVENT_TYPE_ANR;
        map2.put(enumC2588hb8, 25);
        EnumC2588hb enumC2588hb9 = EnumC2588hb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        map2.put(enumC2588hb9, 26);
        EnumC2588hb enumC2588hb10 = EnumC2588hb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        map2.put(enumC2588hb10, 26);
        EnumC2588hb enumC2588hb11 = EnumC2588hb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        map2.put(enumC2588hb11, 27);
        EnumC2588hb enumC2588hb12 = EnumC2588hb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        map2.put(enumC2588hb12, 27);
        EnumC2588hb enumC2588hb13 = EnumC2588hb.EVENT_TYPE_FIRST_ACTIVATION;
        map2.put(enumC2588hb13, 13);
        EnumC2588hb enumC2588hb14 = EnumC2588hb.EVENT_TYPE_START;
        map2.put(enumC2588hb14, 2);
        EnumC2588hb enumC2588hb15 = EnumC2588hb.EVENT_TYPE_APP_OPEN;
        map2.put(enumC2588hb15, 16);
        EnumC2588hb enumC2588hb16 = EnumC2588hb.EVENT_TYPE_APP_UPDATE;
        map2.put(enumC2588hb16, 17);
        EnumC2588hb enumC2588hb17 = EnumC2588hb.EVENT_TYPE_PERMISSIONS;
        map2.put(enumC2588hb17, 18);
        EnumC2588hb enumC2588hb18 = EnumC2588hb.EVENT_TYPE_APP_FEATURES;
        map2.put(enumC2588hb18, 19);
        EnumC2588hb enumC2588hb19 = EnumC2588hb.EVENT_TYPE_SEND_USER_PROFILE;
        map2.put(enumC2588hb19, 20);
        EnumC2588hb enumC2588hb20 = EnumC2588hb.EVENT_TYPE_SEND_REVENUE_EVENT;
        map2.put(enumC2588hb20, 21);
        EnumC2588hb enumC2588hb21 = EnumC2588hb.EVENT_TYPE_SEND_AD_REVENUE_EVENT;
        map2.put(enumC2588hb21, 40);
        EnumC2588hb enumC2588hb22 = EnumC2588hb.EVENT_TYPE_SEND_ECOMMERCE_EVENT;
        map2.put(enumC2588hb22, 35);
        map2.put(EnumC2588hb.EVENT_TYPE_CLEANUP, 29);
        EnumC2588hb enumC2588hb23 = EnumC2588hb.EVENT_TYPE_WEBVIEW_SYNC;
        map2.put(enumC2588hb23, 38);
        EnumC2588hb enumC2588hb24 = EnumC2588hb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION;
        map2.put(enumC2588hb24, 42);
        c = Collections.unmodifiableMap(map2);
        HashMap map3 = new HashMap();
        B8 b8 = new B8();
        H8 h8 = new H8(new L8());
        C8 c8 = new C8();
        C2953w3 c2953w3 = new C2953w3(new L8());
        C2724mn c2724mn = new C2724mn(new L8());
        C3015yf c3015yf = new C3015yf();
        Z8 z8A = C2411a9.a();
        z8A.b = c3015yf;
        z8A.c = c3015yf;
        C2411a9 c2411a9 = new C2411a9(z8A);
        Z8 z8A2 = C2411a9.a();
        z8A2.b = h8;
        C2411a9 c2411a10 = new C2411a9(z8A2);
        Z8 z8A3 = C2411a9.a();
        z8A3.b = c2953w3;
        C2411a9 c2411a11 = new C2411a9(z8A3);
        Z8 z8A4 = C2411a9.a();
        z8A4.b = c2724mn;
        C2411a9 c2411a12 = new C2411a9(z8A4);
        Z8 z8A5 = C2411a9.a();
        z8A5.a = b8;
        C2411a9 c2411a13 = new C2411a9(z8A5);
        Z8 z8A6 = C2411a9.a();
        z8A6.b = new Rn(new H8());
        C2411a9 c2411a14 = new C2411a9(z8A6);
        map3.put(enumC2588hb2, c2411a10);
        Z8 z8A7 = C2411a9.a();
        z8A7.b = new Af();
        map3.put(enumC2588hb3, new C2411a9(z8A7));
        Z8 z8A8 = C2411a9.a();
        z8A8.a = b8;
        z8A8.b = c8;
        z8A8.e = new C2460c8();
        z8A8.f = new C2485d8();
        map3.put(enumC2588hb4, new C2411a9(z8A8));
        map3.put(enumC2588hb9, c2411a9);
        map3.put(enumC2588hb10, c2411a9);
        map3.put(enumC2588hb11, c2411a11);
        map3.put(enumC2588hb12, c2411a11);
        map3.put(enumC2588hb5, c2411a11);
        map3.put(enumC2588hb6, c2411a11);
        map3.put(enumC2588hb7, c2411a11);
        map3.put(enumC2588hb8, c2411a11);
        Z8 z8A9 = C2411a9.a();
        z8A9.a = new B8();
        z8A9.b = c2953w3;
        map3.put(enumC2588hb14, new C2411a9(z8A9));
        EnumC2588hb enumC2588hb25 = EnumC2588hb.EVENT_TYPE_CUSTOM_EVENT;
        Z8 z8A10 = C2411a9.a();
        z8A10.d = new Bf();
        map3.put(enumC2588hb25, new C2411a9(z8A10));
        map3.put(enumC2588hb15, c2411a10);
        map3.put(enumC2588hb17, c2411a13);
        map3.put(enumC2588hb18, c2411a13);
        map3.put(enumC2588hb19, c2411a11);
        map3.put(enumC2588hb20, c2411a11);
        map3.put(enumC2588hb21, c2411a11);
        map3.put(enumC2588hb22, c2411a12);
        map3.put(enumC2588hb, c2411a14);
        map3.put(enumC2588hb16, c2411a14);
        map3.put(enumC2588hb13, c2411a10);
        map3.put(enumC2588hb23, c2411a10);
        map3.put(enumC2588hb24, c2411a11);
        d = Collections.unmodifiableMap(map3);
    }

    public static C2760o9 a(Long l, Long l2, Boolean bool) {
        C2760o9 c2760o9 = new C2760o9();
        if (l != null) {
            c2760o9.a = l.longValue();
            c2760o9.b = ((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(l.longValue() * 1000) / 1000;
        }
        if (l2 != null) {
            c2760o9.c = l2.longValue();
        }
        if (bool != null) {
            c2760o9.d = bool.booleanValue();
        }
        return c2760o9;
    }

    public static void a(C2710m9 c2710m9) {
        C2660k9[] c2660k9Arr = c2710m9.c;
        if (c2660k9Arr != null) {
            for (C2660k9 c2660k9 : c2660k9Arr) {
            }
        }
    }
}
