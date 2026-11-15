package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.u0;
import com.transsion.home.bean.CategoryBean;
import com.transsion.moviedetailapi.bean.CategoryItemBean;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class CategoryViewModel extends androidx.p009lifecycle.b {

    private int f44439b;

    private int f44440c;

    private final Lazy f44441d;

    private final Lazy f44442e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategoryViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44439b = 1;
        this.f44440c = 10;
        this.f44441d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return CategoryViewModel.n();
            }
        });
        this.f44442e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return CategoryViewModel.h();
            }
        });
    }

    public static final androidx.p009lifecycle.b0 h() {
        return new androidx.p009lifecycle.b0();
    }

    public final yk.b l() {
        return (yk.b) this.f44441d.getValue();
    }

    public final void m(CategoryBean categoryBean) {
        List<CategoryItemBean> list;
        if (categoryBean == null || (list = categoryBean.getList()) == null) {
            return;
        }
        for (CategoryItemBean categoryItemBean : list) {
            Subject subject = categoryItemBean.getSubject();
            String ops = subject != null ? subject.getOps() : null;
            if (ops == null || ops.length() == 0) {
                Subject subject2 = categoryItemBean.getSubject();
                if (subject2 != null) {
                    subject2.setOps(categoryBean.getOps());
                }
            }
        }
    }

    public static final yk.b n() {
        return (yk.b) kg.c.f63982e.a().h(yk.b.class);
    }

    public final void i(String type) {
        Intrinsics.h(type, "type");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new CategoryViewModel$getCategoryList$1(type, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 j() {
        return (androidx.p009lifecycle.b0) this.f44442e.getValue();
    }

    public final int k() {
        return this.f44439b;
    }

    public final void o(int i10) {
        this.f44439b = i10;
    }
}
