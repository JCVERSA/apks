package com.cloud.hisavana.sdk.common.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.J;
import com.cloud.hisavana.sdk.Q0;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.TemplateAdWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.u;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.ikd;
import defpackage.j9d;
import defpackage.p5;
import defpackage.rpd;
import defpackage.ujd;
import defpackage.ul4;
import defpackage.y45;
import java.lang.ref.WeakReference;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\tH\u0014¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000f\u0010\u0003J!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0014¢\u0006\u0004\b\u001d\u0010\u0003R\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\rR\u0016\u0010\"\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\r¨\u0006'"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;", "Lcom/cloud/hisavana/sdk/J;", MethodDecl.initName, "()V", "Lujd;", "H", "()Lujd;", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "J", "I", "w", "", NotificationCompat.CATEGORY_EVENT, "", "params", CmcdData.STREAMING_FORMAT_HLS, "(Ljava/lang/String;Ljava/lang/Object;)V", "Lcom/cloud/hisavana/sdk/Q0;", "o", "()Lcom/cloud/hisavana/sdk/Q0;", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "error", "e", "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", "onDestroy", "", "observerId", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Ljava/lang/String;", "prefix", "j", "triggerMillis", "k", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HisavanaRewardedTemplateActivity extends J {

    public static final Companion INSTANCE = new Companion(null);
    public static WeakReference l;

    public long observerId;

    public String prefix = "";

    public long triggerMillis;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(WeakReference weakReference) {
            HisavanaRewardedTemplateActivity.l = weakReference;
        }

        public Companion() {
        }
    }

    public static final class b extends ujd {
        public b() {
        }

        @Override
        public void a() {
            U0.k(ul4.a(), HisavanaRewardedTemplateActivity.this.getMAdBean());
        }

        @Override
        public void b(int i, boolean z) {
            HisavanaRewardedTemplateActivity hisavanaRewardedTemplateActivity = HisavanaRewardedTemplateActivity.this;
            AdsDTO mAdBean = hisavanaRewardedTemplateActivity.getMAdBean();
            float downX = HisavanaRewardedTemplateActivity.this.getDownX();
            float downY = HisavanaRewardedTemplateActivity.this.getDownY();
            float upX = HisavanaRewardedTemplateActivity.this.getUpX();
            float upY = HisavanaRewardedTemplateActivity.this.getUpY();
            TemplateAdWebView templateWebView = HisavanaRewardedTemplateActivity.this.getTemplateWebView();
            int width = templateWebView != null ? templateWebView.getWidth() : 0;
            TemplateAdWebView templateWebView2 = HisavanaRewardedTemplateActivity.this.getTemplateWebView();
            hisavanaRewardedTemplateActivity.h("_click", new Pair(mAdBean, new DownUpPointBean(downX, downY, upX, upY, width, templateWebView2 != null ? templateWebView2.getHeight() : 0)));
        }

        @Override
        public void c(TaErrorCode taErrorCode) {
            y45.j(taErrorCode, "error");
            ikd.b().w(HisavanaRewardedTemplateActivity.this.p(), "template webview load error: " + taErrorCode.getErrorMessage());
            HisavanaRewardedTemplateActivity.this.h("_error", taErrorCode);
            HisavanaRewardedTemplateActivity.this.a();
        }

        @Override
        public void d() {
            HisavanaRewardedTemplateActivity.this.G();
        }

        @Override
        public void e() {
            u uVarN = u.n();
            HisavanaRewardedTemplateActivity hisavanaRewardedTemplateActivity = HisavanaRewardedTemplateActivity.this;
            uVarN.h(hisavanaRewardedTemplateActivity, hisavanaRewardedTemplateActivity, hisavanaRewardedTemplateActivity.getMAdBean(), null, false);
        }

        @Override
        public void f() {
            HisavanaRewardedTemplateActivity hisavanaRewardedTemplateActivity = HisavanaRewardedTemplateActivity.this;
            AdsDTO mAdBean = hisavanaRewardedTemplateActivity.getMAdBean();
            hisavanaRewardedTemplateActivity.h("_rewarded", mAdBean != null ? Long.valueOf(mAdBean.getTriggerShowSpend()) : null);
        }

        @Override
        public void i() {
            HSCommonUtils hSCommonUtils = HSCommonUtils.a;
            AdsDTO mAdBean = HisavanaRewardedTemplateActivity.this.getMAdBean();
            float downX = HisavanaRewardedTemplateActivity.this.getDownX();
            float downY = HisavanaRewardedTemplateActivity.this.getDownY();
            float upX = HisavanaRewardedTemplateActivity.this.getUpX();
            float upY = HisavanaRewardedTemplateActivity.this.getUpY();
            TemplateAdWebView templateWebView = HisavanaRewardedTemplateActivity.this.getTemplateWebView();
            int width = templateWebView != null ? templateWebView.getWidth() : 0;
            TemplateAdWebView templateWebView2 = HisavanaRewardedTemplateActivity.this.getTemplateWebView();
            hSCommonUtils.r(mAdBean, new DownUpPointBean(downX, downY, upX, upY, width, templateWebView2 != null ? templateWebView2.getHeight() : 0));
        }
    }

    private final ujd H() {
        return new b();
    }

    public final void G() {
        J.d(this, "_close", null, 2, null);
        a();
    }

    public void I() {
        p5.b(this);
    }

    public void J() {
        TemplateAdWebView templateWebView;
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        f(new TemplateAdWebView(this, null, 0, 6, null));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        AdsDTO mAdBean = getMAdBean();
        if (mAdBean != null && (templateWebView = getTemplateWebView()) != null) {
            templateWebView.setup(mAdBean, H());
        }
        frameLayout.addView(getTemplateWebView(), layoutParams);
        setContentView(frameLayout);
    }

    @Override
    public void e(TaErrorCode error) {
        y45.j(error, "error");
        h("_error", error);
    }

    @Override
    public void h(String event, Object params) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        j9d.a.d(this.observerId, this.prefix + event, params);
    }

    @Override
    public Q0 o() {
        rpd rpdVar;
        WeakReference weakReference = l;
        if (weakReference == null || (rpdVar = (rpd) weakReference.get()) == null) {
            return null;
        }
        return rpdVar.v();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent != null) {
            g(Build.VERSION.SDK_INT >= 33 ? (AdsDTO) intent.getParcelableExtra("adBean", AdsDTO.class) : (AdsDTO) intent.getParcelableExtra("adBean"));
            String stringExtra = intent.getStringExtra("prefix");
            if (stringExtra == null) {
                stringExtra = "";
            } else {
                y45.g(stringExtra);
            }
            this.prefix = stringExtra;
            this.observerId = intent.getLongExtra("observerId", 0L);
            this.triggerMillis = intent.getLongExtra("triggerTs", System.currentTimeMillis());
        }
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
        l = null;
    }

    @Override
    public void w() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.triggerMillis;
        AdsDTO mAdBean = getMAdBean();
        if (mAdBean != null) {
            mAdBean.setTriggerShowSpend(jCurrentTimeMillis);
        }
        J.d(this, "_show", null, 2, null);
        HSCommonUtils.a.x(getMAdBean());
    }
}
