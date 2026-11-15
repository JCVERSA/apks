package uf;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.d;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class c {

    private static long f73062a;

    public static final void b(View view, final long j10, final Function1 action) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(action, "action");
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                c.d(j10, action, view2);
            }
        });
    }

    public static void c(View view, long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 500;
        }
        b(view, j10, function1);
    }

    public static final void d(long j10, Function1 function1, View view) {
        long jNanoTime = System.nanoTime();
        long j11 = f73062a;
        if (j11 == 0 || jNanoTime - j11 >= j10) {
            f73062a = jNanoTime;
            Intrinsics.e(view);
            function1.invoke(view);
        }
    }

    public static final void e(View view) {
        Intrinsics.h(view, "<this>");
        view.setPadding(view.getPaddingStart(), view.getPaddingTop() + d.c(), view.getPaddingEnd(), view.getPaddingBottom());
    }

    public static final boolean f() {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_language_short_name", null);
        Locale locale = Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale;
        if (!Intrinsics.c(locale.getLanguage(), string) && string != null && string.length() > 0) {
            locale = new Locale(string, locale.getCountry());
        }
        return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
    }

    public static final void g(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(8);
    }

    public static final void h(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(4);
    }

    public static final boolean i(View view) {
        Intrinsics.h(view, "<this>");
        return view.getVisibility() == 0;
    }

    public static final void j(View view, boolean z10) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(z10 ? 0 : 8);
    }

    public static final void k(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(0);
    }
}
