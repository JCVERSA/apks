package com.transsion.shorttv.subtitle;

import androidx.fragment.app.FragmentActivity;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import nr.e;
import qr.k0;

public interface a {

    public static final C0634a f51066a = C0634a.f51067a;

    public static final class C0634a {

        static final C0634a f51067a = new C0634a();

        private C0634a() {
        }

        public final a a(FragmentActivity activity, k0 viewBinding, ShortTvViewModel shortTvViewModel, e epItem, String str) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(viewBinding, "viewBinding");
            Intrinsics.h(epItem, "epItem");
            return new ShortTVSubtitleControlImp(activity, viewBinding, shortTvViewModel, epItem, str);
        }
    }

    void a(Function1 function1);

    void b(Function1 function1);

    void c(boolean z10);

    void d(long j10);

    void e();

    void f();

    void h(xr.b bVar);

    void onDestroy();
}
