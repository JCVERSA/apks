package com.transsion.player.longvideo.member;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.v;
import com.cloud.config.utils.XLogUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.memberapi.AdModule;
import com.transsion.memberapi.LotteryDisableModule;
import com.transsion.memberapi.LotteryModule;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberModule;
import com.transsion.memberapi.OrModule;
import com.transsion.memberapi.PayModule;
import com.transsion.memberapi.ThreeInOnePopup;
import com.transsion.memberapi.ThreeInOnePopupTitle;
import com.transsion.player.longvideo.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0011\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0012\u0010\u000fJ\u0019\u0010\u0013\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000fJ\u0019\u0010\u0014\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000fJ\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u000f\u0010 \u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\u0004J5\u0010&\u001a\u00020\b2\b\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010$\u001a\u0004\u0018\u00010\u00052\b\u0010%\u001a\u0004\u0018\u00010\u00052\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010$\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010%\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010,R\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lmn/b;", "<init>", "()V", "", "getClassTag", "()Ljava/lang/String;", "", "dismiss", "i0", "k0", "Lcom/transsion/memberapi/MemberCheckResult;", "memberCheckResult", "l0", "(Lcom/transsion/memberapi/MemberCheckResult;)V", "p0", "q0", "t0", "r0", "n0", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Lmn/b;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "lazyLoadData", "onDestroy", "Lln/a;", "bean", "pageName", "genre", "m0", "(Lln/a;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;)V", "a", "Lln/a;", "longVdPlayerBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/memberapi/MemberCheckResult;", "Lln/b;", "e", "Lln/b;", XLogUtil.TAG, "f", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ResolutionUnlockFragment extends BaseFragment<mn.b> {

    public static final Companion INSTANCE = new Companion(null);

    private ln.a longVdPlayerBean;

    private String pageName;

    private String genre;

    private MemberCheckResult memberCheckResult;

    private ln.b config;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ResolutionUnlockFragment a(ln.b config) {
            Intrinsics.h(config, "config");
            ResolutionUnlockFragment resolutionUnlockFragment = new ResolutionUnlockFragment();
            Bundle bundle = new Bundle();
            bundle.putString("arg_config_content", config.d());
            resolutionUnlockFragment.setArguments(bundle);
            resolutionUnlockFragment.config = config;
            return resolutionUnlockFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements wj.g {
        b() {
        }

        @Override
        public void a(boolean z10) {
            wj.g.a.a(this, z10);
        }

        @Override
        public void onFail() {
        }

        @Override
        public void onSuccess() {
            ResolutionUnlockFragment.this.i0();
        }
    }

    private final void dismiss() {
        getParentFragmentManager().F1("resolution_unlock_dismiss", new Bundle());
        k0();
    }

    public final String getClassTag() {
        String simpleName = ResolutionUnlockFragment.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void i0() {
        Bundle bundle = new Bundle();
        ln.b bVar = this.config;
        bundle.putString("config_content", bVar != null ? bVar.d() : null);
        getParentFragmentManager().F1("resolution_unlock_success", bundle);
        dismiss();
    }

    public static final void j0(ResolutionUnlockFragment resolutionUnlockFragment, View view) {
        resolutionUnlockFragment.dismiss();
    }

    private final void k0() {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (isAdded()) {
                getParentFragmentManager().p().r(this).j();
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void l0(MemberCheckResult memberCheckResult) {
        ThreeInOnePopup threeInOnePopup;
        List<String> moduleOrder;
        String str;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (moduleOrder = threeInOnePopup.getModuleOrder()) == null) {
            return;
        }
        for (String str2 : moduleOrder) {
            switch (str2.hashCode()) {
                case -2108817340:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_PAY)) {
                        t0(memberCheckResult);
                    } else {
                        continue;
                    }
                    break;
                case -1373222562:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_MEMBER)) {
                        r0(memberCheckResult);
                    } else {
                        continue;
                    }
                    break;
                case -1334275730:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_LOTTERY_DISABLE)) {
                        q0(memberCheckResult);
                    } else {
                        continue;
                    }
                    break;
                case -1141281069:
                    str = ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_UNSPECIFIED;
                    break;
                case -214437659:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_LOTTERY)) {
                        p0(memberCheckResult);
                    } else {
                        continue;
                    }
                    break;
                case 1733088487:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_AD)) {
                        n0(memberCheckResult);
                    } else {
                        continue;
                    }
                    break;
                case 1733088935:
                    str = ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_OR;
                    break;
                default:
                    continue;
            }
            str2.equals(str);
        }
    }

    private final void n0(final MemberCheckResult memberCheckResult) {
        ThreeInOnePopup threeInOnePopup;
        AdModule adModule;
        final ResolutionAdView resolutionAdView;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (adModule = threeInOnePopup.getAdModule()) == null || Intrinsics.c(adModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        wj.h.f74282a.a(getClassTag() + " --> typeAd() --> genre = " + this.genre);
        mn.b mViewBinding = getMViewBinding();
        if (mViewBinding == null || (resolutionAdView = mViewBinding.f66504b) == null) {
            return;
        }
        resolutionAdView.setListener(new b());
        resolutionAdView.setGenre(this.genre);
        resolutionAdView.setAdCallback(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResolutionUnlockFragment.o0(resolutionAdView, memberCheckResult, this, ((Boolean) obj).booleanValue());
            }
        });
        resolutionAdView.setAdModule(adModule);
        resolutionAdView.loadAd();
    }

    public static final Unit o0(ResolutionAdView resolutionAdView, MemberCheckResult memberCheckResult, ResolutionUnlockFragment resolutionUnlockFragment, boolean z10) {
        OrModule orModule;
        mn.b mViewBinding;
        LinearLayout linearLayout;
        if (z10) {
            resolutionAdView.setVisibility(0);
            ThreeInOnePopup threeInOnePopup = memberCheckResult.getThreeInOnePopup();
            if (threeInOnePopup != null && (orModule = threeInOnePopup.getOrModule()) != null && !Intrinsics.c(orModule.getEnable(), Boolean.FALSE) && (mViewBinding = resolutionUnlockFragment.getMViewBinding()) != null && (linearLayout = mViewBinding.f66510h) != null) {
                linearLayout.setVisibility(0);
            }
        } else {
            wj.h.f74282a.a(resolutionUnlockFragment.getClassTag() + " --> typeAd() --> 广告加载失败");
        }
        return Unit.f64096a;
    }

    private final void p0(MemberCheckResult memberCheckResult) {
        ThreeInOnePopup threeInOnePopup;
        LotteryModule lotteryModule;
        LinearLayout linearLayout;
        TextView textView;
        TextView textView2;
        String text;
        String highlightText;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (lotteryModule = threeInOnePopup.getLotteryModule()) == null || Intrinsics.c(lotteryModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        wj.h.f74282a.a(getClassTag() + " --> typeLottery() --> 开始渲染");
        mn.b mViewBinding = getMViewBinding();
        if (mViewBinding == null || (linearLayout = mViewBinding.f66511i) == null) {
            return;
        }
        linearLayout.setVisibility(0);
        mn.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (textView2 = mViewBinding2.f66517o) != null) {
            textView2.setVisibility(0);
            di.c cVar = di.c.f59042a;
            ThreeInOnePopupTitle firstTitle = lotteryModule.getFirstTitle();
            String str = "";
            if (firstTitle == null || (text = firstTitle.getText()) == null) {
                text = "";
            }
            ThreeInOnePopupTitle firstTitle2 = lotteryModule.getFirstTitle();
            if (firstTitle2 != null && (highlightText = firstTitle2.getHighlightText()) != null) {
                str = highlightText;
            }
            textView2.setText(cVar.a(text, str, Color.parseColor("#59D440")));
        }
        mn.b mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (textView = mViewBinding3.f66518p) == null) {
            return;
        }
        textView.setVisibility(0);
        ThreeInOnePopupTitle secondTitle = lotteryModule.getSecondTitle();
        textView.setText(secondTitle != null ? secondTitle.getText() : null);
    }

    private final void q0(MemberCheckResult memberCheckResult) {
        ThreeInOnePopup threeInOnePopup;
        LotteryDisableModule lotteryDisableModule;
        LinearLayout linearLayout;
        TextView textView;
        TextView textView2;
        String text;
        String highlightText;
        AppCompatImageView appCompatImageView;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (lotteryDisableModule = threeInOnePopup.getLotteryDisableModule()) == null || Intrinsics.c(lotteryDisableModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        wj.h.f74282a.a(getClassTag() + " --> typeLotteryDisable() --> 开始渲染");
        mn.b mViewBinding = getMViewBinding();
        if (mViewBinding == null || (linearLayout = mViewBinding.f66512j) == null) {
            return;
        }
        linearLayout.setVisibility(0);
        mn.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f66509g) != null) {
            appCompatImageView.setVisibility(0);
            ni.f.a aVar = ni.f.f67269a;
            Context context = appCompatImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(lotteryDisableModule.getBannerUrl()).d(appCompatImageView);
        }
        mn.b mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView2 = mViewBinding3.f66519q) != null) {
            textView2.setVisibility(0);
            di.c cVar = di.c.f59042a;
            ThreeInOnePopupTitle firstTitle = lotteryDisableModule.getFirstTitle();
            String str = "";
            if (firstTitle == null || (text = firstTitle.getText()) == null) {
                text = "";
            }
            ThreeInOnePopupTitle firstTitle2 = lotteryDisableModule.getFirstTitle();
            if (firstTitle2 != null && (highlightText = firstTitle2.getHighlightText()) != null) {
                str = highlightText;
            }
            textView2.setText(cVar.a(text, str, Color.parseColor("#59D440")));
        }
        mn.b mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (textView = mViewBinding4.f66520r) == null) {
            return;
        }
        textView.setVisibility(0);
        ThreeInOnePopupTitle secondTitle = lotteryDisableModule.getSecondTitle();
        textView.setText(secondTitle != null ? secondTitle.getText() : null);
    }

    private final void r0(MemberCheckResult memberCheckResult) {
        ThreeInOnePopup threeInOnePopup;
        MemberModule memberModule;
        ConstraintLayout constraintLayout;
        TextView textView;
        AppCompatImageView appCompatImageView;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (memberModule = threeInOnePopup.getMemberModule()) == null || Intrinsics.c(memberModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        wj.h.f74282a.a(getClassTag() + " --> typeMember() --> 开始渲染");
        mn.b mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f66505c) == null) {
            return;
        }
        constraintLayout.setVisibility(0);
        mn.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f66508f) != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = appCompatImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(memberModule.getIconUrl()).d(appCompatImageView);
        }
        mn.b mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f66516n) != null) {
            ThreeInOnePopupTitle text = memberModule.getText();
            textView.setText(text != null ? text.getText() : null);
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResolutionUnlockFragment.s0(this.f46210a, view);
            }
        });
    }

    public static final void s0(ResolutionUnlockFragment resolutionUnlockFragment, View view) {
        kotlinx.coroutines.k.d(v.a(resolutionUnlockFragment), null, null, new ResolutionUnlockFragment$typeMember$1$1$2$1(resolutionUnlockFragment, null), 3, null);
    }

    private final void t0(MemberCheckResult memberCheckResult) {
        ThreeInOnePopup threeInOnePopup;
        final PayModule payModule;
        ConstraintLayout constraintLayout;
        TextView textView;
        TextView textView2;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (payModule = threeInOnePopup.getPayModule()) == null || Intrinsics.c(payModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        wj.h.f74282a.a(getClassTag() + " --> typePay() --> 开始渲染");
        mn.b mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f66506d) == null) {
            return;
        }
        constraintLayout.setVisibility(0);
        mn.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (textView2 = mViewBinding2.f66514l) != null) {
            textView2.setText(payModule.getMoney());
        }
        mn.b mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f66513k) != null) {
            ThreeInOnePopupTitle text = payModule.getText();
            textView.setText(text != null ? text.getText() : null);
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResolutionUnlockFragment.u0(payModule, this, view);
            }
        });
    }

    public static final void u0(PayModule payModule, ResolutionUnlockFragment resolutionUnlockFragment, View view) {
        Bundle bundle = new Bundle();
        bundle.putString("sku_id", payModule.getSkuId());
        ln.b bVar = resolutionUnlockFragment.config;
        bundle.putString("config_content", bVar != null ? bVar.d() : null);
        resolutionUnlockFragment.getParentFragmentManager().F1("resolution_pay", bundle);
        resolutionUnlockFragment.dismiss();
    }

    @Override
    public mn.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        mn.b bVarC = mn.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    @Override
    public void lazyLoadData() {
        l0(this.memberCheckResult);
    }

    public final void m0(ln.a bean, String pageName, String genre, MemberCheckResult memberCheckResult) {
        this.longVdPlayerBean = bean;
        this.pageName = pageName;
        this.genre = genre;
        this.memberCheckResult = memberCheckResult;
    }

    @Override
    public void onDestroy() {
        ResolutionAdView resolutionAdView;
        super.onDestroy();
        mn.b mViewBinding = getMViewBinding();
        if (mViewBinding == null || (resolutionAdView = mViewBinding.f66504b) == null) {
            return;
        }
        resolutionAdView.onDestroy();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        View viewFindViewById = view.findViewById(R$id.ivClose);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    ResolutionUnlockFragment.j0(this.f46211a, view2);
                }
            });
        }
    }
}
