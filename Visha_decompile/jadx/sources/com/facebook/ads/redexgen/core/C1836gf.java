package com.facebook.ads.redexgen.core;

import android.content.SharedPreferences;

public final class C1836gf implements O8 {
    public final SharedPreferences A00;

    public C1836gf(SharedPreferences sharedPreferences) {
        this.A00 = sharedPreferences;
    }

    @Override
    public final C1837gg A6A() {
        return new C1837gg(this.A00.edit());
    }

    @Override
    public final long A8I(String str, long j) {
        return this.A00.getLong(str, j);
    }

    @Override
    public final String A96(String str, String str2) {
        return this.A00.getString(str, str2);
    }
}
