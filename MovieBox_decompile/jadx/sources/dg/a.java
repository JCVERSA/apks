package dg;

import android.util.Log;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.net.exception.ApiException;
import com.tn.lib.net.exception.ServerException;
import io.reactivex.rxjava3.core.o;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class a implements o {

    public static final C0709a f59031b = new C0709a(null);

    private static final String f59032c = "0";

    private final String f59033a = "TNBaseObserver";

    public static final class C0709a {
        public C0709a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0709a() {
        }
    }

    public abstract void a(String str, String str2);

    @Override
    public void onNext(BaseDto t10) {
        Intrinsics.h(t10, "t");
        if (Intrinsics.c(t10.getCode(), f59032c)) {
            wf.a.C0922a.f(wf.a.f74274a, this.f59033a, "onNext: data=" + t10.getData(), false, 4, null);
            c(t10.getData());
            d(t10);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f59033a, "onNext: Server errorInfo=" + t10.getData(), false, 4, null);
        try {
            a(hg.a.f61349a.a(new ServerException(t10.getCode(), t10.getMsg())).getErrCode(), t10.getMsg());
            Unit unit = Unit.f64096a;
        } catch (Exception e10) {
            Log.e(this.f59033a, "onNext Exception " + e10.getMessage());
        }
    }

    public void d(BaseDto baseDto) {
        Intrinsics.h(baseDto, "baseDto");
    }

    @Override
    public void onComplete() {
        wf.a.C0922a.f(wf.a.f74274a, this.f59033a, "onComplete", false, 4, null);
    }

    @Override
    public void onError(Throwable e10) {
        Intrinsics.h(e10, "e");
        try {
            ApiException apiExceptionA = hg.a.f61349a.a(e10);
            wf.a.C0922a.f(wf.a.f74274a, this.f59033a, "onError: errorInfo=" + e10, false, 4, null);
            a(apiExceptionA.getErrCode(), apiExceptionA.getErrMsg());
        } catch (Exception e11) {
            Log.e(this.f59033a, "onError Exception " + e11.getMessage());
            a("", e11.getMessage());
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
        Intrinsics.h(d10, "d");
        wf.a.C0922a.f(wf.a.f74274a, this.f59033a, "Disposable=" + d10.isDisposed(), false, 4, null);
    }

    public void c(Object obj) {
    }
}
