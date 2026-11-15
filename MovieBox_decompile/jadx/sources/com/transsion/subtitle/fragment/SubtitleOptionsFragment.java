package com.transsion.subtitle.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.subtitle.helper.LocalVideoUiType;
import com.transsion.subtitle.view.SubtitleOptionsView;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0003\u0010\u0004JK\u0010\u0011\u001a\u00020\u00102\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J!\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001f\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010'R\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Ljt/e;", "<init>", "()V", "Lcom/transsion/subtitle/helper/LocalVideoUiType;", "layerType", "", "playerContainerHeight", "Lcom/avery/subtitle/widget/SimpleSubtitleView;", "subtitleViewTop", "subtitleViewBottom", "Landroid/view/ViewGroup;", "subtitleViewGroup", "Lcom/transsion/subtitle/helper/d;", "optionsHelper", "", "j0", "(Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Lcom/transsion/subtitle/helper/d;)V", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Ljt/e;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initView", "d0", "g", "Lcom/transsion/subtitle/helper/LocalVideoUiType;", "h", "Ljava/lang/Integer;", "i", "Lcom/transsion/subtitle/helper/d;", "j", "Lcom/avery/subtitle/widget/SimpleSubtitleView;", CampaignEx.JSON_KEY_AD_K, "l", "Landroid/view/ViewGroup;", "m", "a", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubtitleOptionsFragment extends SubtitleBaseFragment<jt.e> {

    public static final Companion INSTANCE = new Companion(null);

    private LocalVideoUiType layerType;

    private Integer playerContainerHeight;

    private com.transsion.subtitle.helper.d optionsHelper;

    private SimpleSubtitleView subtitleViewTop;

    private SimpleSubtitleView subtitleViewBottom;

    private ViewGroup subtitleViewGroup;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleOptionsFragment a(LocalVideoUiType localVideoUiType, Integer num, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, ViewGroup viewGroup, com.transsion.subtitle.helper.d dVar, String str) {
            SubtitleOptionsFragment subtitleOptionsFragment = new SubtitleOptionsFragment();
            subtitleOptionsFragment.j0(localVideoUiType, num, simpleSubtitleView, simpleSubtitleView2, viewGroup, dVar);
            subtitleOptionsFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("KEY_PAGE_NAME", str)));
            return subtitleOptionsFragment;
        }

        private Companion() {
        }
    }

    public static final void i0(SubtitleOptionsFragment subtitleOptionsFragment, View view) {
        androidx.p009lifecycle.b0 b0VarH;
        SubtitleDownloadViewModel viewModel = subtitleOptionsFragment.getViewModel();
        if (viewModel == null || (b0VarH = viewModel.h()) == null) {
            return;
        }
        b0VarH.q("SELECT_SUBTITLE");
    }

    public final void j0(LocalVideoUiType layerType, Integer playerContainerHeight, SimpleSubtitleView subtitleViewTop, SimpleSubtitleView subtitleViewBottom, ViewGroup subtitleViewGroup, com.transsion.subtitle.helper.d optionsHelper) {
        this.layerType = layerType;
        this.playerContainerHeight = playerContainerHeight;
        this.subtitleViewTop = subtitleViewTop;
        this.subtitleViewBottom = subtitleViewBottom;
        this.subtitleViewGroup = subtitleViewGroup;
        this.optionsHelper = optionsHelper;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void d0() {
        SubtitleOptionsView subtitleOptionsView;
        jt.e eVar = (jt.e) getMViewBinding();
        if (eVar == null || (subtitleOptionsView = eVar.f63282b) == null) {
            return;
        }
        subtitleOptionsView.removeSubtitleOptions();
    }

    @Override
    public jt.e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jt.e eVarC = jt.e.c(inflater);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        SubtitleOptionsView subtitleOptionsView;
        Intrinsics.h(view, "view");
        jt.e eVar = (jt.e) getMViewBinding();
        if (eVar == null || (subtitleOptionsView = eVar.f63282b) == null) {
            return;
        }
        subtitleOptionsView.initOptions(this.layerType, this.playerContainerHeight, this.subtitleViewTop, this.subtitleViewBottom, this.subtitleViewGroup, getPageName(), this.optionsHelper);
        jt.i.a(subtitleOptionsView).f63314c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                SubtitleOptionsFragment.i0(this.f52827a, view2);
            }
        });
        subtitleOptionsView.addSubtitleOptions();
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        e0("dialog_subtitle_options");
    }
}
