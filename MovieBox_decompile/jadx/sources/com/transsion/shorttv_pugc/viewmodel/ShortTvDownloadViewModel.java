package com.transsion.shorttv_pugc.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv_pugc.bean.ShortTVFavInfo;
import com.transsion.shorttv_pugc.bean.Subject;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class ShortTvDownloadViewModel extends t0 {

    public static final a f52446k = new a(null);

    private final Lazy f52447a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvDownloadViewModel.p();
        }
    });

    private final b0 f52448b = new b0();

    private final b0 f52449c = new b0();

    private final b0 f52450d = new b0();

    private final b0 f52451e = new b0();

    private final b0 f52452f = new b0();

    private final b0 f52453g = new b0();

    private final b0 f52454h = new b0();

    private final b0 f52455i = new b0();

    private final b0 f52456j = new b0();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final us.a f() {
        return (us.a) this.f52447a.getValue();
    }

    public static final us.a p() {
        return (us.a) kg.c.f63982e.a().h(us.a.class);
    }

    public final void d(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        k.d(u0.a(this), null, null, new ShortTvDownloadViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final b0 e() {
        return this.f52448b;
    }

    public final void g(String subjectId, int i10, int i11) {
        Intrinsics.h(subjectId, "subjectId");
    }

    public final b0 h() {
        return this.f52452f;
    }

    public final b0 i() {
        return this.f52455i;
    }

    public final b0 j() {
        return this.f52454h;
    }

    public final b0 k() {
        return this.f52456j;
    }

    public final b0 l() {
        return this.f52449c;
    }

    public final b0 m() {
        return this.f52450d;
    }

    public final b0 n() {
        return this.f52453g;
    }

    public final b0 o() {
        return this.f52451e;
    }

    public final void q(rs.c item) {
        Intrinsics.h(item, "item");
        Map linkedHashMap = (Map) this.f52449c.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (item.d()) {
            linkedHashMap.remove(Integer.valueOf(item.a()));
        } else {
            linkedHashMap.put(Integer.valueOf(item.a()), item);
        }
        this.f52449c.q(linkedHashMap);
    }
}
