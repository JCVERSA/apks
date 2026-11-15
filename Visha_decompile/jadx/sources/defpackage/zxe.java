package defpackage;

import android.content.SharedPreferences;

public final class zxe implements o0f {
    public final SharedPreferences a;

    public zxe(aye ayeVar, SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    @Override
    public final String a(String str, String str2) {
        return this.a.getString(str, str2);
    }

    @Override
    public final Double b(String str, double d) {
        try {
            return Double.valueOf(this.a.getFloat(str, (float) d));
        } catch (ClassCastException unused) {
            return Double.valueOf(this.a.getString(str, String.valueOf(d)));
        }
    }

    @Override
    public final Long c(String str, long j) {
        try {
            return Long.valueOf(this.a.getLong(str, j));
        } catch (ClassCastException unused) {
            return Long.valueOf(this.a.getInt(str, (int) j));
        }
    }

    @Override
    public final Boolean d(String str, boolean z) {
        try {
            return Boolean.valueOf(this.a.getBoolean(str, z));
        } catch (ClassCastException unused) {
            return Boolean.valueOf(this.a.getString(str, String.valueOf(z)));
        }
    }
}
