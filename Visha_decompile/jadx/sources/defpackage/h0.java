package defpackage;

import android.os.Bundle;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.ThreadUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.subscribe.Publisher;
import com.transsion.apiinvoke.subscribe.SubscribeCallback;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class h0 {
    public static final a i = new a(null);
    public static h0 j;
    public String e;
    public hw4 f;
    public final String a = "AISubtitleManager";
    public ArrayList b = new ArrayList();
    public int c = 1;
    public long d = -1;
    public final SubscribeCallback g = new SubscribeCallback() {
        @Override
        public final void onPublishData(Publisher publisher, Serializable serializable) {
            h0.z(this.a, publisher, serializable);
        }
    };
    public final SubscribeCallback h = new SubscribeCallback() {
        @Override
        public final void onPublishData(Publisher publisher, Serializable serializable) {
            h0.x(this.a, publisher, serializable);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final synchronized h0 a() {
            h0 h0VarB;
            h0VarB = b();
            y45.g(h0VarB);
            return h0VarB;
        }

        public final h0 b() {
            if (h0.j == null) {
                h0.j = new h0();
            }
            return h0.j;
        }

        public a() {
        }
    }

    public static final void A(h0 h0Var, Serializable serializable) {
        if (h0Var.f == null) {
            Log.e(h0Var.a, "scribeTranslateText scribeCallback null ");
        }
        hw4 hw4Var = h0Var.f;
        if (hw4Var != null) {
            y45.h(serializable, "null cannot be cast to non-null type kotlin.String");
            hw4Var.a((String) serializable);
        }
    }

    public static final void E(final h0 h0Var, final e74 e74Var, final ApiResponse apiResponse) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                h0.F(apiResponse, h0Var, e74Var);
            }
        });
    }

    public static final void F(ApiResponse apiResponse, h0 h0Var, e74 e74Var) {
        boolean zIsSuccess = apiResponse.isSuccess();
        Log.d(h0Var.a, "updateConfig " + zIsSuccess);
        if (zIsSuccess) {
            if (e74Var != null) {
                e74Var.invoke(Boolean.TRUE);
            }
        } else if (e74Var != null) {
            e74Var.invoke(Boolean.FALSE);
        }
    }

    public static final void q(final h0 h0Var, final e74 e74Var, ApiResponse apiResponse) {
        final boolean zIsSuccess = apiResponse.isSuccess();
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                h0.r(this.b, zIsSuccess, e74Var);
            }
        });
    }

    public static final void r(h0 h0Var, boolean z, e74 e74Var) {
        Log.d(h0Var.a, "initCaptionService " + z);
        if (z) {
            if (e74Var != null) {
                e74Var.invoke(Boolean.TRUE);
            }
        } else if (e74Var != null) {
            e74Var.invoke(Boolean.FALSE);
        }
    }

    public static final void u(final s74 s74Var, final String str, final ApiResponse apiResponse) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                h0.v(apiResponse, s74Var, str);
            }
        });
    }

    public static final void v(ApiResponse apiResponse, s74 s74Var, String str) {
        if (apiResponse == null || !apiResponse.isSuccess()) {
            if (s74Var != null) {
                s74Var.invoke(str, Boolean.FALSE);
                return;
            }
            return;
        }
        Object objContent = apiResponse.content();
        y45.i(objContent, "content(...)");
        if (objContent instanceof Bundle) {
            Bundle bundle = (Bundle) objContent;
            if (!bundle.getBoolean("success")) {
                if (s74Var != null) {
                    s74Var.invoke(str, Boolean.FALSE);
                }
            } else {
                String string = bundle.getString("translate_text");
                if (s74Var != null) {
                    if (string == null) {
                        string = "";
                    }
                    s74Var.invoke(string, Boolean.TRUE);
                }
            }
        }
    }

    public static final void x(final h0 h0Var, Publisher publisher, Serializable serializable) {
        y45.h(serializable, "null cannot be cast to non-null type kotlin.Int");
        h0Var.c = ((Integer) serializable).intValue();
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                h0.y(this.b);
            }
        });
        int i2 = h0Var.c;
        if (i2 == 3) {
            h0Var.d = System.currentTimeMillis();
        } else {
            if (i2 != 4 || h0Var.d <= 0) {
                return;
            }
            ny5.c(System.currentTimeMillis() - h0Var.d);
            h0Var.d = -1L;
        }
    }

    public static final void y(h0 h0Var) {
        Log.i(h0Var.a, "service_state " + h0Var.c);
        l6a.b().c(h0Var.c);
    }

    public static final void z(final h0 h0Var, Publisher publisher, final Serializable serializable) {
        Log.e("Subtitle_Out", h0Var.a + " scribeTranslateTextCallback " + serializable);
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                h0.A(this.b, serializable);
            }
        });
    }

    public final void B(e74 e74Var, hw4 hw4Var) {
        Log.d(this.a, TtmlNode.START);
        SubscribeManager.getInstance(new Publisher.Host("AICoreSpeechChannel", "AudioTranslateService")).addSubscribe("translate_text", this.g);
        boolean zIsSuccess = new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("AudioTranslateService").apiMethod(TtmlNode.START).build().invoke().isSuccess();
        Log.d(this.a, "start " + zIsSuccess);
        if (zIsSuccess) {
            this.f = hw4Var;
            if (e74Var != null) {
                e74Var.invoke(Boolean.TRUE);
                return;
            }
            return;
        }
        this.f = null;
        if (e74Var != null) {
            e74Var.invoke(Boolean.FALSE);
        }
    }

    public final void C() {
        Log.d(this.a, "stop");
        SubscribeManager.getInstance(new Publisher.Host("AICoreSpeechChannel", "AudioTranslateService")).removeSubscribe("translate_text", this.g);
        this.f = null;
        new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("AudioTranslateService").apiMethod("stop").build().invoke();
    }

    public final void D(final e74 e74Var, AILaunageConfig aILaunageConfig) {
        y45.j(aILaunageConfig, "config");
        o(aILaunageConfig);
        Log.d(this.a, "updateConfig " + aILaunageConfig);
        new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("AudioTranslateService").addParameter(m(aILaunageConfig)).apiMethod("updateConfig").build().invokeAsync(new ApiCallback() {
            @Override
            public final void response(ApiResponse apiResponse) {
                h0.E(this.a, e74Var, apiResponse);
            }
        });
    }

    public final Bundle m(AILaunageConfig aILaunageConfig) {
        Bundle bundle = new Bundle();
        bundle.putString("fromLang", aILaunageConfig.getFromLang());
        bundle.putString("toLang", aILaunageConfig.getToLang());
        bundle.putInt("lookahead", aILaunageConfig.getLookahead());
        bundle.putSerializable("lookback", Integer.valueOf(aILaunageConfig.getLookback()));
        bundle.putString("subtitle_config", aILaunageConfig.getSubConfigJson());
        return bundle;
    }

    public final List n() {
        if (!this.b.isEmpty()) {
            return this.b;
        }
        ApiResponse apiResponseInvoke = new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("AudioTranslateService").apiMethod("getBuiltInLanguages").build().invoke();
        if (apiResponseInvoke != null && apiResponseInvoke.isSuccess()) {
            this.b.clear();
            this.b.addAll((Collection) apiResponseInvoke.content());
        }
        return this.b;
    }

    public final void o(AILaunageConfig aILaunageConfig) {
        if ("none".equals(aILaunageConfig.getToLang())) {
            aILaunageConfig.setToLang(aILaunageConfig.getFromLang());
        }
    }

    public final void p(final e74 e74Var, AILaunageConfig aILaunageConfig, String str) {
        y45.j(aILaunageConfig, "config");
        y45.j(str, Progress.TAG);
        Log.d(this.a, "initCaptionService " + aILaunageConfig + " " + str);
        this.e = str;
        SubscribeManager.getInstance(new Publisher.Host("AICoreSpeechChannel", "AudioTranslateService")).addSubscribe("service_state", this.h);
        o(aILaunageConfig);
        new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("AudioTranslateService").addParameter(m(aILaunageConfig)).apiMethod("initService").build().invokeAsync(new ApiCallback() {
            @Override
            public final void response(ApiResponse apiResponse) {
                h0.q(this.a, e74Var, apiResponse);
            }
        });
    }

    public final boolean s() {
        return this.c >= 2;
    }

    public final void t(final String str, AILaunageConfig aILaunageConfig, final s74 s74Var) {
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(aILaunageConfig, "config");
        o(aILaunageConfig);
        m(aILaunageConfig);
        new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("TextTransService").addParameter(str).addParameter(aILaunageConfig.getFromLang()).addParameter(aILaunageConfig.getToLang()).apiMethod("offlineTranslate").build().invokeAsync(new ApiCallback() {
            @Override
            public final void response(ApiResponse apiResponse) {
                h0.u(s74Var, str, apiResponse);
            }
        });
    }

    public final void w(String str) {
        y45.j(str, Progress.TAG);
        String str2 = this.a;
        String str3 = this.e;
        if (str3 == null) {
            y45.B("initInstanceTag");
            str3 = null;
        }
        Log.d(str2, "release " + str + " " + str3);
        String str4 = this.e;
        if (str4 == null) {
            y45.B("initInstanceTag");
            str4 = null;
        }
        if (!str.equals(str4)) {
            Log.w(this.a, "release return");
            return;
        }
        SubscribeManager.getInstance(new Publisher.Host("AICoreSpeechChannel", "AudioTranslateService")).removeSubscribe("translate_text", this.g);
        SubscribeManager.getInstance(new Publisher.Host("AICoreSpeechChannel", "AudioTranslateService")).removeSubscribe("service_state", this.h);
        this.f = null;
        new ApiRequest.Builder().channel("AICoreSpeechChannel").apiName("AudioTranslateService").apiMethod("release").build().invoke();
    }
}
