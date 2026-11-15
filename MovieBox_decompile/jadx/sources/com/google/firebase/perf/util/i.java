package com.google.firebase.perf.util;

import android.content.Context;
import android.content.res.Resources;
import java.net.URI;

public class i {

    private static String[] f31554a;

    public static boolean a(URI uri, Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier == 0) {
            return true;
        }
        uc.a.e().a("Detected domain allowlist, only allowlisted domains will be measured.");
        if (f31554a == null) {
            f31554a = resources.getStringArray(identifier);
        }
        String host = uri.getHost();
        if (host == null) {
            return true;
        }
        for (String str : f31554a) {
            if (host.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
