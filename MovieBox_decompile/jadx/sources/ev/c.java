package ev;

import android.text.TextUtils;
import ci.p;
import com.tencent.mmkv.MMKV;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f59822a = new c();

    private c() {
    }

    public final String a() {
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            return mmkvC.getString("key_user_agent", "");
        }
        return null;
    }

    public final void b() {
        try {
            Result.Companion companion = Result.INSTANCE;
            mg.a.C0814a c0814a = mg.a.f66402a;
            MMKV mmkvC = c0814a.c();
            Object objPutString = null;
            String string = mmkvC != null ? mmkvC.getString("key_custom_date", "") : null;
            if (TextUtils.isEmpty(string)) {
                return;
            }
            if (Intrinsics.c(p.f16947a.c(), string)) {
                wf.a.C0922a.g(wf.a.f74274a, "AdDeveloperUtil --> 特殊权限已授予", false, 2, null);
                objPutString = Unit.f64096a;
            } else {
                wf.a.C0922a.g(wf.a.f74274a, "AdDeveloperUtil --> 特殊权限授权已过期", false, 2, null);
                MMKV mmkvC2 = c0814a.c();
                if (mmkvC2 != null) {
                    mmkvC2.putString("sp_code", "");
                }
                MMKV mmkvC3 = c0814a.c();
                if (mmkvC3 != null) {
                    mmkvC3.putString("custom_local_iso", "");
                }
                MMKV mmkvC4 = c0814a.c();
                if (mmkvC4 != null) {
                    mmkvC4.putString("custom_local_country", "");
                }
                MMKV mmkvC5 = c0814a.c();
                if (mmkvC5 != null) {
                    objPutString = mmkvC5.putString("custom_country_code", "");
                }
            }
            Result.m453constructorimpl(objPutString);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void c(String customDate) {
        Intrinsics.h(customDate, "customDate");
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("key_custom_date", customDate);
        }
    }

    public final void d(String str) {
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("key_user_agent", str);
        }
    }
}
