package com.transsion.baseui.util;

import com.blankj.utilcode.util.Utils;
import com.transsion.baseui.R$layout;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public abstract class m {
    public static final void a(int i10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            fh.b.a aVar = fh.b.f60176a;
            int i11 = R$layout.base_layout_new_info_toast;
            String string = Utils.a().getString(i10);
            Intrinsics.g(string, "getString(...)");
            aVar.g(i11, string, (24 & 4) != 0 ? 0 : 0, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void b(String str) {
        Intrinsics.h(str, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            fh.b.f60176a.g(R$layout.base_layout_new_info_toast, str, (24 & 4) != 0 ? 0 : 0, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void c(int i10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            fh.b.a aVar = fh.b.f60176a;
            int i11 = R$layout.base_layout_new_success_toast;
            String string = Utils.a().getString(i10);
            Intrinsics.g(string, "getString(...)");
            aVar.g(i11, string, (24 & 4) != 0 ? 0 : 0, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void d(int i10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            fh.b.a aVar = fh.b.f60176a;
            int i11 = R$layout.base_layout_new_warn_toast;
            String string = Utils.a().getString(i10);
            Intrinsics.g(string, "getString(...)");
            aVar.g(i11, string, (24 & 4) != 0 ? 0 : 0, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void e(String str) {
        Intrinsics.h(str, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            fh.b.f60176a.g(R$layout.base_layout_new_warn_toast, str, (24 & 4) != 0 ? 0 : 0, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
