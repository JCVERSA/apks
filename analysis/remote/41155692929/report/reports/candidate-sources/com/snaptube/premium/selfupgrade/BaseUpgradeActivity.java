package com.snaptube.premium.selfupgrade;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.snaptube.premium.R;
import com.snaptube.premium.activity.BaseSwipeBackActivity;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.dialog.PiraticalApkWarningDialogFragment;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.taskManager.TaskMessageCenter;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.SourceDebugExtension;
import o.ap3;
import o.b88;
import o.dp1;
import o.fv7;
import o.i80;
import o.ix6;
import o.j80;
import o.me7;
import o.mg8;
import o.or3;
import o.pr3;
import o.rx2;
import o.sh;
import o.sq5;
import o.t51;
import o.tu7;
import o.vg4;
import o.w61;
import o.wd0;
import o.wu7;
import o.xi7;
import o.xy8;
import o.y24;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 j2\u00020\u0001:\u0001kB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u0015J\u000f\u0010\u001a\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001f\u0010\nJ\u000f\u0010 \u001a\u00020\u000bH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010!J\u000f\u0010#\u001a\u00020\u0004H\u0002¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0004H\u0002¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0002¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u000bH\u0002¢\u0006\u0004\b&\u0010!J\u0019\u0010)\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010'H\u0014¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0004H\u0014¢\u0006\u0004\b+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0004H\u0014¢\u0006\u0004\b,\u0010\u0003J\u000f\u0010-\u001a\u00020\u0004H\u0014¢\u0006\u0004\b-\u0010\u0003J\u000f\u0010.\u001a\u00020\u0004H\u0014¢\u0006\u0004\b.\u0010\u0003J\u000f\u0010/\u001a\u00020\u0004H\u0004¢\u0006\u0004\b/\u0010\u0003J\u000f\u00101\u001a\u000200H\u0004¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0004H\u0004¢\u0006\u0004\b3\u0010\u0003J\u000f\u00104\u001a\u00020\u000bH\u0004¢\u0006\u0004\b4\u0010!J\u000f\u00105\u001a\u00020\u0004H&¢\u0006\u0004\b5\u0010\u0003J\u000f\u00106\u001a\u00020\u000bH&¢\u0006\u0004\b6\u0010!J\u0011\u00108\u001a\u0004\u0018\u000107H&¢\u0006\u0004\b8\u00109J\u000f\u0010;\u001a\u00020:H&¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0004H&¢\u0006\u0004\b=\u0010\u0003J\u000f\u0010>\u001a\u00020\u0004H&¢\u0006\u0004\b>\u0010\u0003J\u000f\u0010?\u001a\u00020\u0004H&¢\u0006\u0004\b?\u0010\u0003J\u000f\u0010A\u001a\u00020@H&¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u000bH&¢\u0006\u0004\bC\u0010!R\"\u0010K\u001a\u00020D8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR$\u0010Q\u001a\u0004\u0018\u00010\u000b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010!\"\u0004\bO\u0010PR\u0016\u0010T\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010X\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR$\u0010`\u001a\u0004\u0018\u00010Y8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\u0016\u0010c\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010SR\u0014\u0010i\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010h¨\u0006l"}, d2 = {"Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;", "Lcom/snaptube/premium/activity/BaseSwipeBackActivity;", "<init>", "()V", "Lo/mg8;", "K1", "V0", "S1", "", "S0", "()Z", "", "outsideUpdateApkUrl", "", "toast", "G1", "(Ljava/lang/String;I)V", "Z0", "Lcom/snaptube/taskManager/datasets/TaskInfo;", "taskInfo", "D1", "(Lcom/snaptube/taskManager/datasets/TaskInfo;)V", NotificationCompat.CATEGORY_PROGRESS, "T1", "(I)V", "E1", "O1", "M1", "x1", "(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z", "P1", "s1", "q1", "()Ljava/lang/String;", "t1", "Y0", "J1", "c1", "g1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "onResume", "onPause", "onDestroy", "F1", "Landroid/text/SpannableStringBuilder;", "d1", "()Landroid/text/SpannableStringBuilder;", "z1", "o1", "w1", "i1", "Landroidx/appcompat/widget/Toolbar;", "n1", "()Landroidx/appcompat/widget/Toolbar;", "Landroid/view/View;", "m1", "()Landroid/view/View;", "u1", "A1", "b1", "Lo/xy8;", "p1", "()Lo/xy8;", "j1", "Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;", "h", "Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;", "e1", "()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;", "L1", "(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V", "config", "i", "Ljava/lang/String;", "l1", "setPopTriggerScene", "(Ljava/lang/String;)V", "popTriggerScene", "j", "Z", "installSpaceEnoughBefore", "Lo/wu7;", CampaignEx.JSON_KEY_AD_K, "Lo/wu7;", "subscribe", "Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;", "l", "Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;", "h1", "()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;", "setDownloader", "(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;)V", "downloader", "m", "I", "md5ErrorCount", "n", "forceDownload", "Lcom/snaptube/taskManager/TaskMessageCenter$d;", "o", "Lcom/snaptube/taskManager/TaskMessageCenter$d;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, TtmlNode.TAG_P, "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseUpgradeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseUpgradeActivity.kt\ncom/snaptube/premium/selfupgrade/BaseUpgradeActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,395:1\n13309#2,2:396\n262#3,2:398\n262#3,2:400\n262#3,2:402\n*S KotlinDebug\n*F\n+ 1 BaseUpgradeActivity.kt\ncom/snaptube/premium/selfupgrade/BaseUpgradeActivity\n*L\n231#1:396,2\n258#1:398,2\n303#1:400,2\n345#1:402,2\n*E\n"})
public abstract class BaseUpgradeActivity extends BaseSwipeBackActivity {

