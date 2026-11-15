package com.transsion.baseui.widget.magicindicator;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.R$id;
import net.lucode.hackware.magicindicator.R$layout;
import uy.b;
import xy.c;
import xy.d;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\nJ7\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b \u0010\u001eJ\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\nJ\u000f\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b\"\u0010\nJ/\u0010'\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u000eH\u0016¢\u0006\u0004\b'\u0010(J/\u0010*\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010(J\u001f\u0010+\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0016¢\u0006\u0004\b-\u0010,J\u0017\u0010/\u001a\u0004\u0018\u00010.2\u0006\u0010#\u001a\u00020\u0010¢\u0006\u0004\b/\u00100R\u0018\u00103\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u00102R(\u00109\u001a\u0004\u0018\u0001042\b\u00105\u001a\u0004\u0018\u0001048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000b\u00106\u001a\u0004\b7\u00108R\u0018\u0010:\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00106R(\u0010@\u001a\u0004\u0018\u00010;2\b\u00105\u001a\u0004\u0018\u00010;8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR*\u0010L\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR*\u0010R\u001a\u00020\u000e2\u0006\u0010P\u001a\u00020\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010K\u001a\u0004\bR\u0010M\"\u0004\bS\u0010OR\"\u0010Z\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\"\u0010\\\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010K\u001a\u0004\b\\\u0010M\"\u0004\b]\u0010OR\"\u0010_\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010K\u001a\u0004\b_\u0010M\"\u0004\b`\u0010OR\"\u0010f\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010\u001eR\"\u0010j\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bg\u0010b\u001a\u0004\bh\u0010d\"\u0004\bi\u0010\u001eR\"\u0010l\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bk\u0010K\u001a\u0004\bl\u0010M\"\u0004\bm\u0010OR\u0016\u0010o\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010KR\"\u0010q\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010K\u001a\u0004\bq\u0010M\"\u0004\br\u0010OR\u001a\u0010w\u001a\b\u0012\u0004\u0012\u00020t0s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR\u0014\u0010{\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010zR)\u0010|\u001a\u0004\u0018\u00010A2\b\u0010|\u001a\u0004\u0018\u00010A8F@FX\u0086\u000e¢\u0006\r\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R(\u0010\u0082\u0001\u001a\u00020\u000e2\u0007\u0010\u0081\u0001\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0082\u0001\u0010M\"\u0005\b\u0083\u0001\u0010O¨\u0006\u0084\u0001"}, d2 = {"Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "Landroid/widget/FrameLayout;", "Lvy/a;", "Luy/b$a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "a", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "notifyDataSetChanged", "", "changed", "", TtmlNode.LEFT, IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.RIGHT, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "onLayout", "(ZIIII)V", RequestParameters.POSITION, "", "positionOffset", "positionOffsetPixels", "onPageScrolled", "(IFI)V", "onPageSelected", "(I)V", "state", "onPageScrollStateChanged", "onAttachToMagicIndicator", "onDetachFromMagicIndicator", "index", "totalCount", "enterPercent", "leftToRight", "onEnter", "(IIFZ)V", "leavePercent", "onLeave", "onSelected", "(II)V", "onDeselected", "Lxy/d;", "getPagerTitleView", "(I)Lxy/d;", "Landroid/widget/HorizontalScrollView;", "Landroid/widget/HorizontalScrollView;", "mScrollView", "Landroid/widget/LinearLayout;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Landroid/widget/LinearLayout;", "getTitleContainer", "()Landroid/widget/LinearLayout;", "titleContainer", "mIndicatorContainer", "Lxy/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lxy/c;", "getPagerIndicator", "()Lxy/c;", "pagerIndicator", "Lqj/a;", "e", "Lqj/a;", "mAdapter", "Luy/b;", "f", "Luy/b;", "mNavigatorHelper", "adjust", "g", "Z", "isAdjustMode", "()Z", "setAdjustMode", "(Z)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "h", "isEnablePivotScroll", "setEnablePivotScroll", "i", "F", "getScrollPivotX", "()F", "setScrollPivotX", "(F)V", "scrollPivotX", "j", "isSmoothScroll", "setSmoothScroll", CampaignEx.JSON_KEY_AD_K, "isFollowTouch", "setFollowTouch", "l", "I", "getRightPadding", "()I", "setRightPadding", "rightPadding", "m", "getLeftPadding", "setLeftPadding", "leftPadding", "n", "isIndicatorOnTop", "setIndicatorOnTop", "o", "mSkimOver", TtmlNode.TAG_P, "isReselectWhenLayout", "setReselectWhenLayout", "", "Lyy/a;", CampaignEx.JSON_KEY_AD_Q, "Ljava/util/List;", "mPositionDataList", "Landroid/database/DataSetObserver;", CampaignEx.JSON_KEY_AD_R, "Landroid/database/DataSetObserver;", "mObserver", "adapter", "getAdapter", "()Lqj/a;", "setAdapter", "(Lqj/a;)V", "skimOver", "isSkimOver", "setSkimOver", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ORCommonNavigator extends FrameLayout implements vy.a, b.a {
    public static final int $stable = 8;

    private HorizontalScrollView mScrollView;

    private LinearLayout titleContainer;

    private LinearLayout mIndicatorContainer;

    private c pagerIndicator;

    private qj.a mAdapter;

    private final b mNavigatorHelper;

    private boolean isAdjustMode;

    private boolean isEnablePivotScroll;

    private float scrollPivotX;

    private boolean isSmoothScroll;

    private boolean isFollowTouch;

    private int rightPadding;

    private int leftPadding;

    private boolean isIndicatorOnTop;

    private boolean mSkimOver;

    private boolean isReselectWhenLayout;

    private final List mPositionDataList;

    private final DataSetObserver mObserver;

    public static final class a extends DataSetObserver {
        a() {
        }

        @Override
        public void onChanged() {
            b bVar = ORCommonNavigator.this.mNavigatorHelper;
            qj.a aVar = ORCommonNavigator.this.mAdapter;
            bVar.m(aVar != null ? aVar.a() : 0);
            ORCommonNavigator.this.a();
        }

        @Override
        public void onInvalidated() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ORCommonNavigator(Context context) {
        super(context);
        Intrinsics.e(context);
        b bVar = new b();
        this.mNavigatorHelper = bVar;
        this.scrollPivotX = 0.5f;
        this.isSmoothScroll = true;
        this.isFollowTouch = true;
        this.isReselectWhenLayout = true;
        this.mPositionDataList = new ArrayList();
        this.mObserver = new a();
        bVar.k(this);
    }

    public final void a() {
        ViewParent parent;
        removeAllViews();
        View viewInflate = this.isAdjustMode ? LayoutInflater.from(getContext()).inflate(R$layout.pager_navigator_layout_no_scroll, this) : LayoutInflater.from(getContext()).inflate(R$layout.pager_navigator_layout, this);
        View viewFindViewById = viewInflate.findViewById(R$id.scroll_view);
        Intrinsics.f(viewFindViewById, "null cannot be cast to non-null type android.widget.HorizontalScrollView");
        this.mScrollView = (HorizontalScrollView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.title_container);
        Intrinsics.f(viewFindViewById2, "null cannot be cast to non-null type android.widget.LinearLayout");
        LinearLayout linearLayout = (LinearLayout) viewFindViewById2;
        this.titleContainer = linearLayout;
        if (linearLayout != null) {
            linearLayout.setPadding(this.leftPadding, 0, this.rightPadding, 0);
        }
        View viewFindViewById3 = viewInflate.findViewById(R$id.indicator_container);
        Intrinsics.f(viewFindViewById3, "null cannot be cast to non-null type android.widget.LinearLayout");
        LinearLayout linearLayout2 = (LinearLayout) viewFindViewById3;
        this.mIndicatorContainer = linearLayout2;
        if (this.isIndicatorOnTop && linearLayout2 != null && (parent = linearLayout2.getParent()) != null) {
            parent.bringChildToFront(this.mIndicatorContainer);
        }
        b();
    }

    private final void b() {
        int iG = this.mNavigatorHelper.g();
        int i10 = 0;
        while (true) {
            LinearLayout.LayoutParams layoutParams = null;
            if (i10 >= iG) {
                break;
            }
            qj.a aVar = this.mAdapter;
            Object objC = aVar != null ? aVar.c(getContext(), i10) : null;
            qj.a aVar2 = this.mAdapter;
            if (aVar2 != null) {
                Context context = getContext();
                Intrinsics.g(context, "getContext(...)");
                layoutParams = aVar2.h(context, i10);
            }
            if (objC instanceof View) {
                View view = (View) objC;
                if (layoutParams == null) {
                    if (this.isAdjustMode) {
                        layoutParams = new LinearLayout.LayoutParams(0, -1);
                        qj.a aVar3 = this.mAdapter;
                        if (aVar3 != null) {
                            layoutParams.weight = aVar3.d(getContext(), i10);
                        }
                    } else {
                        layoutParams = new LinearLayout.LayoutParams(-2, -1);
                    }
                }
                LinearLayout linearLayout = this.titleContainer;
                if (linearLayout != null) {
                    linearLayout.addView(view, layoutParams);
                }
            }
            i10++;
        }
        qj.a aVar4 = this.mAdapter;
        if (aVar4 != null) {
            c cVarB = aVar4 != null ? aVar4.b(getContext()) : null;
            this.pagerIndicator = cVarB;
            if (cVarB instanceof View) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                LinearLayout linearLayout2 = this.mIndicatorContainer;
                if (linearLayout2 != null) {
                    linearLayout2.addView((View) this.pagerIndicator, layoutParams2);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c() {
        View view;
        View childAt;
        this.mPositionDataList.clear();
        int iG = this.mNavigatorHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            yy.a aVar = new yy.a();
            LinearLayout linearLayout = this.titleContainer;
            if (linearLayout != null) {
                childAt = linearLayout.getChildAt(i10);
            } else {
                view = 0;
            }
            if (view != 0) {
                aVar.f76426a = view.getLeft();
                aVar.f76427b = view.getTop();
                aVar.f76428c = view.getRight();
                int bottom = view.getBottom();
                aVar.f76429d = bottom;
                if (view instanceof xy.b) {
                    view = childAt;
                    xy.b bVar = (xy.b) view;
                    aVar.f76430e = bVar.getContentLeft();
                    aVar.f76431f = bVar.getContentTop();
                    aVar.f76432g = bVar.getContentRight();
                    aVar.f76433h = bVar.getContentBottom();
                } else {
                    view = childAt;
                    aVar.f76430e = aVar.f76426a;
                    aVar.f76431f = aVar.f76427b;
                    aVar.f76432g = aVar.f76428c;
                    aVar.f76433h = bottom;
                }
            } else {
                view = childAt;
            }
            this.mPositionDataList.add(aVar);
        }
    }

    public final qj.a getMAdapter() {
        return this.mAdapter;
    }

    public final int getLeftPadding() {
        return this.leftPadding;
    }

    public final c getPagerIndicator() {
        return this.pagerIndicator;
    }

    public final d getPagerTitleView(int index) {
        LinearLayout linearLayout = this.titleContainer;
        if (linearLayout == null) {
            return null;
        }
        View childAt = linearLayout != null ? linearLayout.getChildAt(index) : null;
        if (childAt instanceof d) {
            return (d) childAt;
        }
        return null;
    }

    public final int getRightPadding() {
        return this.rightPadding;
    }

    public final float getScrollPivotX() {
        return this.scrollPivotX;
    }

    public final LinearLayout getTitleContainer() {
        return this.titleContainer;
    }

    public final boolean getIsAdjustMode() {
        return this.isAdjustMode;
    }

    public final boolean getIsEnablePivotScroll() {
        return this.isEnablePivotScroll;
    }

    public final boolean getIsFollowTouch() {
        return this.isFollowTouch;
    }

    public final boolean getIsIndicatorOnTop() {
        return this.isIndicatorOnTop;
    }

    public final boolean getIsReselectWhenLayout() {
        return this.isReselectWhenLayout;
    }

    public final boolean getMSkimOver() {
        return this.mSkimOver;
    }

    public final boolean getIsSmoothScroll() {
        return this.isSmoothScroll;
    }

    @Override
    public void notifyDataSetChanged() {
        qj.a aVar = this.mAdapter;
        if (aVar == null || aVar == null) {
            return;
        }
        aVar.e();
    }

    @Override
    public void onAttachToMagicIndicator() {
        a();
    }

    @Override
    public void onDeselected(int index, int totalCount) {
        LinearLayout linearLayout = this.titleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout != null ? linearLayout.getChildAt(index) : null;
        if (childAt instanceof d) {
            ((d) childAt).onDeselected(index, totalCount);
        }
    }

    @Override
    public void onDetachFromMagicIndicator() {
    }

    @Override
    public void onEnter(int index, int totalCount, float enterPercent, boolean leftToRight) {
        LinearLayout linearLayout = this.titleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout != null ? linearLayout.getChildAt(index) : null;
        if (childAt instanceof d) {
            ((d) childAt).onEnter(index, totalCount, enterPercent, leftToRight);
        }
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mAdapter != null) {
            c();
            c cVar = this.pagerIndicator;
            if (cVar != null && cVar != null) {
                cVar.onPositionDataProvide(this.mPositionDataList);
            }
            if (this.isReselectWhenLayout && this.mNavigatorHelper.f() == 0) {
                onPageSelected(this.mNavigatorHelper.e());
                onPageScrolled(this.mNavigatorHelper.e(), 0.0f, 0);
            }
        }
    }

    @Override
    public void onLeave(int index, int totalCount, float leavePercent, boolean leftToRight) {
        LinearLayout linearLayout = this.titleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout != null ? linearLayout.getChildAt(index) : null;
        if (childAt instanceof d) {
            ((d) childAt).onLeave(index, totalCount, leavePercent, leftToRight);
        }
    }

    @Override
    public void onPageScrollStateChanged(int state) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.h(state);
            c cVar = this.pagerIndicator;
            if (cVar == null || cVar == null) {
                return;
            }
            cVar.onPageScrollStateChanged(state);
        }
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.i(position, positionOffset, positionOffsetPixels);
            c cVar = this.pagerIndicator;
            if (cVar != null) {
                cVar.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
            if (this.mScrollView == null || this.mPositionDataList.size() <= 0 || position < 0 || position >= this.mPositionDataList.size() || !this.isFollowTouch) {
                return;
            }
            int iMin = (int) Math.min(this.mPositionDataList.size() - 1, position);
            int iMin2 = (int) Math.min(this.mPositionDataList.size() - 1, position + 1);
            yy.a aVar = (yy.a) this.mPositionDataList.get(iMin);
            yy.a aVar2 = (yy.a) this.mPositionDataList.get(iMin2);
            float fA = aVar.a();
            HorizontalScrollView horizontalScrollView = this.mScrollView;
            float width = fA - ((horizontalScrollView != null ? horizontalScrollView.getWidth() : 0) * this.scrollPivotX);
            float fA2 = aVar2.a();
            HorizontalScrollView horizontalScrollView2 = this.mScrollView;
            float width2 = fA2 - ((horizontalScrollView2 != null ? horizontalScrollView2.getWidth() : 0) * this.scrollPivotX);
            HorizontalScrollView horizontalScrollView3 = this.mScrollView;
            if (horizontalScrollView3 != null) {
                horizontalScrollView3.scrollTo((int) (width + ((width2 - width) * positionOffset)), 0);
            }
        }
    }

    @Override
    public void onPageSelected(int position) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.j(position);
            c cVar = this.pagerIndicator;
            if (cVar == null || cVar == null) {
                return;
            }
            cVar.onPageSelected(position);
        }
    }

    @Override
    public void onSelected(int index, int totalCount) {
        LinearLayout linearLayout = this.titleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout != null ? linearLayout.getChildAt(index) : null;
        if (childAt instanceof d) {
            ((d) childAt).onSelected(index, totalCount);
        }
        if (this.isAdjustMode || this.isFollowTouch || this.mScrollView == null || this.mPositionDataList.size() <= 0) {
            return;
        }
        yy.a aVar = (yy.a) this.mPositionDataList.get((int) Math.min(this.mPositionDataList.size() - 1, index));
        if (this.isEnablePivotScroll) {
            float fA = aVar.a();
            HorizontalScrollView horizontalScrollView = this.mScrollView;
            Intrinsics.e(horizontalScrollView);
            float width = fA - (horizontalScrollView.getWidth() * this.scrollPivotX);
            if (this.isSmoothScroll) {
                HorizontalScrollView horizontalScrollView2 = this.mScrollView;
                if (horizontalScrollView2 != null) {
                    horizontalScrollView2.smoothScrollTo((int) width, 0);
                    return;
                }
                return;
            }
            HorizontalScrollView horizontalScrollView3 = this.mScrollView;
            if (horizontalScrollView3 != null) {
                horizontalScrollView3.scrollTo((int) width, 0);
                return;
            }
            return;
        }
        HorizontalScrollView horizontalScrollView4 = this.mScrollView;
        Intrinsics.e(horizontalScrollView4);
        int scrollX = horizontalScrollView4.getScrollX();
        int i10 = aVar.f76426a;
        if (scrollX > i10) {
            if (this.isSmoothScroll) {
                HorizontalScrollView horizontalScrollView5 = this.mScrollView;
                if (horizontalScrollView5 != null) {
                    horizontalScrollView5.smoothScrollTo(i10, 0);
                    return;
                }
                return;
            }
            HorizontalScrollView horizontalScrollView6 = this.mScrollView;
            if (horizontalScrollView6 != null) {
                horizontalScrollView6.scrollTo(i10, 0);
                return;
            }
            return;
        }
        HorizontalScrollView horizontalScrollView7 = this.mScrollView;
        Intrinsics.e(horizontalScrollView7);
        int scrollX2 = horizontalScrollView7.getScrollX() + getWidth();
        int i11 = aVar.f76428c;
        if (scrollX2 < i11) {
            if (this.isSmoothScroll) {
                HorizontalScrollView horizontalScrollView8 = this.mScrollView;
                if (horizontalScrollView8 != null) {
                    horizontalScrollView8.smoothScrollTo(i11 - getWidth(), 0);
                    return;
                }
                return;
            }
            HorizontalScrollView horizontalScrollView9 = this.mScrollView;
            if (horizontalScrollView9 != null) {
                horizontalScrollView9.scrollTo(i11 - getWidth(), 0);
            }
        }
    }

    public final void setAdapter(qj.a aVar) {
        qj.a aVar2;
        qj.a aVar3 = this.mAdapter;
        if (aVar3 == aVar) {
            return;
        }
        if (aVar3 != null && aVar3 != null) {
            aVar3.g(this.mObserver);
        }
        this.mAdapter = aVar;
        if (aVar == null) {
            this.mNavigatorHelper.m(0);
            a();
            return;
        }
        if (aVar != null) {
            aVar.f(this.mObserver);
        }
        b bVar = this.mNavigatorHelper;
        qj.a aVar4 = this.mAdapter;
        bVar.m(aVar4 != null ? aVar4.a() : 0);
        if (this.titleContainer == null || (aVar2 = this.mAdapter) == null) {
            return;
        }
        aVar2.e();
    }

    public final void setAdjustMode(boolean z10) {
        this.isAdjustMode = z10;
    }

    public final void setEnablePivotScroll(boolean z10) {
        this.isEnablePivotScroll = z10;
    }

    public final void setFollowTouch(boolean z10) {
        this.isFollowTouch = z10;
    }

    public final void setIndicatorOnTop(boolean z10) {
        this.isIndicatorOnTop = z10;
    }

    public final void setLeftPadding(int i10) {
        this.leftPadding = i10;
    }

    public final void setReselectWhenLayout(boolean z10) {
        this.isReselectWhenLayout = z10;
    }

    public final void setRightPadding(int i10) {
        this.rightPadding = i10;
    }

    public final void setScrollPivotX(float f10) {
        this.scrollPivotX = f10;
    }

    public final void setSkimOver(boolean z10) {
        this.mSkimOver = z10;
        this.mNavigatorHelper.l(z10);
    }

    public final void setSmoothScroll(boolean z10) {
        this.isSmoothScroll = z10;
    }
}
