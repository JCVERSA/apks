package com.transsion.search_pugc.speech;

import com.blankj.utilcode.util.Utils;
import com.transsion.search.R$string;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f50515a = new e();

    private e() {
    }

    public final String a(int i10) {
        if (i10 == 1 || i10 == 2) {
            String string = Utils.a().getResources().getString(R$string.search_sr_try_again);
            Intrinsics.e(string);
            return string;
        }
        if (i10 == 6 || i10 == 7) {
            String string2 = Utils.a().getResources().getString(R$string.search_sr_try_speaking_again);
            Intrinsics.e(string2);
            return string2;
        }
        if (i10 != 16) {
            String string3 = Utils.a().getResources().getString(R$string.search_sr_wrong_try_again);
            Intrinsics.e(string3);
            return string3;
        }
        String string4 = Utils.a().getResources().getString(R$string.search_sr_cancelled);
        Intrinsics.e(string4);
        return string4;
    }
}
