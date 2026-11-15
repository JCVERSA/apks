package com.transsion.web.activity;

import android.content.Intent;
import android.os.Bundle;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.web.R$id;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gj.c;
import ij.k;
import ij.y;
import iw.a;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u0017R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010\"\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001cR\u0016\u0010&\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010!R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001f\u0010/\u001a\n +*\u0004\u0018\u00010\u001a0\u001a8\u0006¢\u0006\f\n\u0004\b,\u0010\u001c\u001a\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00064"}, d2 = {"Lcom/transsion/web/activity/WebActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Liw/a;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "b0", "()Liw/a;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "a", "Ljava/lang/String;", "url", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "deeplink", "c", "Z", "loadUrlOnly", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "pageFrom", "e", WebConstants.EXTERNAL_BROWSER, "", "f", "J", "pageStartTime", "kotlin.jvm.PlatformType", "g", "getTAG", "()Ljava/lang/String;", "TAG", "Lcom/transsion/web/fragment/WebFragmentV2;", "h", "Lcom/transsion/web/fragment/WebFragmentV2;", "webFragment", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebActivity extends BaseActivity<a> {

    public String url;

    public String deeplink;

    public boolean loadUrlOnly;

    public String pageFrom;

    public boolean externalBrowser;

    private long pageStartTime;

    private final String TAG = WebActivity.class.getSimpleName();

    private WebFragmentV2 webFragment;

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
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        jw.a.f63364a.a();
        TheRouter.l(this);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        c0922a.c(TAG, "externalBrowser:" + this.externalBrowser + " url:" + this.url, true);
        if (this.externalBrowser) {
            String str = this.url;
            if (str != null) {
                k.i(str);
            }
            finish();
        }
        if (savedInstanceState == null) {
            this.webFragment = WebFragmentV2.INSTANCE.b();
            Bundle bundle = new Bundle();
            bundle.putParcelable(WebConstants.FIELD_ITEM, getIntent().getParcelableExtra(WebConstants.FIELD_ITEM));
            bundle.putString("url", this.url);
            bundle.putString("deeplink", this.deeplink);
            bundle.putBoolean(WebConstants.FIELD_LOAD_URL_ONLY, this.loadUrlOnly);
            bundle.putString(WebConstants.PAGE_FROM, getIntent().getStringExtra(WebConstants.PAGE_FROM));
            WebFragmentV2 webFragmentV2 = this.webFragment;
            if (webFragmentV2 != null) {
                webFragmentV2.setArguments(bundle);
            }
            WebFragmentV2 webFragmentV3 = this.webFragment;
            if (webFragmentV3 != null) {
                getSupportFragmentManager().p().s(R$id.container, webFragmentV3).k();
            }
        }
        initView();
    }

    @Override
    protected void onDestroy() {
        c cVar;
        super.onDestroy();
        jw.a.f63364a.b();
        if (!getIntent().getBooleanExtra("fromTask", false) || (cVar = (c) gj.a.f61068a.a(c.class)) == null) {
            return;
        }
        cVar.c(System.currentTimeMillis() - this.pageStartTime);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        try {
            setIntent(intent);
            TheRouter.l(this);
        } catch (Exception unused) {
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        jw.a.f63364a.a();
    }

    @Override
    public void onResume() {
        super.onResume();
        jw.a.f63364a.a();
        this.pageStartTime = System.currentTimeMillis();
    }

    @Override
    protected void onStop() {
        super.onStop();
        jw.a.f63364a.a();
    }
}