    public UpgradeConfig config;

    public String popTriggerScene;

    public wu7 subscribe;

    public com.snaptube.premium.selfupgrade.incremental_upgrade.a downloader;

    public int md5ErrorCount;

    public boolean forceDownload;

    public volatile boolean installSpaceEnoughBefore = true;

    public final TaskMessageCenter.d listener = new f();

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[TaskInfo.TaskStatus.values().length];
            try {
                iArr[TaskInfo.TaskStatus.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TaskInfo.TaskStatus.FINISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TaskInfo.TaskStatus.PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class c extends tu7 {
        public c() {
        }

        public void c(UpgradeConfig upgradeConfig) {
            if (upgradeConfig == null || !upgradeConfig.isStop()) {
                BaseUpgradeActivity.R0(BaseUpgradeActivity.this);
            } else {
                BaseUpgradeActivity.this.b1();
            }
        }

        @Override
        public void onCompleted() {
        }

        @Override
        public void onError(Throwable th) {
            BaseUpgradeActivity.R0(BaseUpgradeActivity.this);
        }

        @Override
        public void onNext(Object obj) {
            c((UpgradeConfig) obj);
        }
    }

    public static final class d extends me7 {
        public d() {
        }

        @Override
        public void d() {
            if (sq5.c()) {
                BaseUpgradeActivity.J0(BaseUpgradeActivity.this);
            }
        }
    }

    public static final class e extends ClickableSpan {
        public e() {
        }

        @Override
        public void onClick(View view) {
            or3.f(view, "widget");
        }

        @Override
        public void updateDrawState(TextPaint textPaint) {
            or3.f(textPaint, "ds");
            textPaint.setColor(t51.d(BaseUpgradeActivity.this, R.color.text_accent_blue_color));
            textPaint.setUnderlineText(true);
        }
    }

    public static final class f extends TaskMessageCenter.d {
        public f() {
        }

        @Override
        public void f(List list) {
            or3.f(list, "taskIds");
        }

        @Override
        public void g(long j) {
        }

        @Override
        public void h(TaskInfo taskInfo) {
            or3.f(taskInfo, "taskInfo");
            String str = taskInfo.w;
            com.snaptube.premium.selfupgrade.incremental_upgrade.a downloader = BaseUpgradeActivity.this.getDownloader();
            if (TextUtils.equals(str, downloader != null ? downloader.t() : null)) {
                BaseUpgradeActivity.N0(BaseUpgradeActivity.this, taskInfo);
            }
        }

        @Override
        public void i(TaskInfo taskInfo) {
            or3.f(taskInfo, "taskInfo");
            String str = taskInfo.w;
            com.snaptube.premium.selfupgrade.incremental_upgrade.a downloader = BaseUpgradeActivity.this.getDownloader();
            if (TextUtils.equals(str, downloader != null ? downloader.t() : null)) {
                BaseUpgradeActivity.P0(BaseUpgradeActivity.this, taskInfo);
            }
        }

        @Override
        public void j(TaskInfo taskInfo) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lo/w61;", "Lo/mg8;", "<anonymous>", "(Lo/w61;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.snaptube.premium.selfupgrade.BaseUpgradeActivity$onResume$1", f = "BaseUpgradeActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements rx2 {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        @NotNull
        public final Continuation<mg8> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return BaseUpgradeActivity.this.new AnonymousClass1(continuation);
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke((w61) obj, (Continuation<? super mg8>) obj2);
        }

        @Nullable
        public final Object invoke(@NotNull w61 w61Var, @Nullable Continuation<? super mg8> continuation) {
            return ((AnonymousClass1) create(w61Var, continuation)).invokeSuspend(mg8.a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            pr3.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            BaseUpgradeActivity baseUpgradeActivity = BaseUpgradeActivity.this;
            BaseUpgradeActivity.Q0(baseUpgradeActivity, BaseUpgradeActivity.I0(baseUpgradeActivity));
            return mg8.a;
        }
    }

    public static final void C1(BaseUpgradeActivity baseUpgradeActivity, DialogInterface dialogInterface) {
        or3.f(baseUpgradeActivity, "this$0");
        baseUpgradeActivity.finish();
    }

    public static void F0(BaseUpgradeActivity baseUpgradeActivity, DialogInterface dialogInterface) {
        C1(baseUpgradeActivity, dialogInterface);
    }

    public static void H0(BaseUpgradeActivity baseUpgradeActivity) {
        R1(baseUpgradeActivity);
    }

    public static final boolean I0(BaseUpgradeActivity baseUpgradeActivity) {
        return baseUpgradeActivity.S0();
    }

    public static final void J0(BaseUpgradeActivity baseUpgradeActivity) {
        baseUpgradeActivity.c1();
    }

    public static final void N0(BaseUpgradeActivity baseUpgradeActivity, TaskInfo taskInfo) {
        baseUpgradeActivity.D1(taskInfo);
    }

    public static final void P0(BaseUpgradeActivity baseUpgradeActivity, TaskInfo taskInfo) {
        baseUpgradeActivity.E1(taskInfo);
    }

    public static final void Q0(BaseUpgradeActivity baseUpgradeActivity, boolean z) {
        baseUpgradeActivity.installSpaceEnoughBefore = z;
    }

    public static final void R0(BaseUpgradeActivity baseUpgradeActivity) {
        baseUpgradeActivity.S1();
    }

    public static final void R1(BaseUpgradeActivity baseUpgradeActivity) {
        or3.f(baseUpgradeActivity, "this$0");
        a aVar = a.a;
        FrameLayout frameLayout = baseUpgradeActivity.p1().b;
        or3.e(frameLayout, "flContainer");
        aVar.h(frameLayout, new a.b(baseUpgradeActivity.q1(), baseUpgradeActivity.s1()));
    }

    public abstract void A1();

    public final void D1(TaskInfo taskInfo) {
        T1(taskInfo.c);
    }

    public final void E1(TaskInfo taskInfo) {
        ProductionEnv.debugLog("BaseUpgradeActivity", "onStatusChange: " + taskInfo.i);
        TaskInfo.TaskStatus taskStatus = taskInfo.i;
        int i = taskStatus == null ? -1 : b.a[taskStatus.ordinal()];
        if (i == 1) {
            O1();
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            p1().e.setText(R.string.paused);
            return;
        }
        if (!x1(taskInfo)) {
            this.md5ErrorCount++;
            new File(taskInfo.i()).delete();
            O1();
        }
        if (this.md5ErrorCount >= Config.U1()) {
            b1();
        }
    }

    public final void F1() {
        String strY0 = Config.Y0();
        if (strY0 != null && strY0.length() != 0) {
            or3.c(strY0);
            G1(strY0, R.string.force_update_toast_download_link);
        } else if (sq5.c()) {
            c1();
        } else {
            Z0();
        }
    }

    public final void G1(String outsideUpdateApkUrl, int toast) {
        startActivity(Intent.createChooser(new Intent("android.intent.action.VIEW").setData(Uri.parse(outsideUpdateApkUrl)), ""));
        b88.l(this, toast);
    }

    public final void J1() {
        p1().e.setText(j1());
        View view = p1().c;
        or3.e(view, "maskView");
        view.setVisibility(0);
    }

    public final void K1() {
        PhoenixApplication.K().x(this.listener);
    }

    public final void L1(UpgradeConfig upgradeConfig) {
        or3.f(upgradeConfig, "<set-?>");
        this.config = upgradeConfig;
    }

    public final void M1() {
        p1().e.setText(R.string.Retry);
        p1().e.setCompoundDrawablesWithIntrinsicBounds(t51.e(this, R.drawable.ic_retry), (Drawable) null, (Drawable) null, (Drawable) null);
        p1().d.setProgress(100);
        View view = p1().c;
        or3.e(view, "maskView");
        view.setVisibility(0);
    }

    public final void O1() {
        M1();
        b88.l(this, R.string.toast_pkg_download_failed);
    }

    public final void P1() {
        p1().b.post(new j80(this));
    }

    public final boolean S0() {
        return ap3.a(PhoenixApplication.z(), e1().getFilePath());
    }

    public final void S1() {
        UpgradeConfig upgradeConfigM = CheckSelfUpgradeManager.M();
        if (upgradeConfigM != null && CheckSelfUpgradeManager.R(upgradeConfigM, e1())) {
            L1(upgradeConfigM);
            u1();
        }
    }

    public final void T1(int progress) {
        View view = p1().c;
        or3.e(view, "maskView");
        view.setVisibility(8);
        p1().e.setText(progress + "%");
        p1().d.setProgress(progress);
        p1().e.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        if (progress == 100) {
            J1();
        }
    }

    public final void V0() {
        fv7.a(this.subscribe);
        this.subscribe = CheckSelfUpgradeManager.p(getApplicationContext(), t1()).z0(ix6.d()).Y(sh.c()).x0(new c());
    }

    public final void Y0() {
        if (e1().isApkExist()) {
            J1();
        } else {
            T1(p1().d.getProgress() != 100 ? p1().d.getProgress() : 0);
        }
    }

    public final void Z0() {
        CheckSelfUpgradeManager.u(this, new d());
    }

    public abstract void b1();

    public final void c1() {
        if (!this.installSpaceEnoughBefore) {
            P1();
            return;
        }
        CheckSelfUpgradeManager.m(getApplicationContext(), e1());
        CheckSelfUpgradeManager.k0(e1());
        Y0();
        this.downloader = CheckSelfUpgradeManager.J().B(e1(), g1(), this.forceDownload, this.popTriggerScene, "upgrade_main_page");
        this.forceDownload = false;
    }

    public final SpannableStringBuilder d1() {
        Spanned spannedFromHtml = Html.fromHtml(e1().getChangeLog());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml);
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannedFromHtml.length(), URLSpan.class);
        or3.c(uRLSpanArr);
        for (URLSpan uRLSpan : uRLSpanArr) {
            spannableStringBuilder.setSpan(new e(), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), 33);
        }
        return spannableStringBuilder;
    }

    public final UpgradeConfig e1() {
        UpgradeConfig upgradeConfig = this.config;
        if (upgradeConfig != null) {
            return upgradeConfig;
        }
        or3.w("config");
        return null;
    }

    public final String g1() {
        return or3.a(i1(), "normal_upgrade") ? "normal_upgrade_manual" : "strong_upgrade_manual";
    }

    public final com.snaptube.premium.selfupgrade.incremental_upgrade.a getDownloader() {
        return this.downloader;
    }

    public abstract String i1();

    public abstract String j1();

    public final String getPopTriggerScene() {
        return this.popTriggerScene;
    }

    public abstract View m1();

    public abstract Toolbar n1();

    public final String o1() {
        if ((!or3.a(this.popTriggerScene, "any_page_visible_force") && !or3.a(this.popTriggerScene, "any_page_visible_normal")) || e1().isApkExist()) {
            return j1();
        }
        String string = getString(R.string.download_apk_to_upgrade);
        or3.c(string);
        return string;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(m1());
        UpgradeConfig upgradeConfig = null;
        try {
            Serializable serializableExtra = getIntent().getSerializableExtra("extra_update_config");
            upgradeConfig = serializableExtra instanceof UpgradeConfig ? (UpgradeConfig) serializableExtra : null;
            this.popTriggerScene = getIntent().getStringExtra("extra_update_from");
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging("UpgradeConfigSerializeException", th);
        }
        if (upgradeConfig == null) {
            finish();
            return;
        }
        L1(upgradeConfig);
        e(false);
        setSupportActionBar(n1());
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        w1();
        this.forceDownload = or3.a(i1(), "compulsory_upgrade");
        if (xi7.c(this, false)) {
            PiraticalApkWarningDialogFragment piraticalApkWarningDialogFragment = new PiraticalApkWarningDialogFragment();
            piraticalApkWarningDialogFragment.D2(new i80(this));
            Bundle bundle = new Bundle();
            bundle.putString("from", i1());
            bundle.putString("signature", e1().getFullMd5());
            bundle.putBoolean("is_not_an_official_version", xi7.c(getApplicationContext(), true));
            piraticalApkWarningDialogFragment.setArguments(bundle);
            piraticalApkWarningDialogFragment.E2(getSupportFragmentManager());
        }
        K1();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        PhoenixApplication.K().y(this.listener);
    }

    @Override
    public void onPause() {
        fv7.a(this.subscribe);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        wd0.d(y24.a(this), dp1.b(), null, new AnonymousClass1(null), 2, null);
        V0();
    }

    @Override
    public void onStart() {
        super.onStart();
        A1();
    }

    public abstract xy8 p1();

    public final String q1() {
        return or3.a(i1(), "normal_upgrade") ? "normal_upgrade_no_enough_space_guide_popup" : "upgrade_feedback";
    }

    public final boolean s1() {
        return or3.a(i1(), "normal_upgrade");
    }

    public final String t1() {
        return or3.a(i1(), "normal_upgrade") ? "NormalUpdateActivity" : "ForceUpdateActivity";
    }

    public abstract void u1();

    public abstract void w1();

    public final boolean x1(TaskInfo taskInfo) {
        String str = taskInfo.v;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(vg4.b(taskInfo.i()));
    }

    public final void z1() {
        com.snaptube.premium.selfupgrade.incremental_upgrade.b.m("click_upgrade_page_faq", e1(), this.popTriggerScene);
    }
}
