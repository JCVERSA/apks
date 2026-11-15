package lv;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.therouter.TheRouter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c extends androidx.p009lifecycle.b {

    private final Lazy f66153b;

    private final Lazy f66154c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f66153b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.e();
            }
        });
        this.f66154c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.h();
            }
        });
    }

    public static final b0 e() {
        return new b0();
    }

    private final b0 g() {
        return (b0) this.f66153b.getValue();
    }

    public static final qx.a h() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public final LiveData f() {
        return g();
    }

    @Override
    protected void onCleared() {
        super.onCleared();
    }
}
