package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.AndroidUtils;

public final class C2839re extends Jc {
    public C2839re() {
        super(EnumC2914ue.UNDEFINED);
        a(1, EnumC2914ue.WIFI);
        a(0, EnumC2914ue.CELL);
        a(3, EnumC2914ue.ETHERNET);
        a(2, EnumC2914ue.BLUETOOTH);
        a(4, EnumC2914ue.VPN);
        if (AndroidUtils.isApiAchieved(27)) {
            a(6, EnumC2914ue.LOWPAN);
        }
        if (AndroidUtils.isApiAchieved(26)) {
            a(5, EnumC2914ue.WIFI_AWARE);
        }
    }
}
