package com.facebook.ads.redexgen.core;

import android.content.Context;
import com.facebook.ads.AdSettings;

public final class C1867hB implements TL {
    @Override
    public final String A71() {
        return null;
    }

    @Override
    public final String A7F() {
        return null;
    }

    @Override
    public final C1231Se A7e(SQ sq) {
        return null;
    }

    @Override
    public final String A8O() {
        return null;
    }

    @Override
    public final String A98() {
        if (AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT) {
            return AdSettings.getTestAdType().getAdTypeString();
        }
        return null;
    }

    @Override
    public final boolean AAR() {
        return AdSettings.isMixedAudience();
    }

    @Override
    public final boolean AAX() {
        return false;
    }

    @Override
    public final Boolean AAb() {
        return null;
    }

    @Override
    public final boolean isTestMode(Context context) {
        return AdSettings.isTestMode(context);
    }
}
