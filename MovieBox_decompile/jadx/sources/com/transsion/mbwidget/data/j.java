package com.transsion.mbwidget.data;

import com.transsion.mbwidget.R$mipmap;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;

public final class j {

    public static final j f44902a = new j();

    private static final Map f44903b = MapsKt.l(TuplesKt.a("img_default_1", Integer.valueOf(R$mipmap.img_widget_subject_default_1)), TuplesKt.a("img_default_2", Integer.valueOf(R$mipmap.img_widget_subject_default_2)), TuplesKt.a("img_default_3", Integer.valueOf(R$mipmap.img_widget_subject_default_3)), TuplesKt.a("img_default_4", Integer.valueOf(R$mipmap.img_widget_subject_default_4)));

    private static final Lazy f44904c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return j.e();
        }
    });

    private static final Lazy f44905d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return j.f();
        }
    });

    private static final Lazy f44906e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return j.g();
        }
    });

    private static final Lazy f44907f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return j.h();
        }
    });

    private j() {
    }

    public static final Subject e() {
        return new Subject("8906247916759695608", null, "Avatar", null, new Cover(null, null, null, "img_default_1", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -22, 67108863, null);
    }

    public static final Subject f() {
        return new Subject("4191963760367656968", null, "Avengers: Endgame", null, new Cover(null, null, null, "img_default_2", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -22, 67108863, null);
    }

    public static final Subject g() {
        return new Subject("5390197429792821032", null, "Titanic", null, new Cover(null, null, null, "img_default_3", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -22, 67108863, null);
    }

    public static final Subject h() {
        return new Subject("9155478106520576008", null, "The Lion King", null, new Cover(null, null, null, "img_default_4", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -22, 67108863, null);
    }

    private final Subject i() {
        return (Subject) f44904c.getValue();
    }

    private final Subject j() {
        return (Subject) f44905d.getValue();
    }

    private final Subject k() {
        return (Subject) f44906e.getValue();
    }

    private final Subject l() {
        return (Subject) f44907f.getValue();
    }

    public final List m() {
        return CollectionsKt.q(i(), j(), k(), l());
    }

    public final Integer n(String str) {
        return (Integer) f44903b.get(str);
    }
}
