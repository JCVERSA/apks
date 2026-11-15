package com.yandex.mobile.ads.impl;

import com.transsion.push.PushConstants;

public enum lp0 {
    c(PushConstants.PUSH_SERVICE_TYPE_CLICK),
    EF19("invitationAccept");

    String b;

    lp0(String str) {
        this.b = str;
    }

    @Override
    public final String toString() {
        return this.b;
    }
}
