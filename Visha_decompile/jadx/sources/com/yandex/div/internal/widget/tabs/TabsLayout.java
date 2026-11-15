package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.div.R;
import defpackage.pr2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0010\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0012¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0012¢\u0006\u0004\b\u000b\u0010\nR\u001e\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\"\u001a\u00020\u001d8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R$\u0010*\u001a\u0004\u0018\u00010#8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/yandex/div/internal/widget/tabs/TabsLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/widget/LinearLayout$LayoutParams;", "b", "()Landroid/widget/LinearLayout$LayoutParams;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;", "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;", "getTitleLayout", "()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;", "titleLayout", "Landroid/view/View;", "c", "Landroid/view/View;", "getDivider", "()Landroid/view/View;", "divider", "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;", "d", "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;", "getPagerLayout", "()Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;", "pagerLayout", "Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;", "e", "Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;", "getViewPager", "()Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;", "viewPager", "Lpr2;", "f", "Lpr2;", "getDivTabsAdapter", "()Lpr2;", "setDivTabsAdapter", "(Lpr2;)V", "divTabsAdapter", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class TabsLayout extends LinearLayout {

    public final TabTitlesLayoutView titleLayout;

    public final View divider;

    public final ViewPagerFixedSizeLayout pagerLayout;

    public final ScrollableViewPager viewPager;

    public pr2 divTabsAdapter;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TabsLayout(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        y45.j(context, "context");
    }

    public final LinearLayout.LayoutParams a() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.div_separator_delimiter_height));
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.div_horizontal_padding);
        layoutParams.leftMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        layoutParams.topMargin = getResources().getDimensionPixelSize(R.dimen.title_tab_title_separator_margin_top);
        layoutParams.bottomMargin = getResources().getDimensionPixelSize(R.dimen.title_tab_title_margin_vertical);
        return layoutParams;
    }

    public final LinearLayout.LayoutParams b() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.title_tab_title_height));
        layoutParams.gravity = GravityCompat.START;
        return layoutParams;
    }

    public pr2 getDivTabsAdapter() {
        return this.divTabsAdapter;
    }

    public View getDivider() {
        return this.divider;
    }

    public ViewPagerFixedSizeLayout getPagerLayout() {
        return this.pagerLayout;
    }

    public TabTitlesLayoutView<?> getTitleLayout() {
        return this.titleLayout;
    }

    public ScrollableViewPager getViewPager() {
        return this.viewPager;
    }

    public void setDivTabsAdapter(pr2 pr2Var) {
        this.divTabsAdapter = pr2Var;
    }

    public TabsLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabsLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        setId(R.id.div_tabs_block);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setOrientation(1);
        TabTitlesLayoutView tabTitlesLayoutView = new TabTitlesLayoutView(context, null, R.attr.divTabIndicatorLayoutStyle);
        tabTitlesLayoutView.setId(R.id.base_tabbed_title_container_scroller);
        tabTitlesLayoutView.setLayoutParams(b());
        int dimensionPixelSize = tabTitlesLayoutView.getResources().getDimensionPixelSize(R.dimen.title_tab_title_margin_vertical);
        int dimensionPixelSize2 = tabTitlesLayoutView.getResources().getDimensionPixelSize(R.dimen.title_tab_title_margin_horizontal);
        tabTitlesLayoutView.setPadding(dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize);
        tabTitlesLayoutView.setClipToPadding(false);
        this.titleLayout = tabTitlesLayoutView;
        View view = new View(context);
        view.setId(R.id.div_tabs_divider);
        view.setLayoutParams(a());
        view.setBackgroundResource(R.color.div_separator_color);
        this.divider = view;
        ScrollableViewPager scrollableViewPager = new ScrollableViewPager(context);
        scrollableViewPager.setId(R.id.div_tabs_pager_container);
        scrollableViewPager.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        scrollableViewPager.setOverScrollMode(2);
        ViewCompat.setNestedScrollingEnabled(scrollableViewPager, true);
        this.viewPager = scrollableViewPager;
        ViewPagerFixedSizeLayout viewPagerFixedSizeLayout = new ViewPagerFixedSizeLayout(context, null, 0, 6, null);
        viewPagerFixedSizeLayout.setId(R.id.div_tabs_container_helper);
        viewPagerFixedSizeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        viewPagerFixedSizeLayout.setCollapsiblePaddingBottom(0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        frameLayout.setVisibility(8);
        viewPagerFixedSizeLayout.addView(getViewPager());
        viewPagerFixedSizeLayout.addView(frameLayout);
        this.pagerLayout = viewPagerFixedSizeLayout;
        addView(getTitleLayout());
        addView(getDivider());
        addView(getPagerLayout());
    }
}
