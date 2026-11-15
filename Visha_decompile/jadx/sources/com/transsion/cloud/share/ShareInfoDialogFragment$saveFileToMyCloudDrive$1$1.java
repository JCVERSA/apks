package com.transsion.cloud.share;

import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud_drive.base.api.model.CopyShareFilesResult;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.netdisk.R;
import com.transsion.tranplayer.MediaPlayer;
import com.transsion.utils.ToastUtils;
import defpackage.a41;
import defpackage.cl0;
import defpackage.jz5;
import defpackage.mc2;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.x71;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.share.ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1", f = "ShareInfoDialogFragment.kt", l = {MediaPlayer.Event.LosePicSerious, 300}, m = "invokeSuspend")
public final class ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1 extends SuspendLambda implements s74 {
    final FileShareInfo $info;
    int label;
    final ShareInfoDialogFragment this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.share.ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1", f = "ShareInfoDialogFragment.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final ApiResponse<CopyShareFilesResult> $apiResponse;
        final FileShareInfo $info;
        int label;
        final ShareInfoDialogFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ApiResponse<CopyShareFilesResult> apiResponse, ShareInfoDialogFragment shareInfoDialogFragment, FileShareInfo fileShareInfo, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$apiResponse = apiResponse;
            this.this$0 = shareInfoDialogFragment;
            this.$info = fileShareInfo;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$apiResponse, this.this$0, this.$info, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            ApiResponse<CopyShareFilesResult> apiResponse = this.$apiResponse;
            if (apiResponse instanceof ApiResponse.Success) {
                ToastUtils.x(this.this$0.getString(R.string.visha_saved), new Object[0]);
                jz5.d(this.$info.getFileName());
                this.this$0.dismiss();
            } else {
                LogUtils.m("ShareInfoDialogFragment", "saveFileToMyCloudDrive: " + apiResponse);
                this.this$0.dismiss();
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.share.ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$2", f = "ShareInfoDialogFragment.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        int label;
        final ShareInfoDialogFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ShareInfoDialogFragment shareInfoDialogFragment, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.this$0 = shareInfoDialogFragment;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            this.this$0.dismiss();
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1(ShareInfoDialogFragment shareInfoDialogFragment, FileShareInfo fileShareInfo, wh1<? super ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = shareInfoDialogFragment;
        this.$info = fileShareInfo;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1(this.this$0, this.$info, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String region;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                a41 a41Var = a41.a;
                Context contextRequireContext = this.this$0.requireContext();
                y45.i(contextRequireContext, "requireContext(...)");
                mq3 mq3VarB = a41Var.b(contextRequireContext);
                String shareToken = this.$info.getShareToken();
                String shareId = this.$info.getShareId();
                List listE = x71.e(this.$info.getFileId());
                FileShareInfo fileShareInfo = this.this$0.fileShareInfo;
                if (fileShareInfo == null || (region = fileShareInfo.getRegion()) == null) {
                    region = "";
                }
                ApiResponse apiResponseC = mq3VarB.c(shareToken, shareId, "root", listE, region);
                rx5 rx5VarC = mc2.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(apiResponseC, this.this$0, this.$info, null);
                this.label = 1;
                if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1 && i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
        } catch (Exception e) {
            LogUtils.l("ShareInfoDialogFragment", "saveFileToMyCloudDrive error: " + e.getMessage());
            rx5 rx5VarC2 = mc2.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, null);
            this.label = 2;
            if (cl0.g(rx5VarC2, anonymousClass2, this) == objF) {
                return objF;
            }
        }
        return zfb.a;
    }
}
