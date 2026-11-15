package hj;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wj.f;
import wj.g;

public final class b {

    public static final b f61369a = new b();

    public static final class a implements g {
        a(c cVar) {
        }

        @Override
        public void a(boolean z10) {
            g.a.a(this, z10);
        }

        @Override
        public void onFail() {
        }

        @Override
        public void onSuccess() {
        }
    }

    private b() {
    }

    private final boolean b(String str) {
        return TextUtils.equals("/common/dialog", Uri.parse(str).getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE));
    }

    public static void d(b bVar, Context context, String str, c cVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            cVar = null;
        }
        bVar.c(context, str, cVar);
    }

    private final void e(FragmentActivity fragmentActivity, String str, final c cVar) {
        String queryParameter = Uri.parse(str).getQueryParameter("name");
        if (Intrinsics.c(queryParameter, "MemberPageVideoTaskDialog")) {
            f fVar = (f) TheRouter.d(f.class, new Object[0]);
            if (fVar != null) {
                fVar.c(fragmentActivity, new Function1(cVar) {
                    @Override
                    public final Object invoke(Object obj) {
                        return b.f(null, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
            return;
        }
        if (Intrinsics.c(queryParameter, "DownloadInterceptDialog")) {
            f fVar2 = (f) TheRouter.d(f.class, new Object[0]);
            if (fVar2 != null) {
                fVar2.d(new a(cVar));
                return;
            }
            return;
        }
        wf.a.C0922a.l(wf.a.f74274a, "cm_dialog", "name = " + queryParameter + " --> 没有匹配到", false, 4, null);
    }

    public static final Unit f(c cVar, boolean z10) {
        if (cVar != null) {
            cVar.a(z10);
        }
        return Unit.f64096a;
    }

    public final void c(Context context, String deeplink, c cVar) {
        Object objM453constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(deeplink, "deeplink");
        if (TextUtils.isEmpty(deeplink)) {
            return;
        }
        if (b(deeplink)) {
            if (context instanceof FragmentActivity) {
                e((FragmentActivity) context, deeplink, cVar);
                return;
            }
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(deeplink);
            Intrinsics.g(uri, "parse(...)");
            hr.c.j(uri);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m452boximpl(objM453constructorimpl);
    }
}
