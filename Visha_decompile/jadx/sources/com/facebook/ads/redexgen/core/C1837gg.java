package com.facebook.ads.redexgen.core;

import android.content.SharedPreferences;

public class C1837gg implements O7 {
    public final SharedPreferences.Editor A00;

    public C1837gg(SharedPreferences.Editor editor) {
        this.A00 = editor;
    }

    public final C1837gg A00(String str, long j) {
        this.A00.putLong(str, j);
        return this;
    }

    public final C1837gg A01(String str, String str2) {
        this.A00.putString(str, str2);
        return this;
    }

    public final void A02() {
        this.A00.apply();
    }
}
