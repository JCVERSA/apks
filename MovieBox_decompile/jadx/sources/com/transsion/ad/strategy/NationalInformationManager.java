package com.transsion.ad.strategy;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class NationalInformationManager {

    public static final NationalInformationManager f41173a = new NationalInformationManager();

    private NationalInformationManager() {
    }

    public final String c() {
        String simpleName = NationalInformationManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final Object b(Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new NationalInformationManager$getAllNationalInformationList$2(null), continuation);
    }

    public final String d() {
        String string;
        MMKV mmkvC = mg.a.f66402a.c();
        String strO = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            strO = string;
        }
        if (TextUtils.isEmpty(strO)) {
            strO = tg.b.f72740a.o();
        }
        if (strO.length() <= 0 || strO.length() < 3) {
            return strO;
        }
        String strSubstring = strO.substring(0, 3);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final Object e(String str, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new NationalInformationManager$getNationalInformation$2(str, null), continuation);
    }

    public final Object f(Context context, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new NationalInformationManager$initLocalMcc$2(context, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
