package com.google.firebase.sessions;

import android.util.Base64;
import kotlin.text.StringsKt;

public final class r {

    public static final r f31867a = new r();

    private static final String f31868b;

    private static final String f31869c;

    private static final String f31870d;

    static {
        String strEncodeToString = Base64.encodeToString(StringsKt.E(q.f31866a.e()), 10);
        f31868b = strEncodeToString;
        f31869c = "firebase_session_" + strEncodeToString + "_data";
        f31870d = "firebase_session_" + strEncodeToString + "_settings";
    }

    private r() {
    }

    public final String a() {
        return f31869c;
    }

    public final String b() {
        return f31870d;
    }
}
