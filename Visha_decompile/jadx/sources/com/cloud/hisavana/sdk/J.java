package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.TemplateAdWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.lzy.okgo.model.Progress;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.el0;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y71;
import defpackage.yu3;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0013\b&\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H$¢\u0006\u0004\b\u0005\u0010\u0003J#\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bH$¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH$¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0004¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0004H\u0004¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0004¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0019\u0010\u0003J\u000f\u0010\u001a\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001c\u0010\u0003R$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020-8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b\u001e\u00102R\"\u00106\u001a\u00020-8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010/\u001a\u0004\b4\u00101\"\u0004\b5\u00102R\"\u00109\u001a\u00020-8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b*\u0010/\u001a\u0004\b7\u00101\"\u0004\b8\u00102R\"\u0010<\u001a\u00020-8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\"\u0010/\u001a\u0004\b:\u00101\"\u0004\b;\u00102R\u0014\u0010?\u001a\u00020\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006@"}, d2 = {"Lcom/cloud/hisavana/sdk/J;", "Landroid/app/Activity;", MethodDecl.initName, "()V", "Lzfb;", "w", "", NotificationCompat.CATEGORY_EVENT, "", "params", CmcdData.STREAMING_FORMAT_HLS, "(Ljava/lang/String;Ljava/lang/Object;)V", "Lcom/cloud/hisavana/sdk/Q0;", "o", "()Lcom/cloud/hisavana/sdk/Q0;", "u", "t", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "error", "e", "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "onBackPressed", "onStart", "onResume", "onPause", "onStop", "onDestroy", "v", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "b", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", CmcdData.OBJECT_TYPE_MANIFEST, "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", GslbInterceptor.HEADER_KEY_GSLB, "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "mAdBean", "Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;", "c", "Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;", "q", "()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;", "f", "(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;)V", "templateWebView", "", "d", "F", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "()F", "(F)V", "downX", "k", "j", "downY", "r", CmcdData.STREAM_TYPE_LIVE, "upX", "s", "n", "upY", TtmlNode.TAG_P, "()Ljava/lang/String;", Progress.TAG, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class J extends Activity {

    public AdsDTO mAdBean;

    public TemplateAdWebView templateWebView;

    public float downX = -1.0f;

    public float downY = -1.0f;

    public float upX = -1.0f;

    public float upY = -1.0f;

    public final class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
            int action = motionEvent.getAction();
            if (action == 0) {
                J.this.b(motionEvent.getX());
                J.this.j(motionEvent.getY());
                return false;
            }
            if (action != 1) {
                return false;
            }
            J.this.l(motionEvent.getX());
            J.this.n(motionEvent.getY());
            return false;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.common.activity.base.BaseTemplateActivity$loadTemplate$1$1", f = "BaseTemplateActivity.kt", l = {}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int a;
        final String b;
        final J c;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
        @nt1(c = "com.cloud.hisavana.sdk.common.activity.base.BaseTemplateActivity$loadTemplate$1$1$1", f = "BaseTemplateActivity.kt", l = {}, m = "invokeSuspend")
        public static final class a extends SuspendLambda implements s74 {
            int a;
            final String b;
            final J c;

            public static final class C0039a extends com.cloud.hisavana.sdk.common.tranmeasure.a {
                public final J b;

                public C0039a(J j) {
                    this.b = j;
                }

                @Override
                public void a(AdsDTO adsDTO) {
                    super.a(adsDTO);
                    this.b.w();
                    this.b.v();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, J j, wh1<? super a> wh1Var) {
                super(2, wh1Var);
                this.b = str;
                this.c = j;
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((a) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new a(this.b, this.c, wh1Var);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
                String str = this.b;
                if (str == null || str.length() == 0) {
                    ikd.b().w(this.c.p(), "read html error");
                    J j = this.c;
                    TaErrorCode taErrorCode = TaErrorCode.ERROR_TEMPLATE_HTML_READ_FAILED;
                    y45.i(taErrorCode, "ERROR_TEMPLATE_HTML_READ_FAILED");
                    j.e(taErrorCode);
                    this.c.a();
                    return zfb.a;
                }
                TemplateAdWebView templateWebView = this.c.getTemplateWebView();
                if (templateWebView != null) {
                    String str2 = this.b;
                    y45.i(str2, "$htmlStr");
                    templateWebView.loadTemplate(str2);
                }
                TemplateAdWebView templateWebView2 = this.c.getTemplateWebView();
                if (templateWebView2 != null) {
                    templateWebView2.setOnTouchListener(this.c.new a());
                }
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.c.getMAdBean(), this.c.getTemplateWebView(), new C0039a(this.c));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, J j, wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.b = str;
            this.c = j;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((b) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new b(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            z45.f();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            el0.d(HSScopeHelper.a.g(), null, null, new a(yu3.d(this.b), this.c, null), 3, null);
            return zfb.a;
        }
    }

    public static void d(J j, String str, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendAdEvent");
        }
        if ((i & 2) != 0) {
            obj = null;
        }
        j.h(str, obj);
    }

    public final void a() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    public final void b(float f) {
        this.downX = f;
    }

    public void e(TaErrorCode error) {
        y45.j(error, "error");
    }

    public final void f(TemplateAdWebView templateAdWebView) {
        this.templateWebView = templateAdWebView;
    }

    public final void g(AdsDTO adsDTO) {
        this.mAdBean = adsDTO;
    }

    public abstract void h(String event, Object params);

    public final float getDownX() {
        return this.downX;
    }

    public final void j(float f) {
        this.downY = f;
    }

    public final float getDownY() {
        return this.downY;
    }

    public final void l(float f) {
        this.upX = f;
    }

    public final AdsDTO getMAdBean() {
        return this.mAdBean;
    }

    public final void n(float f) {
        this.upY = f;
    }

    public abstract Q0 o();

    @Override
    public void onBackPressed() {
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView != null) {
            templateAdWebView.notifyLifecycle(5);
        }
    }

    @Override
    public void onDestroy() {
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.mAdBean);
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView != null) {
            templateAdWebView.destroyWebView();
        }
        this.templateWebView = null;
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView != null) {
            templateAdWebView.notifyLifecycle(3);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView != null) {
            templateAdWebView.notifyLifecycle(2);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView != null) {
            templateAdWebView.notifyLifecycle(1);
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView != null) {
            templateAdWebView.notifyLifecycle(4);
        }
    }

    public final String p() {
        String simpleName = getClass().getSimpleName();
        y45.i(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final TemplateAdWebView getTemplateWebView() {
        return this.templateWebView;
    }

    public final float getUpX() {
        return this.upX;
    }

    public final float getUpY() {
        return this.upY;
    }

    public final void t() {
        String templateHtmlFilePath;
        AdsDTO adsDTO = this.mAdBean;
        if (adsDTO != null && (templateHtmlFilePath = adsDTO.getTemplateHtmlFilePath()) != null) {
            HSScopeHelper hSScopeHelper = HSScopeHelper.a;
            if (el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new b(templateHtmlFilePath, this, null), 2, null) != null) {
                return;
            }
        }
        ikd.b().w(p(), "template path is null");
        TaErrorCode taErrorCode = TaErrorCode.ERROR_TEMPLATE_NOT_DOWNLOADED;
        y45.i(taErrorCode, "ERROR_TEMPLATE_NOT_DOWNLOADED");
        e(taErrorCode);
        a();
        zfb zfbVar = zfb.a;
    }

    public final void u() {
        Configuration configuration;
        Resources resources = getResources();
        if (((resources == null || (configuration = resources.getConfiguration()) == null) ? 1 : configuration.orientation) == 2) {
            AdsDTO adsDTO = this.mAdBean;
            if (adsDTO != null) {
                adsDTO.setOrientation(2);
            }
            setRequestedOrientation(6);
        } else {
            AdsDTO adsDTO2 = this.mAdBean;
            if (adsDTO2 != null) {
                adsDTO2.setOrientation(1);
            }
            setRequestedOrientation(7);
        }
        int iE = hm4.e();
        AdsDTO adsDTO3 = this.mAdBean;
        if (adsDTO3 == null) {
            return;
        }
        adsDTO3.setLayoutDirection(iE != 1 ? 0 : 1);
    }

    public final void v() {
        Q0 q0O;
        TemplateAdWebView templateAdWebView = this.templateWebView;
        if (templateAdWebView == null || !(templateAdWebView.getParent() instanceof ViewGroup) || (q0O = o()) == null) {
            return;
        }
        List listQ = y71.q(templateAdWebView);
        m.a aVar = m.a;
        AdsDTO adsDTO = this.mAdBean;
        ViewParent parent = templateAdWebView.getParent();
        y45.h(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        aVar.a(q0O, adsDTO, (ViewGroup) parent, listQ);
    }

    public abstract void w();
}
