package com.transsion.cloud.share;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.transsion.cloudcore.cloudapi.model.FileDownloadUrlInfo;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.share.KtShareLinkHandleManager$handleShareLink$1", f = "KtShareLinkHandleManager.kt", l = {266, 269}, m = "invokeSuspend")
public final class KtShareLinkHandleManager$handleShareLink$1 extends SuspendLambda implements s74 {
    final Context $context;
    final String $host;
    final KtShareLinkHandleManager.LinkSource $linkSource;
    final String $shareId;
    final String $shareUrl;
    final WeakReference<Context> $weakContext;
    private Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KtShareLinkHandleManager$handleShareLink$1(Context context, String str, String str2, String str3, WeakReference<Context> weakReference, KtShareLinkHandleManager.LinkSource linkSource, wh1<? super KtShareLinkHandleManager$handleShareLink$1> wh1Var) {
        super(2, wh1Var);
        this.$context = context;
        this.$shareId = str;
        this.$shareUrl = str2;
        this.$host = str3;
        this.$weakContext = weakReference;
        this.$linkSource = linkSource;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        KtShareLinkHandleManager$handleShareLink$1 ktShareLinkHandleManager$handleShareLink$1 = new KtShareLinkHandleManager$handleShareLink$1(this.$context, this.$shareId, this.$shareUrl, this.$host, this.$weakContext, this.$linkSource, wh1Var);
        ktShareLinkHandleManager$handleShareLink$1.L$0 = obj;
        return ktShareLinkHandleManager$handleShareLink$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((KtShareLinkHandleManager$handleShareLink$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0083  */
    /* JADX WARN: Code duplicated, block: B:27:0x0089  */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        nk1 nk1Var;
        FileShareInfo fileShareInfo;
        FileDownloadUrlInfo fileDownloadUrlInfo;
        FileShareInfo fileShareInfo2;
        nk1 nk1Var2;
        Context context;
        KtShareLinkHandleManager.LinkSource linkSource;
        FragmentActivity fragmentActivity;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                nk1Var = (nk1) this.L$0;
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                fileShareInfo2 = (FileShareInfo) this.L$1;
                nk1Var = (nk1) this.L$0;
                c.b(obj);
            }
            fileDownloadUrlInfo = (FileDownloadUrlInfo) obj;
            fileShareInfo = fileShareInfo2;
            nk1Var2 = nk1Var;
            context = this.$weakContext.get();
            if (context != null) {
                linkSource = this.$linkSource;
                if (context instanceof FragmentActivity) {
                    fragmentActivity = (FragmentActivity) context;
                    if (!fragmentActivity.isFinishing() && !fragmentActivity.isDestroyed()) {
                        el0.d(nk1Var2, mc2.c(), null, new KtShareLinkHandleManager$handleShareLink$1$1$1(fileShareInfo, context, linkSource, fileDownloadUrlInfo, null), 2, null);
                    }
                }
            }
            return zfb.a;
        }
        c.b(obj);
        nk1 nk1Var3 = (nk1) this.L$0;
        KtShareLinkHandleManager ktShareLinkHandleManager = KtShareLinkHandleManager.a;
        Context context2 = this.$context;
        String str = this.$shareId;
        String str2 = this.$shareUrl;
        String str3 = this.$host;
        this.L$0 = nk1Var3;
        this.label = 1;
        Object objF2 = ktShareLinkHandleManager.f(context2, str, str2, str3, this);
        if (objF2 == objF) {
            return objF;
        }
        nk1Var = nk1Var3;
        obj = objF2;
        FileShareInfo fileShareInfo3 = (FileShareInfo) obj;
        if (fileShareInfo3 != null) {
            KtShareLinkHandleManager ktShareLinkHandleManager2 = KtShareLinkHandleManager.a;
            String shareToken = fileShareInfo3.getShareToken();
            String shareId = fileShareInfo3.getShareId();
            String fileId = fileShareInfo3.getFileId();
            String str4 = this.$host;
            this.L$0 = nk1Var;
            this.L$1 = fileShareInfo3;
            this.label = 2;
            Object objG = ktShareLinkHandleManager2.g(shareToken, shareId, fileId, str4, this);
            if (objG == objF) {
                return objF;
            }
            fileShareInfo2 = fileShareInfo3;
            obj = objG;
            fileDownloadUrlInfo = (FileDownloadUrlInfo) obj;
            fileShareInfo = fileShareInfo2;
        } else {
            fileShareInfo = fileShareInfo3;
            fileDownloadUrlInfo = null;
        }
        nk1Var2 = nk1Var;
        context = this.$weakContext.get();
        if (context != null) {
            linkSource = this.$linkSource;
            if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
                if (!fragmentActivity.isFinishing()) {
                    el0.d(nk1Var2, mc2.c(), null, new KtShareLinkHandleManager$handleShareLink$1$1$1(fileShareInfo, context, linkSource, fileDownloadUrlInfo, null), 2, null);
                }
            }
        }
        return zfb.a;
    }
}
