package com.transsnet.downloader.activity;

import android.os.Bundle;
import bx.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.fragment.DownloadEpisodesListFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u0016\u0010\u001c\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/transsnet/downloader/activity/DownloadSeriesListActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lbx/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "b0", "()Lbx/c;", "", "isTranslucent", "()Z", "isChangeStatusBar", "isStatusDark", "", "statusColor", "()I", "", "a", "Ljava/lang/String;", "name", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "subjectId", "c", "I", "parentPosition", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadSeriesListActivity extends BaseActivity<c> {

    public String name;

    public String subjectId;

    public int parentPosition = -1;

    @Override
    public c getViewBinding() {
        c cVarC = c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.container, DownloadEpisodesListFragment.INSTANCE.a(this.subjectId, this.parentPosition)).k();
        }
        TitleLayout titleLayout = ((c) getMViewBinding()).f15958c;
        String str = this.name;
        if (str == null) {
            str = "";
        }
        titleLayout.setTitleText(str);
    }

    @Override
    public int statusColor() {
        return R$color.text_01;
    }
}
