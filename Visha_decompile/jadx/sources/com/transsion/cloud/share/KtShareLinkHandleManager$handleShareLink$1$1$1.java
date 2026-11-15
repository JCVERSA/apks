package com.transsion.cloud.share;

import android.content.Context;
import android.util.Log;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.cloudapi.model.FileDownloadUrlInfo;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.share.KtShareLinkHandleManager$handleShareLink$1$1$1", f = "KtShareLinkHandleManager.kt", l = {}, m = "invokeSuspend")
public final class KtShareLinkHandleManager$handleShareLink$1$1$1 extends SuspendLambda implements s74 {
    final Context $ctx;
    final FileDownloadUrlInfo $fileDownloadUrlInfo;
    final FileShareInfo $fileShareInfo;
    final KtShareLinkHandleManager.LinkSource $linkSource;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KtShareLinkHandleManager$handleShareLink$1$1$1(FileShareInfo fileShareInfo, Context context, KtShareLinkHandleManager.LinkSource linkSource, FileDownloadUrlInfo fileDownloadUrlInfo, wh1<? super KtShareLinkHandleManager$handleShareLink$1$1$1> wh1Var) {
        super(2, wh1Var);
        this.$fileShareInfo = fileShareInfo;
        this.$ctx = context;
        this.$linkSource = linkSource;
        this.$fileDownloadUrlInfo = fileDownloadUrlInfo;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new KtShareLinkHandleManager$handleShareLink$1$1$1(this.$fileShareInfo, this.$ctx, this.$linkSource, this.$fileDownloadUrlInfo, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((KtShareLinkHandleManager$handleShareLink$1$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        if (this.$fileShareInfo != null) {
            FragmentManager supportFragmentManager = ((FragmentActivity) this.$ctx).getSupportFragmentManager();
            y45.i(supportFragmentManager, "getSupportFragmentManager(...)");
            Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag("ShareInfoDialog");
            if (this.$linkSource == KtShareLinkHandleManager.LinkSource.DEEPLINK && fragmentFindFragmentByTag != null && fragmentFindFragmentByTag.isVisible()) {
                LogUtils.j("KtShareLinkHandleManager", "High priority DeepLink detected, closing existing dialog");
                if (fragmentFindFragmentByTag instanceof DialogFragment) {
                    ((DialogFragment) fragmentFindFragmentByTag).dismiss();
                }
            } else if (fragmentFindFragmentByTag != null && fragmentFindFragmentByTag.isVisible()) {
                LogUtils.j("KtShareLinkHandleManager", "ShareInfoDialog already showing, skip");
                return zfb.a;
            }
            Log.d("KtShareLinkHandleManager", "show share dialog " + this.$fileShareInfo + ".shareId, " + this.$fileDownloadUrlInfo);
            Context context = this.$ctx;
            Log.d("KtShareLinkHandleManager", "show share dialog " + context + ", " + ((FragmentActivity) context).isFinishing() + StringUtils.COMMA + ((FragmentActivity) this.$ctx).isDestroyed() + StringUtils.COMMA + supportFragmentManager + StringUtils.COMMA + supportFragmentManager.isStateSaved());
            if (((FragmentActivity) this.$ctx).isFinishing() || ((FragmentActivity) this.$ctx).isDestroyed()) {
                return zfb.a;
            }
            ShareInfoDialogFragment shareInfoDialogFragmentA = ShareInfoDialogFragment.INSTANCE.a(this.$fileShareInfo, this.$fileDownloadUrlInfo);
            try {
                shareInfoDialogFragmentA.show(supportFragmentManager, "ShareInfoDialog");
                zfb zfbVar = zfb.a;
            } catch (Exception e) {
                Log.e("KtShareLinkHandleManager", "Error showing ShareInfoDialog", e);
                mk0.b(supportFragmentManager.beginTransaction().add(shareInfoDialogFragmentA, "ShareInfoDialog").commitAllowingStateLoss());
            }
        }
        return zfb.a;
    }
}
