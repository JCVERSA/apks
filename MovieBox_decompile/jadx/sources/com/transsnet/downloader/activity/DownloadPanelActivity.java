package com.transsnet.downloader.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.report.k;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.fragment.DownloadMainFragment;
import com.transsnet.downloader.manager.DownloadStatusIconManager;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import qi.h;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000e\u0010\tJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0019\u0010\u0004J\u0019\u0010\u001c\u001a\u00020\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001f\u0010 R \u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070#0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010)\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010 ¨\u0006.²\u0006\f\u0010-\u001a\u00020,8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/transsnet/downloader/activity/DownloadPanelActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lbx/b;", "<init>", "()V", "Landroid/content/Intent;", "intent", "", "b0", "(Landroid/content/Intent;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onNewIntent", "c0", "()Lbx/b;", "", "isTranslucent", "()Z", "isChangeStatusBar", "isStatusDark", "", "statusColor", "()I", "onDestroy", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "", "a", "Ljava/lang/String;", "PAGE_NAME", "", "Lkotlin/Function0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "touchListeners", "c", "I", "index", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "focusResourceId", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadPanelActivity extends BaseActivity<bx.b> {

    private final String PAGE_NAME = "download_panel_activity";

    private final List touchListeners = new ArrayList();

    public int index;

    public String focusResourceId;

    private final void b0(Intent intent) {
        int intExtra = intent.getIntExtra("from_page", 0);
        int intExtra2 = intent.getIntExtra(OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS, 0);
        if (intExtra > 0) {
            HashMap map = new HashMap();
            map.put("from_page", String.valueOf(intExtra));
            map.put(OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS, String.valueOf(intExtra2));
            h.f69682a.o(this.PAGE_NAME, map);
        }
    }

    private static final DownloadViewModel d0(Lazy lazy) {
        return (DownloadViewModel) lazy.getValue();
    }

    @Override
    public bx.b getViewBinding() {
        bx.b bVarC = bx.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event != null && event.getAction() == 0) {
            Iterator it = this.touchListeners.iterator();
            while (it.hasNext()) {
                ((Function0) it.next()).invoke();
            }
        }
        return super.dispatchTouchEvent(event);
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

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null) {
            final Function0 function0 = null;
            d0(new ViewModelLazy(Reflection.b(DownloadViewModel.class), new Function0<x0>() {
                {
                    super(0);
                }

                @Override
                public final x0 invoke() {
                    return this.getViewModelStore();
                }
            }, new Function0<v0.c>() {
                {
                    super(0);
                }

                @Override
                public final v0.c invoke() {
                    return this.getDefaultViewModelProviderFactory();
                }
            }, new Function0<p1.a>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final p1.a invoke() {
                    p1.a aVar;
                    Function0 function1 = function0;
                    return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
                }
            })).R().q(this.focusResourceId);
            getSupportFragmentManager().p().s(R$id.container, DownloadMainFragment.INSTANCE.a(this.index)).k();
        }
        DownloadStatusIconManager.f57244h.a().w(true);
        k.f42210a.w(1, this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.touchListeners.clear();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        b0(intent);
    }

    @Override
    public int statusColor() {
        return R$color.text_01;
    }
}
