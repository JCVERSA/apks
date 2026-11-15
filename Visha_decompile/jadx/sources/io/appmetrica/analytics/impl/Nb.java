package io.appmetrica.analytics.impl;

import android.content.res.Configuration;
import defpackage.x71;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.util.List;

public final class Nb {
    public static List a(Configuration configuration) {
        return AndroidUtils.isApiAchieved(24) ? Ob.a(configuration) : x71.e(AbstractC2939ve.a(configuration.locale));
    }
}
