package com.google.firebase.sessions.settings;

import android.net.Uri;
import java.net.URL;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;

public final class RemoteSettingsFetcher implements com.google.firebase.sessions.settings.a {

    public static final a f31880d = new a(null);

    private final com.google.firebase.sessions.b f31881a;

    private final CoroutineContext f31882b;

    private final String f31883c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public RemoteSettingsFetcher(com.google.firebase.sessions.b appInfo, CoroutineContext blockingDispatcher, String baseUrl) {
        Intrinsics.h(appInfo, "appInfo");
        Intrinsics.h(blockingDispatcher, "blockingDispatcher");
        Intrinsics.h(baseUrl, "baseUrl");
        this.f31881a = appInfo;
        this.f31882b = blockingDispatcher;
        this.f31883c = baseUrl;
    }

    public final URL c() {
        return new URL(new Uri.Builder().scheme("https").authority(this.f31883c).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.f31881a.b()).appendPath("settings").appendQueryParameter("build_version", this.f31881a.a().a()).appendQueryParameter("display_version", this.f31881a.a().f()).build().toString());
    }

    @Override
    public Object a(Map map, Function2 function2, Function2 function3, Continuation continuation) {
        Object objG = i.g(this.f31882b, new RemoteSettingsFetcher$doConfigFetch$2(this, map, function2, function3, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public RemoteSettingsFetcher(com.google.firebase.sessions.b bVar, CoroutineContext coroutineContext, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, coroutineContext, (i10 & 4) != 0 ? "firebase-settings.crashlytics.com" : str);
    }
}
