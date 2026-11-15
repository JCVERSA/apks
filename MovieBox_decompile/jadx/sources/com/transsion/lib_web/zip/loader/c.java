package com.transsion.lib_web.zip.loader;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public interface c {

    public static final a f44835a = a.f44836a;

    public static final class a {

        static final a f44836a = new a();

        private static final HashMap f44837b = MapsKt.j(new Pair(OSSHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*"), new Pair("Access-Control-Allow-Credentials", "*"));

        private static final String f44838c = "versionCode";

        private a() {
        }

        public final HashMap a() {
            return f44837b;
        }
    }

    public static final class b {
        public static Map a(c cVar, Map headers) {
            Intrinsics.h(headers, "headers");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(headers);
            linkedHashMap.putAll(c.f44835a.a());
            return linkedHashMap;
        }
    }

    WebResourceResponse a(WebResourceRequest webResourceRequest);
}
