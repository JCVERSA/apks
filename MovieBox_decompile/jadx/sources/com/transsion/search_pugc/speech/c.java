package com.transsion.search_pugc.speech;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f50511c = new a(null);

    private Function0 f50512a;

    private final Lazy f50513b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.h();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String c() {
        String simpleName = c.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Handler d() {
        return (Handler) this.f50513b.getValue();
    }

    private final SpeechRecognizer f(Context context) {
        f.f50516a.a(c() + " --> getSpeechRecognizerOneParameterStrategy() --> deviceModel = " + Build.MODEL + " --> 采用第一种策略");
        return SpeechRecognizer.createSpeechRecognizer(context);
    }

    private final SpeechRecognizer g(Context context) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f fVar = f.f50516a;
            String strC = c();
            String str = Build.MODEL;
            fVar.a(strC + " --> deviceModel = " + str + " --> 采用第二种策略");
            List<ResolveInfo> listQueryIntentServices = Utils.a().getPackageManager().queryIntentServices(new Intent("android.speech.RecognitionService"), 0);
            Intrinsics.g(listQueryIntentServices, "queryIntentServices(...)");
            ResolveInfo resolveInfo = listQueryIntentServices.get(0);
            fVar.a(c() + " --> getSpeechRecognizerTwoParameterStrategy() --> packageName = " + resolveInfo.serviceInfo.packageName + " --> name = info.serviceInfo.name --> info = " + resolveInfo + " --> deviceModel = " + str);
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            objM453constructorimpl = Result.m453constructorimpl(SpeechRecognizer.createSpeechRecognizer(context, new ComponentName(serviceInfo.packageName, serviceInfo.name)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = null;
        }
        return (SpeechRecognizer) objM453constructorimpl;
    }

    public static final Handler h() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void l(c cVar) {
        com.transsion.baselib.report.launch.b.f42221a.b().putString("initialize_strategy", "initialize_two");
        f.f50516a.a(cVar.c() + " --> startListening() --> 标记当前不支持第一种策略 --> 回调给场景重新加载对象");
        Function0 function0 = cVar.f50512a;
        if (function0 != null) {
        }
        q.f50529a.f();
    }

    public final SpeechRecognizer e(Context context) {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (TextUtils.isEmpty(bVar.b().getString("initialize_one_affirm", ""))) {
            if (TextUtils.equals("TECNO AC8", Build.MODEL)) {
                return g(context);
            }
            String string = bVar.b().getString("initialize_strategy", "initialize_one");
            if (Intrinsics.c(string, "initialize_one")) {
                return f(context);
            }
            return Intrinsics.c(string, "initialize_two") ? g(context) : f(context);
        }
        f.f50516a.a(c() + " --> getSpeechRecognizer() --> 确定了支持第一种策略，直接返回");
        return f(context);
    }

    public final void i() {
        d().removeCallbacksAndMessages(null);
        f.f50516a.a(c() + " --> onReadyForSpeech() --> 当前策略起作用了");
        com.transsion.baselib.report.launch.b.f42221a.b().putString("initialize_strategy_affirm", "initialize_one_affirm");
    }

    public final void j(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f50512a = callback;
    }

    public final void k() {
        if (TextUtils.equals(com.transsion.baselib.report.launch.b.f42221a.b().getString("initialize_strategy", "initialize_one"), "initialize_two")) {
            f.f50516a.a(c() + " --> startListening() --> 当前策略已经是第二种策略了");
            return;
        }
        d().removeCallbacksAndMessages(null);
        d().postDelayed(new Runnable() {
            @Override
            public final void run() {
                c.l(this.f50510a);
            }
        }, 3000L);
        f.f50516a.a(c() + " --> startListening() --> 开启倒计时");
    }
}
