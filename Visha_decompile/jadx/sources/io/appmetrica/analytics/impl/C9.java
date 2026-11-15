package io.appmetrica.analytics.impl;

import androidx.fragment.app.FragmentTransaction;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

public abstract class C9 {
    public static final Set a;
    public static final EnumSet b;
    public static final EnumSet c;
    public static final EnumSet d;
    public static final EnumSet e;
    public static final EnumSet f;
    public static final EnumSet g;
    public static final EnumSet h;
    public static final List i;
    public static final List j;

    static {
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        EnumC2588hb enumC2588hb2 = EnumC2588hb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        EnumC2588hb enumC2588hb3 = EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        EnumC2588hb enumC2588hb4 = EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        EnumC2588hb enumC2588hb5 = EnumC2588hb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        EnumC2588hb enumC2588hb6 = EnumC2588hb.EVENT_TYPE_ANR;
        a = CollectionUtils.unmodifiableSetOf(5892, 5896, 5891, 5889, 5890, 5968);
        EnumC2588hb enumC2588hb7 = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        EnumC2588hb enumC2588hb8 = EnumC2588hb.EVENT_TYPE_PURGE_BUFFER;
        EnumC2588hb enumC2588hb9 = EnumC2588hb.EVENT_TYPE_SEND_REFERRER;
        EnumC2588hb enumC2588hb10 = EnumC2588hb.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        EnumC2588hb enumC2588hb11 = EnumC2588hb.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        EnumC2588hb enumC2588hb12 = EnumC2588hb.EVENT_TYPE_ACTIVATION;
        EnumC2588hb enumC2588hb13 = EnumC2588hb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC2588hb enumC2588hb14 = EnumC2588hb.EVENT_TYPE_SET_SESSION_EXTRA;
        b = EnumSet.of(enumC2588hb7, enumC2588hb8, enumC2588hb9, enumC2588hb10, enumC2588hb11, enumC2588hb12, enumC2588hb13, enumC2588hb14);
        c = EnumSet.of(EnumC2588hb.EVENT_TYPE_UPDATE_FOREGROUND_TIME, enumC2588hb4);
        EnumC2588hb enumC2588hb15 = EnumC2588hb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC2588hb enumC2588hb16 = EnumC2588hb.EVENT_TYPE_REGULAR;
        d = EnumSet.of(enumC2588hb4, enumC2588hb5, enumC2588hb3, enumC2588hb, enumC2588hb2, enumC2588hb15, enumC2588hb13, enumC2588hb16, EnumC2588hb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION, EnumC2588hb.EVENT_TYPE_SEND_ECOMMERCE_EVENT, EnumC2588hb.EVENT_TYPE_SEND_REVENUE_EVENT, EnumC2588hb.EVENT_TYPE_SEND_AD_REVENUE_EVENT, enumC2588hb8, EnumC2588hb.EVENT_TYPE_INIT, EnumC2588hb.EVENT_TYPE_SEND_USER_PROFILE, EnumC2588hb.EVENT_TYPE_SET_USER_PROFILE_ID, enumC2588hb9, enumC2588hb10, enumC2588hb11, EnumC2588hb.EVENT_TYPE_FIRST_ACTIVATION, EnumC2588hb.EVENT_TYPE_START, EnumC2588hb.EVENT_TYPE_APP_OPEN, EnumC2588hb.EVENT_TYPE_APP_UPDATE, enumC2588hb6);
        e = EnumSet.of(enumC2588hb16);
        f = EnumSet.of(enumC2588hb16);
        g = EnumSet.of(enumC2588hb13);
        h = EnumSet.of(EnumC2588hb.EVENT_TYPE_ALIVE, enumC2588hb8, enumC2588hb14);
        i = Arrays.asList(0, 6145, Integer.valueOf(FragmentTransaction.TRANSIT_FRAGMENT_OPEN), 8224);
        j = Arrays.asList(12290);
    }
}
