package com.cloud.hisavana.sdk.common.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.J;
import com.cloud.hisavana.sdk.Q0;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.TemplateAdWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.u;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.p5;
import defpackage.ujd;
import defpackage.ul4;
import defpackage.vnd;
import defpackage.y45;
import java.lang.ref.WeakReference;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\f\u0010\u0003J!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001f¨\u0006#"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;", "Lcom/cloud/hisavana/sdk/J;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "J", "I", "w", "", NotificationCompat.CATEGORY_EVENT, "", "params", CmcdData.STREAMING_FORMAT_HLS, "(Ljava/lang/String;Ljava/lang/Object;)V", "Lcom/cloud/hisavana/sdk/Q0;", "o", "()Lcom/cloud/hisavana/sdk/Q0;", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "error", "e", "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", "onDestroy", "K", "Lujd;", "H", "()Lujd;", "Ljava/lang/String;", "broadCastPrefix", CmcdData.OBJECT_TYPE_INIT_SEGMENT, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HisavanaInterstitialTemplateActivity extends J {

    public static final Companion INSTANCE = new Companion(null);
    public static WeakReference j;

    public String broadCastPrefix = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(WeakReference weakReference) {
            HisavanaInterstitialTemplateActivity.j = weakReference;
        }

        public Companion() {
        }
    }

    public static final class b extends ujd {
        public b() {
        }

        @Override
        public void a() {
            U0.k(ul4.a(), HisavanaInterstitialTemplateActivity.this.getMAdBean());
        }

        @Override
        public void b(int i, boolean z) {
            AdsDTO mAdBean = HisavanaInterstitialTemplateActivity.this.getMAdBean();
            if (mAdBean != null) {
                HisavanaInterstitialTemplateActivity hisavanaInterstitialTemplateActivity = HisavanaInterstitialTemplateActivity.this;
                Context contextA = ul4.a();
                float downX = hisavanaInterstitialTemplateActivity.getDownX();
                float downY = hisavanaInterstitialTemplateActivity.getDownY();
                float upX = hisavanaInterstitialTemplateActivity.getUpX();
                float upY = hisavanaInterstitialTemplateActivity.getUpY();
                TemplateAdWebView templateWebView = hisavanaInterstitialTemplateActivity.getTemplateWebView();
                boolean z2 = false;
                int width = templateWebView != null ? templateWebView.getWidth() : 0;
                TemplateAdWebView templateWebView2 = hisavanaInterstitialTemplateActivity.getTemplateWebView();
                DownUpPointBean downUpPointBean = new DownUpPointBean(downX, downY, upX, upY, width, templateWebView2 != null ? templateWebView2.getHeight() : 0);
                Integer fullScreenFlag = mAdBean.getFullScreenFlag();
                if (fullScreenFlag != null && fullScreenFlag.intValue() == 1) {
                    z2 = true;
                }
                U0.c(contextA, mAdBean, downUpPointBean, z2, z);
            }
            J.d(HisavanaInterstitialTemplateActivity.this, "_click", null, 2, null);
        }

        @Override
        public void c(TaErrorCode taErrorCode) {
            y45.j(taErrorCode, "error");
            ikd.b().w(HisavanaInterstitialTemplateActivity.this.p(), "template webview load error: " + taErrorCode.getErrorMessage());
            HisavanaInterstitialTemplateActivity.this.h("_error", taErrorCode);
            HisavanaInterstitialTemplateActivity.this.a();
        }

        @Override
        public void d() {
            HisavanaInterstitialTemplateActivity.this.G();
        }

        @Override
        public void e() {
            u uVarN = u.n();
            HisavanaInterstitialTemplateActivity hisavanaInterstitialTemplateActivity = HisavanaInterstitialTemplateActivity.this;
            uVarN.h(hisavanaInterstitialTemplateActivity, hisavanaInterstitialTemplateActivity, hisavanaInterstitialTemplateActivity.getMAdBean(), null, false);
        }

        @Override
        public void i() {
            HSCommonUtils hSCommonUtils = HSCommonUtils.a;
            AdsDTO mAdBean = HisavanaInterstitialTemplateActivity.this.getMAdBean();
            float downX = HisavanaInterstitialTemplateActivity.this.getDownX();
            float downY = HisavanaInterstitialTemplateActivity.this.getDownY();
            float upX = HisavanaInterstitialTemplateActivity.this.getUpX();
            float upY = HisavanaInterstitialTemplateActivity.this.getUpY();
            TemplateAdWebView templateWebView = HisavanaInterstitialTemplateActivity.this.getTemplateWebView();
            int width = templateWebView != null ? templateWebView.getWidth() : 0;
            TemplateAdWebView templateWebView2 = HisavanaInterstitialTemplateActivity.this.getTemplateWebView();
            hSCommonUtils.r(mAdBean, new DownUpPointBean(downX, downY, upX, upY, width, templateWebView2 != null ? templateWebView2.getHeight() : 0));
        }
    }

    public final void G() {
        J.d(this, "_close", null, 2, null);
        a();
    }

    public final ujd H() {
        return new b();
    }

    public void I() {
        AdsDTO mAdBean = getMAdBean();
        Integer fullScreenFlag = mAdBean != null ? mAdBean.getFullScreenFlag() : null;
        p5.a(this, (fullScreenFlag == null ? 0 : fullScreenFlag.intValue()) == 1);
    }

    public void J() {
        Pair pair;
        FrameLayout.LayoutParams layoutParams;
        TemplateAdWebView templateWebView;
        Integer fullScreenFlag;
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        f(new TemplateAdWebView(this, null, 0, 6, null));
        AdsDTO mAdBean = getMAdBean();
        if (mAdBean == null || (fullScreenFlag = mAdBean.getFullScreenFlag()) == null || fullScreenFlag.intValue() != 1) {
            int iA = hm4.a(36.0f);
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            HSCommonUtils hSCommonUtils = HSCommonUtils.a;
            AdsDTO mAdBean2 = getMAdBean();
            Pair pairP = hSCommonUtils.p(mAdBean2 != null ? mAdBean2.getScale() : null, 9.0f, 16.0f);
            float fFloatValue = ((Number) pairP.component1()).floatValue();
            float fFloatValue2 = ((Number) pairP.component2()).floatValue();
            AdsDTO mAdBean3 = getMAdBean();
            if (mAdBean3 == null || mAdBean3.getOrientation() != 2) {
                int i = displayMetrics.widthPixels - (iA * 2);
                pair = new Pair(Integer.valueOf(i), Integer.valueOf((int) ((i * fFloatValue2) / fFloatValue)));
            } else {
                int i2 = displayMetrics.heightPixels - (iA * 2);
                pair = new Pair(Integer.valueOf((int) ((i2 * fFloatValue2) / fFloatValue)), Integer.valueOf(i2));
            }
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(((Number) pair.component1()).intValue(), ((Number) pair.component2()).intValue());
            layoutParams2.gravity = 17;
            layoutParams = layoutParams2;
        } else {
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
        }
        AdsDTO mAdBean4 = getMAdBean();
        if (mAdBean4 != null && (templateWebView = getTemplateWebView()) != null) {
            templateWebView.setup(mAdBean4, H());
        }
        frameLayout.addView(getTemplateWebView(), layoutParams);
        setContentView(frameLayout);
    }

    public final void K() {
        Integer fullScreenFlag;
        AdsDTO mAdBean = getMAdBean();
        if (mAdBean == null || (fullScreenFlag = mAdBean.getFullScreenFlag()) == null || fullScreenFlag.intValue() != 1) {
            setTheme(R.style.InterstitialStyle);
        } else {
            setTheme(R.style.InterstitialFullscreenStyle);
        }
    }

    @Override
    public void e(TaErrorCode error) {
        y45.j(error, "error");
        h("_error", error);
    }

    @Override
    public void h(String event, Object params) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        try {
            Intent intent = new Intent(this.broadCastPrefix + event);
            intent.putExtra("mAdBean", getMAdBean());
            if (params instanceof TaErrorCode) {
                intent.putExtra("error_code", ((TaErrorCode) params).getErrorCode());
                intent.putExtra("error_msg", ((TaErrorCode) params).getErrorMessage());
            }
            sendBroadcast(intent);
        } catch (Throwable th) {
            ikd.b().w(p(), "sendAdEvent error: " + th.getMessage());
        }
    }

    @Override
    public Q0 o() {
        vnd vndVar;
        WeakReference weakReference = j;
        if (weakReference == null || (vndVar = (vnd) weakReference.get()) == null) {
            return null;
        }
        return vndVar.v();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Intent intent = getIntent();
        if (intent != null) {
            g(Build.VERSION.SDK_INT >= 33 ? (AdsDTO) intent.getParcelableExtra("mAdBean", AdsDTO.class) : (AdsDTO) intent.getParcelableExtra("mAdBean"));
            String stringExtra = intent.getStringExtra("BroadCastPrefix");
            if (stringExtra == null) {
                stringExtra = "";
            } else {
                y45.g(stringExtra);
            }
            this.broadCastPrefix = stringExtra;
        }
        K();
        super.onCreate(savedInstanceState);
        setTitle((CharSequence) null);
        if (getMAdBean() == null) {
            h("_error", TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            a();
            return;
        }
        u();
        J();
        I();
        AthenaTracker.D(getMAdBean());
        t();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        j = null;
    }

    @Override
    public void w() {
        J.d(this, "_show", null, 2, null);
        HSCommonUtils.a.x(getMAdBean());
    }
}
