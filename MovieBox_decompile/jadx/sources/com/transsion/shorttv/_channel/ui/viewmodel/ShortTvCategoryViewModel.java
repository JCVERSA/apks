package com.transsion.shorttv._channel.ui.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv._channel.model.ShortTvCategoryBean;
import com.transsion.shorttv._channel.model.ShortTvCategoryItemBean;
import com.transsion.shorttv.bean.Subject;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class ShortTvCategoryViewModel extends androidx.p009lifecycle.b {

    private int f50624b;

    private int f50625c;

    private final Lazy f50626d;

    private final Lazy f50627e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvCategoryViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50624b = 1;
        this.f50625c = 10;
        this.f50626d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvCategoryViewModel.n();
            }
        });
        this.f50627e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvCategoryViewModel.h();
            }
        });
    }

    public static final b0 h() {
        return new b0();
    }

    public final rq.a l() {
        return (rq.a) this.f50626d.getValue();
    }

    public final void m(ShortTvCategoryBean shortTvCategoryBean) {
        List<ShortTvCategoryItemBean> list;
        if (shortTvCategoryBean == null || (list = shortTvCategoryBean.getList()) == null) {
            return;
        }
        for (ShortTvCategoryItemBean shortTvCategoryItemBean : list) {
            Subject subject = shortTvCategoryItemBean.getSubject();
            String ops = subject != null ? subject.getOps() : null;
            if (ops == null || ops.length() == 0) {
                Subject subject2 = shortTvCategoryItemBean.getSubject();
                if (subject2 != null) {
                    subject2.setOps(shortTvCategoryBean.getOps());
                }
            }
        }
    }

    public static final rq.a n() {
        return (rq.a) kg.c.f63982e.a().h(rq.a.class);
    }

    public final void i(String type) {
        Intrinsics.h(type, "type");
        k.d(u0.a(this), y0.b(), null, new ShortTvCategoryViewModel$getCategoryList$1(type, this, null), 2, null);
    }

    public final b0 j() {
        return (b0) this.f50627e.getValue();
    }

    public final int k() {
        return this.f50624b;
    }

    public final void o(int i10) {
        this.f50624b = i10;
    }
}
