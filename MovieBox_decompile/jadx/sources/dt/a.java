package dt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.tabs.TabLayout;
import com.transsion.subroom.R$id;
import com.transsion.subroom.R$layout;
import com.transsion.wrapperad.view.secondfloor.SecondFloorArcCoverView;
import com.transsion.wrapperad.view.secondfloor.TrendingTwoLevelIrregularView;

public final class a implements f4.a {

    private final ConstraintLayout f59067a;

    public final SecondFloorArcCoverView f59068b;

    public final View f59069c;

    public final FrameLayout f59070d;

    public final Group f59071e;

    public final View f59072f;

    public final ImageView f59073g;

    public final View f59074h;

    public final View f59075i;

    public final ImageView f59076j;

    public final TrendingTwoLevelIrregularView f59077k;

    public final ImageView f59078l;

    public final TabLayout f59079m;

    private a(ConstraintLayout constraintLayout, SecondFloorArcCoverView secondFloorArcCoverView, View view, FrameLayout frameLayout, Group group, View view2, ImageView imageView, View view3, View view4, ImageView imageView2, TrendingTwoLevelIrregularView trendingTwoLevelIrregularView, ImageView imageView3, TabLayout tabLayout) {
        this.f59067a = constraintLayout;
        this.f59068b = secondFloorArcCoverView;
        this.f59069c = view;
        this.f59070d = frameLayout;
        this.f59071e = group;
        this.f59072f = view2;
        this.f59073g = imageView;
        this.f59074h = view3;
        this.f59075i = view4;
        this.f59076j = imageView2;
        this.f59077k = trendingTwoLevelIrregularView;
        this.f59078l = imageView3;
        this.f59079m = tabLayout;
    }

    public static a a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i10 = R$id.arcCover;
        SecondFloorArcCoverView secondFloorArcCoverView = (SecondFloorArcCoverView) f4.b.a(view, i10);
        if (secondFloorArcCoverView != null && (viewA = f4.b.a(view, (i10 = R$id.centerBg))) != null) {
            i10 = R$id.container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.largeBottomBg;
                Group group = (Group) f4.b.a(view, i10);
                if (group != null && (viewA2 = f4.b.a(view, (i10 = R$id.leftBg))) != null) {
                    i10 = R$id.leftTwoBg;
                    ImageView imageView = (ImageView) f4.b.a(view, i10);
                    if (imageView != null && (viewA3 = f4.b.a(view, (i10 = R$id.main_bottom_view))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.rightBg))) != null) {
                        i10 = R$id.rightTwoBg;
                        ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                        if (imageView2 != null) {
                            i10 = R$id.secondFloorAdView;
                            TrendingTwoLevelIrregularView trendingTwoLevelIrregularView = (TrendingTwoLevelIrregularView) f4.b.a(view, i10);
                            if (trendingTwoLevelIrregularView != null) {
                                i10 = R$id.tabBg;
                                ImageView imageView3 = (ImageView) f4.b.a(view, i10);
                                if (imageView3 != null) {
                                    i10 = R$id.tab_bottom;
                                    TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                                    if (tabLayout != null) {
                                        return new a((ConstraintLayout) view, secondFloorArcCoverView, viewA, frameLayout, group, viewA2, imageView, viewA3, viewA4, imageView2, trendingTwoLevelIrregularView, imageView3, tabLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f59067a;
    }
}
