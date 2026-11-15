package com.transsnet.downloader.manager;

import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.c0;
import com.tencent.mmkv.MMKV;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private static final int f57267h = 0;

    public static final a f57260a = new a(null);

    private static final Lazy f57261b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.i();
        }
    });

    private static final String f57262c = "key_next_dl_type";

    private static final String f57263d = "key_last_download_time";

    private static final String f57264e = "key_today_downloaded_times";

    private static final int f57265f = 1;

    private static final int f57266g = 2;

    private static final int f57268i = 1;

    private static final int f57269j = 2;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f57261b.getValue();
        }

        public final String b() {
            return f.f57263d;
        }

        public final int c() {
            return f.f57265f;
        }

        public final int d() {
            return f.f57266g;
        }

        private a() {
        }
    }

    public static final f i() {
        return new f();
    }

    public final int f() {
        return f57267h;
    }

    public final void g() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (!c0.f(bVar.b().getLong(f57263d, 0L))) {
            bVar.b().putInt(f57264e, 1);
            return;
        }
        MMKV mmkvB = bVar.b();
        String str = f57264e;
        bVar.b().putInt(str, mmkvB.getInt(str, 0) + 1);
    }

    public final void h() {
        f();
    }

    public final void j(FragmentActivity activity, Subject subject, Function0 function0) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(subject, "subject");
        if (f() != f57267h || function0 == null) {
            return;
        }
        function0.invoke();
    }
}
