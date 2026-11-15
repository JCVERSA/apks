package com.vungle.ads.internal.network.converters;

import java.io.IOException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlinx.serialization.h;
import kotlinx.serialization.json.d;
import kotlinx.serialization.json.n;
import okhttp3.ResponseBody;

public final class JsonConverter implements com.vungle.ads.internal.network.converters.a {
    public static final a Companion = new a(null);
    private static final kotlinx.serialization.json.a json = n.b(null, new Function1<d, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((d) obj);
            return Unit.f64096a;
        }

        public final void invoke(d Json) {
            Intrinsics.h(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);
    private final KType kType;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public JsonConverter(KType kType) {
        Intrinsics.h(kType, "kType");
        this.kType = kType;
    }

    @Override
    public Object convert(ResponseBody responseBody) throws IOException {
        if (responseBody != null) {
            try {
                String strString = responseBody.string();
                if (strString != null) {
                    Object objB = json.b(h.b(kotlinx.serialization.json.a.f65262d.a(), this.kType), strString);
                    CloseableKt.a(responseBody, null);
                    return objB;
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(responseBody, th2);
                    throw th3;
                }
            }
        }
        CloseableKt.a(responseBody, null);
        return null;
    }
}
