package com.transsnet.downloader;

import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.DownloadManagerApi$openDownloadVideo$1", f = "DownloadManagerApi.kt", l = {706}, m = "invokeSuspend")
final class DownloadManagerApi$openDownloadVideo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final FragmentActivity $activity;
    final String $pageFrom;
    final String $resourceId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerApi$openDownloadVideo$1(String str, String str2, FragmentActivity fragmentActivity, Continuation<? super DownloadManagerApi$openDownloadVideo$1> continuation) {
        super(2, continuation);
        this.$resourceId = str;
        this.$pageFrom = str2;
        this.$activity = fragmentActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerApi$openDownloadVideo$1(this.$resourceId, this.$pageFrom, this.$activity, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            String str = this.$resourceId;
            this.label = 1;
            obj = downloadEsHelperA.p(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        DownloadBean downloadBean = (DownloadBean) obj;
        if (downloadBean == null) {
            return Unit.f64096a;
        }
        if (downloadBean.isOutside()) {
            Navigator.x(TheRouter.c("/video/detail").K("extra_local_path", downloadBean.getPath()).K("extra_url", downloadBean.getUrl()).K("extra_resource_id", downloadBean.getResourceId()).K("extra_name", downloadBean.getName()).K("extra_page_from", this.$pageFrom).F("extra_height", downloadBean.getVideoHeight()).F("extra_width", downloadBean.getVideoWidth()), this.$activity, null, 2, null);
            return Unit.f64096a;
        }
        com.transsnet.downloader.manager.g gVarA = com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
        if (downloadBean.getStatus() != 5) {
            gVarA.l(downloadBean);
        }
        Navigator.x(TheRouter.c("/video/detail").K("extra_local_path", downloadBean.getPath()).K("extra_url", downloadBean.getUrl()).K("extra_proxy_url", downloadBean.getStatus() == 5 ? "" : gVarA.h(downloadBean)).K("extra_resource_id", downloadBean.getResourceId()).K("extra_subject_id", downloadBean.getSubjectId()).K("extra_name", downloadBean.getName()).K("extra_post_id", downloadBean.getPostId()).z("extra_completed", downloadBean.getStatus() == 5).z("extra_is_series", downloadBean.isSeries()).K("extra_page_from", this.$pageFrom).F("extra_height", downloadBean.getVideoHeight()).F("extra_width", downloadBean.getVideoWidth()), this.$activity, null, 2, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerApi$openDownloadVideo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
