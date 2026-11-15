package com.transsion.shorttv._channel.ui.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class ShortTvMovieViewModel extends androidx.p009lifecycle.b {

    public static final a f50628f = new a(null);

    private final Lazy f50629b;

    private final Lazy f50630c;

    private final Lazy f50631d;

    private final rq.a f50632e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvMovieViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50629b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvMovieViewModel.g();
            }
        });
        this.f50630c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvMovieViewModel.n();
            }
        });
        this.f50631d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvMovieViewModel.o();
            }
        });
        this.f50632e = (rq.a) kg.c.f63982e.a().h(rq.a.class);
    }

    public static final b0 g() {
        return new b0();
    }

    public static final b0 n() {
        return new b0();
    }

    public static final b0 o() {
        return new b0();
    }

    public final void h(String version) {
        Intrinsics.h(version, "version");
        k.d(u0.a(this), y0.b(), null, new ShortTvMovieViewModel$getFilterItems$1(this, version, null), 2, null);
    }

    public final LiveData i() {
        return j();
    }

    public final b0 j() {
        return (b0) this.f50629b.getValue();
    }

    public final void k(int i10, int i11, String str, Map map, boolean z10) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("page", Integer.valueOf(i10));
        jsonObject.addProperty("perPage", Integer.valueOf(i11));
        jsonObject.addProperty(TmcStartParams.KEY_CHANNEL_ID, str);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (StringsKt.c0((CharSequence) entry.getValue(), ",", false, 2, null)) {
                    JsonArray jsonArray = new JsonArray();
                    Iterator it = StringsKt.S0((CharSequence) entry.getValue(), new String[]{","}, false, 0, 6, null).iterator();
                    while (it.hasNext()) {
                        jsonArray.add((String) it.next());
                    }
                    jsonObject.add((String) entry.getKey(), jsonArray);
                } else {
                    jsonObject.addProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
        }
        k.d(u0.a(this), y0.b(), null, new ShortTvMovieViewModel$getMovieList$2(jsonObject, this, z10, str, map, null), 2, null);
    }

    public final LiveData l() {
        return m();
    }

    public final b0 m() {
        return (b0) this.f50630c.getValue();
    }
}
