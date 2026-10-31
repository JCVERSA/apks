package com.snaptube.premium.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.plugin.extension.nonlifecycle.ad.ExternalGuideHelper;
import com.snaptube.plugin.extension.nonlifecycle.ad.StartDownloadAdViewModel;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.utils.permission.PermissionRequestFrequencyHelper;
import com.snaptube.premium.viewmodel.UiDarkConfig;
import com.wandoujia.base.utils.RxBus;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import o.dn0;
import o.ie3;
import o.k36;
import o.np6;
import o.nr1;
import o.or3;
import o.pg1;
import o.s5;
import o.ve7;
import o.wu7;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 -2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001.B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0012\u0010\u0005J\u0019\u0010\u0013\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u0013\u0010\u000fJ\u0019\u0010\u0016\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u0011J\u000f\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010%¨\u0006/"}, d2 = {"Lcom/snaptube/premium/activity/DownloadDialogWrapperActivity;", "Lcom/snaptube/premium/activity/BaseSwipeBackActivity;", "Landroid/content/DialogInterface$OnDismissListener;", "Lo/ie3;", "<init>", "()V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroid/os/Bundle;", "savedInstanceState", "Lo/mg8;", "onCreate", "(Landroid/os/Bundle;)V", "useThemeColor", "()Z", "onStart", "onPostCreate", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "finish", "onDestroy", "enableTransparentStatusBar", "I0", "Lcom/snaptube/premium/viewmodel/UiDarkConfig;", "H0", "()Lcom/snaptube/premium/viewmodel/UiDarkConfig;", "P0", "", "J0", "()Ljava/lang/String;", "Lo/wu7;", "h", "Lo/wu7;", "finishSubscription", "Ljava/lang/Runnable;", "i", "Ljava/lang/Runnable;", "handleSwitchStorageRunnable", "j", "externalGuideSubscribe", CampaignEx.JSON_KEY_AD_K, "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadDialogWrapperActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadDialogWrapperActivity.kt\ncom/snaptube/premium/activity/DownloadDialogWrapperActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1855#2,2:173\n1#3:175\n*S KotlinDebug\n*F\n+ 1 DownloadDialogWrapperActivity.kt\ncom/snaptube/premium/activity/DownloadDialogWrapperActivity\n*L\n100#1:173,2\n*E\n"})
public class DownloadDialogWrapperActivity extends BaseSwipeBackActivity implements DialogInterface.OnDismissListener, ie3 {

    public static final Companion INSTANCE = new Companion(null);

    public wu7 finishSubscription;

    public Runnable handleSwitchStorageRunnable;

    public wu7 externalGuideSubscribe;

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public final void a(Context context, VideoInfo videoInfo, Format format, Bundle bundle) {
            Intent intent;
            if (context == null) {
                context = PhoenixApplication.z();
            }
            if (k36.a(bundle != null ? dn0.k(bundle) : null)) {
                intent = new Intent(context, (Class<?>) ExternalDownloadDialogWrapperActivity.class);
                intent.addFlags(268435456);
            } else {
                intent = new Intent(context, (Class<?>) DownloadDialogWrapperActivity.class);
            }
            intent.putExtra("videoInfo", videoInfo);
            intent.putExtra(SnaptubeAdModel.KEY_FORMAT, format);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            NavigationManager.l1(context, intent);
        }
    }

    public static final class b extends ve7 {
        public b() {
        }

        @Override
        public void c(Object obj) {
            d((RxBus.d) obj);
        }

        public void d(RxBus.d dVar) {
            DownloadDialogWrapperActivity.this.finish();
        }
    }

    public static void F0(DownloadDialogWrapperActivity downloadDialogWrapperActivity) {
        N0(downloadDialogWrapperActivity);
    }

    public static final void N0(DownloadDialogWrapperActivity downloadDialogWrapperActivity) {
        or3.f(downloadDialogWrapperActivity, "this$0");
        downloadDialogWrapperActivity.P0();
    }

    public final UiDarkConfig H0() {
        Object obj = null;
        for (Activity activity : s5.b()) {
            if (or3.a(activity, this) && (obj instanceof UiDarkConfig.b)) {
                return ((UiDarkConfig.b) obj).restoreUiDarkConfigure();
            }
            obj = activity;
        }
        return null;
    }

    public final void I0() {
        UiDarkConfig uiDarkConfigH0 = H0();
        if (uiDarkConfigH0 != null) {
            q0(uiDarkConfigH0);
        }
    }

    public final String J0() {
        Serializable serializableExtra = getIntent().getSerializableExtra("report_extras");
        String str = null;
        Map map = serializableExtra instanceof Map ? (Map) serializableExtra : null;
        if (map != null) {
            Object obj = map.get("position_source");
            if (obj instanceof String) {
                str = (String) obj;
            }
        }
        return k36.a(str) ? "external_download" : "other_download";
    }

    public final void P0() {
        this.finishSubscription = RxBus.d().c(1209).g(RxBus.f).x0(new b());
        if (PermissionRequestFrequencyHelper.b() && PermissionRequestFrequencyHelper.e(this, J0())) {
            PermissionRequestFrequencyHelper.c();
            RxBus.d().f(1194);
            Intent intent = getIntent();
            StartDownloadAdViewModel.J(this, intent != null ? intent.getExtras() : null);
            return;
        }
        if (ExternalGuideHelper.a.l(this)) {
            Intent intent2 = getIntent();
            StartDownloadAdViewModel.J(this, intent2 != null ? intent2.getExtras() : null);
        } else {
            Intent intent3 = getIntent();
            StartDownloadAdViewModel.J(this, intent3 != null ? intent3.getExtras() : null);
            finish();
        }
    }

    @Override
    public boolean enableTransparentStatusBar() {
        return false;
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.anim_fade_in, R.anim.anim_fade_out);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setBackgroundDrawableResource(R.drawable.shape_transparent);
        ExternalGuideHelper.a.e(null);
        this.handleSwitchStorageRunnable = new nr1(this);
        getWindow().getDecorView().post(this.handleSwitchStorageRunnable);
    }

    @Override
    public void onDestroy() {
        wu7 wu7Var = this.finishSubscription;
        if (wu7Var != null) {
            np6.a(wu7Var);
        }
        wu7 wu7Var2 = this.externalGuideSubscribe;
        if (wu7Var2 != null) {
            np6.a(wu7Var2);
        }
        getWindow().getDecorView().removeCallbacks(this.handleSwitchStorageRunnable);
        super.onDestroy();
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        finish();
    }

    @Override
    public void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        ViewGroup viewGroup = (ViewGroup) findViewById(android.R.id.content);
        View childAt = viewGroup != null ? viewGroup.getChildAt(0) : null;
        if (childAt == null) {
            return;
        }
        childAt.setFitsSystemWindows(true);
    }

    @Override
    public void onStart() {
        super.onStart();
        I0();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        finish();
        return super.onTouchEvent(event);
    }

    @Override
    public boolean useThemeColor() {
        return false;
    }
}
