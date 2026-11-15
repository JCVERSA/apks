package com.transsion.base.report.athena.sampler;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class EventConfig {

    public static final EventConfig f41878a = new EventConfig();

    private static final String f41879b = "[\n    {\n        \"eventExpr\":\"(event =='ad_trigger')\",\n        \"batchKey\":\"客户端采样因子A\",\n        \"samplingRate\":0\n    },\n    {\n       \"eventExpr\":\"(event =='ad_display')\",\n        \"batchKey\":\"客户端采样因子b\",\n        \"samplingRate\":10\n    },\n    {\n       \"eventExpr\":\"(event =='ad_click')\",\n        \"batchKey\":\"客户端采样因子b\",\n        \"samplingRate\":90\n    }\n]";

    private static volatile List f41880c;

    private static final Set f41881d;

    private static final Set f41882e;

    static {
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.g(setNewSetFromMap, "newSetFromMap(...)");
        f41881d = setNewSetFromMap;
        Set setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.g(setNewSetFromMap2, "newSetFromMap(...)");
        f41882e = setNewSetFromMap2;
    }

    private EventConfig() {
    }

    private final void f(String str) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f41880c = (List) o.f().fromJson(str, new TypeToken<List<? extends EventStrategyBean>>() {
            }.getType());
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "sampler", "EventConfig --> initEventStrategy() --> error = " + thM456exceptionOrNullimpl, false, 4, null);
            f41880c = null;
        }
    }

    private final boolean g(String str) {
        if (str == null || StringsKt.q0(str)) {
            return false;
        }
        try {
            JsonElement string = JsonParser.parseString(str);
            Intrinsics.g(string, "parseString(...)");
            return string.isJsonObject() || string.isJsonArray();
        } catch (Exception unused) {
            return false;
        }
    }

    public final void a(String event) {
        Intrinsics.h(event, "event");
        f41882e.add(event);
    }

    public final void b(String event) {
        Intrinsics.h(event, "event");
        f41881d.add(event);
    }

    public final Set c() {
        return CollectionsKt.W0(f41882e);
    }

    public final Set d() {
        return CollectionsKt.W0(f41881d);
    }

    public final List e() {
        return f41880c;
    }

    public final void h(String event) {
        Intrinsics.h(event, "event");
        f41882e.remove(event);
    }

    public final void i(String event) {
        Intrinsics.h(event, "event");
        f41881d.remove(event);
    }

    public final void j(String str) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "sampler", "EventConfig --> saveEventStrategy() --> eventStrategy = " + str, false, 4, null);
        if (TextUtils.isEmpty(str)) {
            wf.a.C0922a.l(c0922a, "sampler", "EventConfig --> saveEventStrategy() --> eventStrategy is empty!", false, 4, null);
        } else if (g(str)) {
            f(str);
        } else {
            wf.a.C0922a.l(c0922a, "sampler", "EventConfig --> saveEventStrategy() --> eventStrategy is not json!", false, 4, null);
        }
    }
}
