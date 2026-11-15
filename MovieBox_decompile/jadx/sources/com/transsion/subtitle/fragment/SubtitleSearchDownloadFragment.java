package com.transsion.subtitle.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle.view.SubtitleSearchTabTitleView;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 F2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001GB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u001d\u0010\u000e\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J:\u0010&\u001a\u00020\u00072#\u0010#\u001a\u001f\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001e2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R \u0010=\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020:098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R$\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00105¨\u0006H"}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Ljt/f;", "<init>", "()V", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "", "y0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "initViewModel", "", "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;", "tabs", "x0", "(Ljava/util/List;)V", "r0", "t0", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Ljt/f;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "lazyLoadData", "Lkotlin/Function1;", "Lht/a;", "Lkotlin/ParameterName;", "name", "bean", "callback", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "z0", "(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "g", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "h", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "vpAdapter", "", "i", "I", "selectTabIndex", "j", "Ljava/lang/String;", "searchName", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/baselib/db/download/DownloadBean;", "", "Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;", "l", "Ljava/util/Map;", "fragmentList", "m", "Lkotlin/jvm/functions/Function1;", "subtitleSelectCallback", "", "n", "Z", "isFeedbackShown", "o", TtmlNode.TAG_P, "a", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubtitleSearchDownloadFragment extends SubtitleBaseFragment<jt.f> {

    public static final Companion INSTANCE = new Companion(null);

    private CommonNavigator commonNavigator;

    private FragmentStateAdapter vpAdapter;

    private int selectTabIndex;

    private String searchName;

    private DownloadBean downloadBean;

    private Function1 subtitleSelectCallback;

    private boolean isFeedbackShown;

    private final Map fragmentList = new LinkedHashMap();

    private String type = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleSearchDownloadFragment a(String str, DownloadBean downloadBean, String str2) {
            SubtitleSearchDownloadFragment subtitleSearchDownloadFragment = new SubtitleSearchDownloadFragment();
            subtitleSearchDownloadFragment.y0(downloadBean);
            subtitleSearchDownloadFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("EXTRA_NAME", str), TuplesKt.a("KEY_PAGE_NAME", str2)));
            return subtitleSearchDownloadFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends xy.a {

        final List f52778b;

        final SubtitleSearchDownloadFragment f52779c;

        public static final class a extends com.transsion.baseui.util.f {

            final SubtitleSearchDownloadFragment f52780e;

            final int f52781f;

            a(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, int i10) {
                this.f52780e = subtitleSearchDownloadFragment;
                this.f52781f = i10;
            }

            @Override
            public void c(View view) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void d(View view) {
                ViewPager2 viewPager2;
                jt.f fVar = (jt.f) this.f52780e.getMViewBinding();
                if (fVar == null || (viewPager2 = fVar.f63291i) == null) {
                    return;
                }
                viewPager2.setCurrentItem(this.f52781f, true);
            }
        }

        b(List list, SubtitleSearchDownloadFragment subtitleSearchDownloadFragment) {
            this.f52778b = list;
            this.f52779c = subtitleSearchDownloadFragment;
        }

        @Override
        public int a() {
            return this.f52778b.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setColors(0);
            return linePagerIndicator;
        }

        @Override
        public xy.d c(Context context, int i10) {
            Intrinsics.h(context, "context");
            SubtitleSearchTabTitleView subtitleSearchTabTitleView = new SubtitleSearchTabTitleView(context);
            List list = this.f52778b;
            SubtitleSearchDownloadFragment subtitleSearchDownloadFragment = this.f52779c;
            subtitleSearchTabTitleView.setTextWithString(((SubtitleLanguageMapBean) list.get(i10)).getLanName());
            subtitleSearchTabTitleView.setOnClickListener(new a(subtitleSearchDownloadFragment, i10));
            return subtitleSearchTabTitleView;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageScrollStateChanged(int i10) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i10);
            jt.f fVar = (jt.f) SubtitleSearchDownloadFragment.this.getMViewBinding();
            if (fVar == null || (magicIndicator = fVar.f63287e) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i10, f10, i11);
            jt.f fVar = (jt.f) SubtitleSearchDownloadFragment.this.getMViewBinding();
            if (fVar == null || (magicIndicator = fVar.f63287e) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i10, f10, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageSelected(int i10) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i10);
            jt.f fVar = (jt.f) SubtitleSearchDownloadFragment.this.getMViewBinding();
            if (fVar != null && (magicIndicator = fVar.f63287e) != null) {
                magicIndicator.onPageSelected(i10);
            }
            SubtitleSearchDownloadFragment.this.selectTabIndex = i10;
        }
    }

    public static final class d implements TextWatcher {
        public d() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            SubtitleSearchDownloadFragment.this.searchName = String.valueOf(editable);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class e implements TextView.OnEditorActionListener {
        e() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 0 && i10 != 3) {
                return false;
            }
            CharSequence text = textView != null ? textView.getText() : null;
            if (text == null || text.length() == 0) {
                fh.b.f60176a.e(Utils.a().getString(R$string.subtitle_search_empty_tips));
                return true;
            }
            SubtitleSearchResultListFragment subtitleSearchResultListFragment = (SubtitleSearchResultListFragment) SubtitleSearchDownloadFragment.this.fragmentList.get(Integer.valueOf(SubtitleSearchDownloadFragment.this.selectTabIndex));
            if (subtitleSearchResultListFragment != null) {
                subtitleSearchResultListFragment.Q0(SubtitleSearchDownloadFragment.this.searchName);
            }
            if (textView != null) {
                KeyboardUtils.e(textView);
            }
            return true;
        }
    }

    public static final class f extends FragmentStateAdapter {

        final List f52786b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(List list) {
            super(SubtitleSearchDownloadFragment.this);
            this.f52786b = list;
        }

        public static final Unit h(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment) {
            return subtitleSearchDownloadFragment.isFeedbackShown ? Unit.f64096a : Unit.f64096a;
        }

        @Override
        public Fragment createFragment(int i10) {
            SubtitleSearchResultListFragment subtitleSearchResultListFragmentA = SubtitleSearchResultListFragment.INSTANCE.a(SubtitleSearchDownloadFragment.this.downloadBean, (SubtitleLanguageMapBean) this.f52786b.get(i10), SubtitleSearchDownloadFragment.this.searchName, SubtitleSearchDownloadFragment.this.getPageName());
            final SubtitleSearchDownloadFragment subtitleSearchDownloadFragment = SubtitleSearchDownloadFragment.this;
            subtitleSearchDownloadFragment.fragmentList.put(Integer.valueOf(i10), subtitleSearchResultListFragmentA);
            subtitleSearchResultListFragmentA.U0(subtitleSearchDownloadFragment.subtitleSelectCallback);
            subtitleSearchResultListFragmentA.T0(new Function0() {
                @Override
                public final Object invoke() {
                    return SubtitleSearchDownloadFragment.f.h(subtitleSearchDownloadFragment);
                }
            });
            return subtitleSearchResultListFragmentA;
        }

        @Override
        public int getItemCount() {
            return this.f52786b.size();
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f52787a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52787a = function;
        }

        @Override
        public final Function a() {
            return this.f52787a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f52787a.invoke(obj);
        }
    }

    private final void initViewModel() {
        androidx.p009lifecycle.b0 b0VarJ;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, tag, "initViewModel ", false, 4, null);
            SubtitleDownloadViewModel viewModel = getViewModel();
            if (viewModel != null && (b0VarJ = viewModel.j()) != null) {
                b0VarJ.j(parentFragment, new g(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return SubtitleSearchDownloadFragment.w0(this.f52831a, (List) obj);
                    }
                }));
            }
            SubtitleDownloadViewModel viewModel2 = getViewModel();
            if (viewModel2 != null) {
                viewModel2.i();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void r0(List tabs) {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        MagicIndicator magicIndicator;
        Context context = getContext();
        if (context == null) {
            return;
        }
        CommonNavigator commonNavigator = new CommonNavigator(context);
        commonNavigator.setFollowTouch(true);
        commonNavigator.setAdapter(new b(tabs, this));
        this.commonNavigator = commonNavigator;
        jt.f fVar = (jt.f) getMViewBinding();
        if (fVar != null && (magicIndicator = fVar.f63287e) != null) {
            magicIndicator.setNavigator(this.commonNavigator);
        }
        t0();
        jt.f fVar2 = (jt.f) getMViewBinding();
        if (fVar2 != null && (viewPager3 = fVar2.f63291i) != null) {
            viewPager3.registerOnPageChangeCallback(new c());
        }
        jt.f fVar3 = (jt.f) getMViewBinding();
        if (fVar3 == null || (viewPager2 = fVar3.f63291i) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.selectTabIndex, false);
    }

    private final void t0() {
        LinearLayout titleContainer;
        View childAt;
        LinearLayout titleContainer2;
        CommonNavigator commonNavigator = this.commonNavigator;
        int childCount = (commonNavigator == null || (titleContainer2 = commonNavigator.getTitleContainer()) == null) ? 0 : titleContainer2.getChildCount();
        if (childCount > 0) {
            for (int i10 = 0; i10 < childCount; i10++) {
                CommonNavigator commonNavigator2 = this.commonNavigator;
                if (commonNavigator2 != null && (titleContainer = commonNavigator2.getTitleContainer()) != null && (childAt = titleContainer.getChildAt(i10)) != null) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                    if (layoutParams2 == null) {
                        layoutParams2 = new LinearLayout.LayoutParams(-2, com.blankj.utilcode.util.a0.a(30.0f));
                    }
                    layoutParams2.height = com.blankj.utilcode.util.a0.a(30.0f);
                    if (i10 == 0) {
                        layoutParams2.setMarginStart(com.blankj.utilcode.util.a0.a(16.0f));
                    }
                    layoutParams2.setMarginEnd(com.blankj.utilcode.util.a0.a(8.0f));
                    childAt.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    public static final void u0(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, View view) {
        androidx.p009lifecycle.b0 b0VarH;
        SubtitleDownloadViewModel viewModel = subtitleSearchDownloadFragment.getViewModel();
        if (viewModel == null || (b0VarH = viewModel.h()) == null) {
            return;
        }
        b0VarH.q(subtitleSearchDownloadFragment.type);
    }

    public static final void v0(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, View view) {
        String str = subtitleSearchDownloadFragment.searchName;
        if (str == null || str.length() == 0) {
            fh.b.f60176a.e(Utils.a().getString(R$string.subtitle_search_empty_tips));
            return;
        }
        SubtitleSearchResultListFragment subtitleSearchResultListFragment = (SubtitleSearchResultListFragment) subtitleSearchDownloadFragment.fragmentList.get(Integer.valueOf(subtitleSearchDownloadFragment.selectTabIndex));
        if (subtitleSearchResultListFragment != null) {
            subtitleSearchResultListFragment.Q0(subtitleSearchDownloadFragment.searchName);
        }
        if (view != null) {
            KeyboardUtils.e(view);
        }
    }

    public static final Unit w0(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, List list) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = subtitleSearchDownloadFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "get languages list success, size = " + list.size() + " ", false, 4, null);
        ArrayList arrayList = new ArrayList();
        Intrinsics.e(list);
        arrayList.addAll(list);
        com.transsion.subtitle.helper.c.d(arrayList);
        subtitleSearchDownloadFragment.x0(arrayList);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void x0(List tabs) {
        ViewPager2 viewPager2;
        this.vpAdapter = new f(tabs);
        jt.f fVar = (jt.f) getMViewBinding();
        if (fVar != null && (viewPager2 = fVar.f63291i) != null) {
            viewPager2.setAdapter(this.vpAdapter);
        }
        r0(tabs);
    }

    public final void y0(DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        EditTextWithClear editTextWithClear;
        TextView textView;
        EditTextWithClear editTextWithClear2;
        AppCompatImageView appCompatImageView;
        jt.f fVar;
        EditTextWithClear editTextWithClear3;
        EditTextWithClear editTextWithClear4;
        Intrinsics.h(view, "view");
        if (c0()) {
            int iA = com.blankj.utilcode.util.a0.a(12.0f);
            int iA2 = com.blankj.utilcode.util.a0.a(5.0f);
            jt.f fVar2 = (jt.f) getMViewBinding();
            if (fVar2 != null && (editTextWithClear4 = fVar2.f63284b) != null) {
                editTextWithClear4.setPadding(iA * 3, iA2, iA, iA2);
            }
        }
        initViewModel();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.searchName = arguments.getString("EXTRA_NAME", "");
        }
        String str = this.searchName;
        if (str != null && str.length() != 0 && (fVar = (jt.f) getMViewBinding()) != null && (editTextWithClear3 = fVar.f63284b) != null) {
            editTextWithClear3.setText(this.searchName);
        }
        jt.f fVar3 = (jt.f) getMViewBinding();
        if (fVar3 != null && (appCompatImageView = fVar3.f63285c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SubtitleSearchDownloadFragment.u0(this.f52829a, view2);
                }
            });
        }
        jt.f fVar4 = (jt.f) getMViewBinding();
        if (fVar4 != null && (editTextWithClear2 = fVar4.f63284b) != null) {
            editTextWithClear2.addTextChangedListener(new d());
        }
        jt.f fVar5 = (jt.f) getMViewBinding();
        if (fVar5 != null && (textView = fVar5.f63289g) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SubtitleSearchDownloadFragment.v0(this.f52830a, view2);
                }
            });
        }
        jt.f fVar6 = (jt.f) getMViewBinding();
        if (fVar6 == null || (editTextWithClear = fVar6.f63284b) == null) {
            return;
        }
        editTextWithClear.setOnEditorActionListener(new e());
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        e0("dialog_subtitle_search");
    }

    @Override
    public jt.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jt.f fVarC = jt.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    public final void z0(Function1 callback, String type) {
        Intrinsics.h(type, "type");
        this.subtitleSelectCallback = callback;
        this.type = type;
    }
}
