package ru;

import com.transsion.upgradesdk.net.j;
import com.transsion.upgradesdk.net.k;
import com.transsion.upgradesdk.net.l;
import com.transsion.upgradesdk.net.m;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.k0;

public abstract class g {

    public static final Lazy f71361a = LazyKt.b(k.f54528a);

    public static final Lazy f71362b = LazyKt.b(j.f54527a);

    public static final OkHttpClient f71363c = new OkHttpClient.Builder().addInterceptor(new a()).build();

    public static final Lazy f71364d = LazyKt.b(m.f54530a);

    public static final Lazy f71365e = LazyKt.b(l.f54529a);

    public static k0 a() {
        Object value = f71365e.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (k0) value;
    }

    public static k0 b() {
        Object value = f71364d.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (k0) value;
    }
}
