package com.transsion.payment.lib.strategy.ui;

import android.content.Intent;
import android.os.Bundle;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.payment.lib.R$id;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import xm.a;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0018R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxm/a;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "onBackPressed", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "d0", "()Lxm/a;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "a", "Ljava/lang/String;", "url", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "pageFrom", "Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;", "c", "Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;", "webFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayWebActivity extends BaseActivity<a> {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f45952e = WebConstants.PAGE_FROM;

    private static final String f45953f = "url";

    public String url;

    public String pageFrom;

    private PayWebFragment webFragment;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return PayWebActivity.f45953f;
        }

        public final String b() {
            return PayWebActivity.f45952e;
        }

        private Companion() {
        }
    }

    private final void initView() {
    }

    @Override
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void onBackPressed() {
        PayWebFragment payWebFragment = this.webFragment;
        if (payWebFragment == null || !payWebFragment.s0()) {
            super.onBackPressed();
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        TheRouter.l(this);
        if (savedInstanceState == null) {
            this.webFragment = PayWebFragment.INSTANCE.a();
            Bundle bundle = new Bundle();
            bundle.putString(f45953f, this.url);
            String str = f45952e;
            bundle.putString(str, getIntent().getStringExtra(str));
            PayWebFragment payWebFragment = this.webFragment;
            if (payWebFragment != null) {
                payWebFragment.setArguments(bundle);
            }
            PayWebFragment payWebFragment2 = this.webFragment;
            if (payWebFragment2 != null) {
                getSupportFragmentManager().p().s(R$id.container, payWebFragment2).k();
            }
        }
        initView();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        try {
            setIntent(intent);
            TheRouter.l(this);
            PayWebFragment payWebFragment = this.webFragment;
            if (payWebFragment != null) {
                payWebFragment.newIntent(intent);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    protected void onStop() {
        super.onStop();
    }
}
