package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.ugc.UGCFilterItem;
import com.transsion.home.bean.ugc.UGCFilterResponse;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class UGCFilterViewModel extends androidx.p009lifecycle.b {

    public static final a f44516f = new a(null);

    public static final int f44517g = 8;

    private final Lazy f44518b;

    private final Lazy f44519c;

    private final Lazy f44520d;

    private final yk.c f44521e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilterViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44518b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UGCFilterViewModel.g();
            }
        });
        this.f44519c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UGCFilterViewModel.q();
            }
        });
        this.f44520d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UGCFilterViewModel.p();
            }
        });
        this.f44521e = (yk.c) kg.c.f63982e.a().h(yk.c.class);
    }

    public static final androidx.p009lifecycle.b0 g() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 p() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 q() {
        return new androidx.p009lifecycle.b0();
    }

    public final UGCFilterItem h(String str) {
        UGCFilterResponse uGCFilterResponse;
        BaseDto baseDto = (BaseDto) k().f();
        Object obj = null;
        List<UGCFilterItem> items = (baseDto == null || (uGCFilterResponse = (UGCFilterResponse) baseDto.getData()) == null) ? null : uGCFilterResponse.getItems();
        if (items == null) {
            return null;
        }
        for (Object obj2 : items) {
            if (Intrinsics.c(((UGCFilterItem) obj2).getCategoryId(), str)) {
                obj = obj2;
                break;
            }
        }
        return (UGCFilterItem) obj;
    }

    public final void i(String category) {
        Intrinsics.h(category, "category");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCFilterViewModel$getFilterItems$1(category, this, null), 2, null);
    }

    public final LiveData j() {
        return k();
    }

    public final androidx.p009lifecycle.b0 k() {
        return (androidx.p009lifecycle.b0) this.f44518b.getValue();
    }

    public final androidx.p009lifecycle.b0 l() {
        return (androidx.p009lifecycle.b0) this.f44520d.getValue();
    }

    public final void m(String category, int i10, int i11, String str, Integer num, Integer num2, Integer num3, String str2, boolean z10) {
        Intrinsics.h(category, "category");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCFilterViewModel$getUGCContentList$1(category.length() == 0 ? "Education" : category, i10, str, num, num2, num3, z10, this, i11, str2, null), 2, null);
    }

    public final LiveData n() {
        return o();
    }

    public final androidx.p009lifecycle.b0 o() {
        return (androidx.p009lifecycle.b0) this.f44519c.getValue();
    }
}
