package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

public final class lec {
    public final boolean a;
    public final String b;
    public final String c;

    public lec(boolean z, String str, String str2) {
        this.a = z;
        this.b = str;
        this.c = str2;
    }

    public static lec c(Context context) {
        boolean zE = ge.e();
        int iD = zE ? w6c.d(context, "push_env_mode", 0) : 0;
        lec lecVarF = f(zE, iD, "52a89908b30741bebc51034d9452f9fc", "85f5899508da4dcaa3ab88f82927d231", "f0f87fbc33954875b036499054070a5c", "d1237f72bdee434ba7d101365d63c244");
        if (TextUtils.isEmpty(lecVarF.a()) || TextUtils.isEmpty(lecVarF.b())) {
            Log.e("Visha_tpush", "empty tpush credentials: useTestEnv=" + lecVarF.d() + " canSwitch=" + zE + " storedMode=" + iD + " (check BuildConfig TPUSH_*_APP_ID/KEY)");
        }
        return lecVarF;
    }

    public static String e(String str) {
        return str != null ? str : "";
    }

    public static lec f(boolean z, int i, String str, String str2, String str3, String str4) {
        return (z && i == 1) ? new lec(true, e(str3), e(str4)) : new lec(false, e(str), e(str2));
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public boolean d() {
        return this.a;
    }
}
