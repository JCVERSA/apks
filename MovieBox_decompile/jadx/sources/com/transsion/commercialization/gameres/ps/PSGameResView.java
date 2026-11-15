package com.transsion.commercialization.gameres.ps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$string;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.commercialization.gameres.GameResView;
import com.transsion.commercialization.pslink.PsLinkDownLoadButton;
import com.transsion.commercialization.pslink.PsLinkServiceHelper;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/transsion/commercialization/gameres/ps/PSGameResView;", "Lcom/transsion/commercialization/gameres/GameResView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Luj/a;", "info", "", "i", "(Luj/a;)V", "j", "()V", "setContent", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PSGameResView extends GameResView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSGameResView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    private final void i(uj.a info) {
        String str;
        PsLinkServiceHelper psLinkServiceHelper = PsLinkServiceHelper.f42644a;
        if (psLinkServiceHelper.k()) {
            psLinkServiceHelper.h();
        }
        RecommendInfo recommendInfoI = info.i();
        zh.b bVar = zh.b.f76790a;
        if (bVar.c(recommendInfoI != null ? recommendInfoI.getPackageName() : null)) {
            if (!bVar.o(recommendInfoI != null ? recommendInfoI.getPackageName() : null)) {
                zh.b.b(bVar, recommendInfoI, true, "PSGame", null, 8, null);
            }
            str = MRAIDPresenter.OPEN;
        } else if (!l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        } else {
            zh.b.b(bVar, recommendInfoI, true, "PSGame", null, 8, null);
            j();
            str = "install";
        }
        vj.a.f73652a.e(info, getGamePageStyle(), str);
    }

    private final void j() {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.t();
        }
    }

    public static final void k(PSGameResView pSGameResView, uj.a aVar, View view) {
        pSGameResView.i(aVar);
    }

    @Override
    public void setContent(final uj.a info) {
        Intrinsics.h(info, "info");
        super.setContent(info);
        PsLinkServiceHelper.f42644a.h();
        AppCompatTextView tvAhaBtn = getViewBinding().f72313c;
        Intrinsics.g(tvAhaBtn, "tvAhaBtn");
        uf.c.h(tvAhaBtn);
        PsLinkDownLoadButton tvPsBtn = getViewBinding().f72315e;
        Intrinsics.g(tvPsBtn, "tvPsBtn");
        uf.c.k(tvPsBtn);
        PsLinkDownLoadButton tvPsBtn2 = getViewBinding().f72315e;
        Intrinsics.g(tvPsBtn2, "tvPsBtn");
        uf.c.k(tvPsBtn2);
        RecommendInfo recommendInfoI = info.i();
        if (recommendInfoI != null) {
            getViewBinding().f72315e.setItemInfo(recommendInfoI);
        }
        getViewBinding().f72315e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                PSGameResView.k(this.f42623a, info, view);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSGameResView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSGameResView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
    }
}
