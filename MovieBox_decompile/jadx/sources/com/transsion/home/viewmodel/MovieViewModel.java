package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
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
import kotlinx.coroutines.y0;

public final class MovieViewModel extends androidx.p009lifecycle.b {

    public static final a f44461f = new a(null);

    public static final int f44462g = 8;

    private final Lazy f44463b;

    private final Lazy f44464c;

    private final Lazy f44465d;

    private final yk.c f44466e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovieViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44463b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieViewModel.g();
            }
        });
        this.f44464c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieViewModel.o();
            }
        });
        this.f44465d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieViewModel.p();
            }
        });
        this.f44466e = (yk.c) kg.c.f63982e.a().h(yk.c.class);
    }

    public static final androidx.p009lifecycle.b0 g() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 o() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 p() {
        return new androidx.p009lifecycle.b0();
    }

    public final void h(Integer num, String version) {
        Intrinsics.h(version, "version");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieViewModel$getFilterItems$1(this, num, version, null), 2, null);
    }

    public final LiveData i() {
        return j();
    }

    public final androidx.p009lifecycle.b0 j() {
        return (androidx.p009lifecycle.b0) this.f44463b.getValue();
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
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieViewModel$getMovieList$2(jsonObject, this, z10, str, map, null), 2, null);
    }

    public final LiveData l() {
        return m();
    }

    public final androidx.p009lifecycle.b0 m() {
        return (androidx.p009lifecycle.b0) this.f44464c.getValue();
    }

    public final androidx.p009lifecycle.b0 n() {
        return (androidx.p009lifecycle.b0) this.f44465d.getValue();
    }
}
