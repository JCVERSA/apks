package io.appmetrica.analytics.impl;

import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.LinkedList;

public final class C2486d9 extends AbstractC2816qf {
    public final C2619ii a;
    public final HashMap b;
    public final H4 c;

    public C2486d9(C2706m5 c2706m5) {
        C2619ii c2619ii = new C2619ii(c2706m5);
        this.a = c2619ii;
        this.c = new H4(c2619ii);
        this.b = a();
    }

    public final HashMap a() {
        HashMap map = new HashMap();
        map.put(EnumC2588hb.EVENT_TYPE_ACTIVATION, new C2576h(this.a));
        map.put(EnumC2588hb.EVENT_TYPE_START, new C2573gl(this.a));
        map.put(EnumC2588hb.EVENT_TYPE_REGULAR, new C2941vg(this.a));
        C2762ob c2762ob = new C2762ob(this.a);
        map.put(EnumC2588hb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_SEND_REFERRER, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_CUSTOM_EVENT, c2762ob);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_SET_SESSION_EXTRA;
        C2619ii c2619ii = this.a;
        map.put(enumC2588hb, new C2448bl(c2619ii, c2619ii.t));
        map.put(EnumC2588hb.EVENT_TYPE_APP_OPEN, new Cg(this.a));
        map.put(EnumC2588hb.EVENT_TYPE_PURGE_BUFFER, new Ef(this.a));
        map.put(EnumC2588hb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, new C3031z6(this.a));
        map.put(EnumC2588hb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF, new C2666kf(this.a));
        map.put(EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE, new C2873sn(this.a));
        C2848rn c2848rn = new C2848rn(this.a);
        map.put(EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF, c2848rn);
        map.put(EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT, c2848rn);
        map.put(EnumC2588hb.EVENT_TYPE_ANR, c2762ob);
        EnumC2588hb enumC2588hb2 = EnumC2588hb.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        C2619ii c2619ii2 = this.a;
        map.put(enumC2588hb2, new C2448bl(c2619ii2, c2619ii2.e));
        EnumC2588hb enumC2588hb3 = EnumC2588hb.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        C2619ii c2619ii3 = this.a;
        map.put(enumC2588hb3, new C2448bl(c2619ii3, c2619ii3.f));
        map.put(EnumC2588hb.EVENT_TYPE_SEND_USER_PROFILE, c2762ob);
        EnumC2588hb enumC2588hb4 = EnumC2588hb.EVENT_TYPE_SET_USER_PROFILE_ID;
        C2619ii c2619ii4 = this.a;
        map.put(enumC2588hb4, new C2448bl(c2619ii4, c2619ii4.k));
        map.put(EnumC2588hb.EVENT_TYPE_SEND_REVENUE_EVENT, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_SEND_AD_REVENUE_EVENT, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_CLEANUP, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_SEND_ECOMMERCE_EVENT, c2762ob);
        map.put(EnumC2588hb.EVENT_TYPE_WEBVIEW_SYNC, c2762ob);
        map.put(EnumC2588hb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION, new L9(this.a));
        return map;
    }

    public final C2619ii b() {
        return this.a;
    }

    public final void a(EnumC2588hb enumC2588hb, AbstractC2935va abstractC2935va) {
        this.b.put(enumC2588hb, abstractC2935va);
    }

    @Override
    public final AbstractC2461c9 a(int i) {
        LinkedList linkedList = new LinkedList();
        EnumC2588hb enumC2588hbA = EnumC2588hb.a(i);
        H4 h4 = this.c;
        if (h4 != null) {
            h4.a(enumC2588hbA, linkedList);
        }
        AbstractC2935va abstractC2935va = (AbstractC2935va) this.b.get(enumC2588hbA);
        if (abstractC2935va != null) {
            abstractC2935va.a(linkedList);
        }
        return new C2436b9(linkedList);
    }

    @VisibleForTesting
    public final AbstractC2935va a(EnumC2588hb enumC2588hb) {
        return (AbstractC2935va) this.b.get(enumC2588hb);
    }
}
