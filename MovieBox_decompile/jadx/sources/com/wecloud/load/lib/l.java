package com.wecloud.load.lib;

import android.util.Log;
import com.google.gson.Gson;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class l {

    public static final l f58612a = new l();

    private static final Lazy f58613b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return l.c();
        }
    });

    private static volatile Boolean f58614c;

    private l() {
    }

    private final Gson b() {
        return (Gson) f58613b.getValue();
    }

    public static final Gson c() {
        return new Gson();
    }

    private final String e() {
        try {
            ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "network_probe", false, 2, null);
            String value = configBeanD != null ? configBeanD.getValue() : null;
            if (value != null && value.length() != 0) {
                int length = value.length();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("got network_probe remote config JSON from ConfigManager, key=network_probe, length=");
                sb2.append(length);
                sb2.append(", value=");
                sb2.append(value);
                return value;
            }
            return null;
        } catch (Exception e10) {
            Log.w("NativeProbeCfgLoader", "load network_probe config from ConfigManager failed: " + e10.getMessage(), e10);
            return null;
        }
    }

    public final boolean d() {
        Object objM453constructorimpl;
        NativeProbeRemoteConfig nativeProbeRemoteConfig;
        Boolean enableOnlineProbe;
        Boolean bool = f58614c;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String strE = e();
            boolean zBooleanValue = false;
            if (strE != null) {
                String string = StringsKt.n1(strE).toString();
                if (StringsKt.W(string, "\"", false, 2, null) && StringsKt.G(string, "\"", false, 2, null)) {
                    try {
                        String str = (String) b().fromJson(string, String.class);
                        String string2 = str != null ? StringsKt.n1(str).toString() : null;
                        string = string2 == null ? "" : string2;
                    } catch (Exception unused) {
                    }
                }
                String lowerCase = string.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                if (Intrinsics.c(lowerCase, "true")) {
                    zBooleanValue = true;
                } else if (!Intrinsics.c(lowerCase, "false") && (nativeProbeRemoteConfig = (NativeProbeRemoteConfig) b().fromJson(string, NativeProbeRemoteConfig.class)) != null && (enableOnlineProbe = nativeProbeRemoteConfig.getEnableOnlineProbe()) != null) {
                    zBooleanValue = enableOnlineProbe.booleanValue();
                }
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(zBooleanValue));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            Log.w("NativeProbeCfgLoader", "parse network_probe remote config failed: " + thM456exceptionOrNullimpl.getMessage(), thM456exceptionOrNullimpl);
        }
        Boolean bool2 = Boolean.FALSE;
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = bool2;
        }
        Boolean bool3 = (Boolean) objM453constructorimpl;
        boolean zBooleanValue2 = bool3.booleanValue();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("network_probe remote config parsed successfully: enabled=");
        sb2.append(zBooleanValue2);
        f58614c = bool3;
        return zBooleanValue2;
    }
}
