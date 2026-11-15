package com.transsion.commercialization.task;

import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.monopoly.manager.AdSceneAssetsManager;
import com.transsion.commercialization.R$string;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.OpType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class DownloadInterceptAdHelper {

    private final wj.g f42665a;

    private final MemberCheckResult f42666b;

    private final String f42667c;

    private final boolean f42668d;

    private BiddingNativeManager f42669e;

    private OpType f42670f;

    private AdInterceptDialog f42671g;

    public DownloadInterceptAdHelper(wj.g gVar, MemberCheckResult memberCheckResult, String str, boolean z10) {
        this.f42665a = gVar;
        this.f42666b = memberCheckResult;
        this.f42667c = str;
        this.f42668d = z10;
        this.f42670f = OpType.OP_AD;
    }

    private final void i() {
        wj.g gVar = this.f42665a;
        if (gVar != null) {
            gVar.a(false);
        }
        BiddingNativeManager biddingNativeManager = this.f42669e;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        this.f42671g = null;
    }

    private final String j(MemberCheckResult memberCheckResult) {
        return (memberCheckResult != null ? memberCheckResult.getMemberPrice() : null) + " " + (memberCheckResult != null ? memberCheckResult.getCurrency() : null) + " ";
    }

    private final void k() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadInterceptAdHelper$loadNativeAd$1(this, null), 3, null);
    }

    private final void l() {
        com.transsion.commercialization.pslink.a.f42649a.b(AdSceneAssetsManager.f41109b.getClassTag() + " --> showAdInterceptDialog() --> 广告任务 未完成 --> 结束流程");
        fh.b.f60176a.e(Utils.a().getString(R$string.co_cancel_tips));
        wj.g gVar = this.f42665a;
        if (gVar != null) {
            gVar.onFail();
        }
        i();
    }

    public final void m() {
        com.transsion.commercialization.pslink.a.f42649a.a(AdSceneAssetsManager.f41109b.getClassTag() + " --> showAdInterceptDialog() --> 广告任务完成 --> 继续执行下载任务 --> 结束流程");
        wj.g gVar = this.f42665a;
        if (gVar != null) {
            gVar.onSuccess();
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.n(this.f42670f, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadInterceptAdHelper.n(this.f42715a, obj);
                }
            });
        }
        i();
    }

    public static final Unit n(DownloadInterceptAdHelper downloadInterceptAdHelper, Object obj) {
        com.transsion.commercialization.pslink.a.f42649a.a(AdSceneAssetsManager.f41109b.getClassTag() + " --> checkMember() --> uploadOperationStat --> " + downloadInterceptAdHelper.f42670f + " --> success");
        return Unit.f64096a;
    }

    public static final Unit p(DownloadInterceptAdHelper downloadInterceptAdHelper, int i10) {
        if (i10 == 1) {
            downloadInterceptAdHelper.l();
        } else if (i10 == 2) {
            downloadInterceptAdHelper.m();
        }
        return Unit.f64096a;
    }

    public final void h() {
        k();
    }

    public final void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        MemberCheckResult memberCheckResult = this.f42666b;
        String interceptType = memberCheckResult != null ? memberCheckResult.getInterceptType() : null;
        OpType opType = OpType.OP_INSTALL;
        if (!Intrinsics.c(interceptType, opType.getValue())) {
            opType = OpType.OP_AD;
            Intrinsics.c(interceptType, opType.getValue());
        }
        this.f42670f = opType;
        wj.g gVar = this.f42665a;
        if (gVar != null) {
            gVar.a(true);
        }
        AdInterceptDialog adInterceptDialog = new AdInterceptDialog();
        this.f42671g = adInterceptDialog;
        adInterceptDialog.N0(j(this.f42666b));
        adInterceptDialog.I0(this.f42667c);
        adInterceptDialog.H0(this.f42668d);
        adInterceptDialog.F0(this.f42669e, biddingIntermediateMaterialBean);
        adInterceptDialog.G0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadInterceptAdHelper.p(this.f42714a, ((Integer) obj).intValue());
            }
        });
        adInterceptDialog.k0(com.blankj.utilcode.util.a.b(), "AdInterceptDialog");
    }

    public DownloadInterceptAdHelper(wj.g gVar, MemberCheckResult memberCheckResult, String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, (i10 & 2) != 0 ? null : memberCheckResult, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? false : z10);
    }
}
