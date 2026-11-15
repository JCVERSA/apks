package com.transsion.home.activity;

import android.os.Bundle;
import android.view.View;
import com.blankj.utilcode.util.d;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.transsion.baselib.report.g;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.R$mipmap;
import com.transsion.home.R$string;
import com.transsion.home.activity.UGCFilterActivity;
import com.transsion.home.fragment.filter.FilterFragment;
import com.transsion.home.fragment.filter.UGCFilterFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import eh.a;
import gj.b;
import ij.y;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010#\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001c¨\u0006$"}, d2 = {"Lcom/transsion/home/activity/UGCFilterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Leh/a;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "e0", "", "isTranslucent", "()Z", "isStatusDark", "d0", "()Leh/a;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "retryLoadData", "", "getPageName", "()Ljava/lang/String;", "", "a", "I", "tabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tabCode", "c", "mFilterJson", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "videoType", "e", "fromOptId", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCFilterActivity extends BaseActivity<a> implements g {

    public int tabId;

    public String mFilterJson;

    public String tabCode = "";

    public String videoType = "";

    public String fromOptId = "";

    private final void e0() {
        getSupportFragmentManager().p().s(R$id.container, ij.g.f62108a.b() ? UGCFilterFragment.INSTANCE.a(this.tabId, this.tabCode, this.videoType, this.mFilterJson, this.fromOptId) : FilterFragment.INSTANCE.a(this.tabId, this.tabCode, this.mFilterJson)).k();
    }

    public static final void f0(UGCFilterActivity uGCFilterActivity, View view) {
        b bVar = (b) gj.a.f61068a.a(b.class);
        if (bVar != null) {
            bVar.d("", uGCFilterActivity);
        }
    }

    public static final void g0(UGCFilterActivity uGCFilterActivity, View view) {
        uGCFilterActivity.finish();
    }

    @Override
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public String getPageName() {
        return "/home/ugc_filter";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        TitleLayout titleLayout = ((a) getMViewBinding()).f59673c;
        titleLayout.setRightView(R$mipmap.ic_search_movie, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCFilterActivity.f0(this.f65708a, view);
            }
        });
        titleLayout.setLeftOnclick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCFilterActivity.g0(this.f65709a, view);
            }
        });
        String string = getString(R$string.filter);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        titleLayout.setPadding(0, d.c(), 0, 0);
        e0();
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
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override
    public void retryLoadData() {
    }
}
