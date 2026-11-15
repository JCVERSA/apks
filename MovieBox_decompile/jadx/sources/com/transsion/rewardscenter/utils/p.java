package com.transsion.rewardscenter.utils;

import com.transsion.rewardscenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public abstract class p {
    public static final void a(boolean z10, String string) {
        Intrinsics.h(string, "string");
        if (z10) {
            fh.b.f60176a.g(R$layout.toast_success_layout, string, (24 & 4) != 0 ? 0 : 17, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
        } else {
            fh.b.f60176a.g(R$layout.toast_warning_layout, string, (24 & 4) != 0 ? 0 : 17, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
        }
    }
}
