package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CheckInAnimationView;
import com.tn.lib.view.ToolBarCheckInAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.publish.view.PublishStateView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class n implements f4.a {

    private final ConstraintLayout f60370a;

    public final AppBarLayout f60371b;

    public final AppCompatImageView f60372c;

    public final ConstraintLayout f60373d;

    public final CoordinatorLayout f60374e;

    public final AppCompatImageView f60375f;

    public final ShapeableImageView f60376g;

    public final PublishStateView f60377h;

    public final ShapeableImageView f60378i;

    public final ShapeableImageView f60379j;

    public final AppCompatImageView f60380k;

    public final d0 f60381l;

    public final PileLayout f60382m;

    public final ConstraintLayout f60383n;

    public final Toolbar f60384o;

    public final FrameLayout f60385p;

    public final CollapsingToolbarLayout f60386q;

    public final ToolBarCheckInAnimationView f60387r;

    public final TextView f60388s;

    public final CheckInAnimationView f60389t;

    public final TextView f60390u;

    public final AppCompatTextView f60391v;

    public final ExpandView f60392w;

    public final AppCompatTextView f60393x;

    public final AppCompatTextView f60394y;

    public final ViewPager2 f60395z;

    private n(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, CoordinatorLayout coordinatorLayout, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, PublishStateView publishStateView, ShapeableImageView shapeableImageView2, ShapeableImageView shapeableImageView3, AppCompatImageView appCompatImageView3, d0 d0Var, PileLayout pileLayout, ConstraintLayout constraintLayout3, Toolbar toolbar, FrameLayout frameLayout, CollapsingToolbarLayout collapsingToolbarLayout, ToolBarCheckInAnimationView toolBarCheckInAnimationView, TextView textView, CheckInAnimationView checkInAnimationView, TextView textView2, AppCompatTextView appCompatTextView, ExpandView expandView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, ViewPager2 viewPager2) {
        this.f60370a = constraintLayout;
        this.f60371b = appBarLayout;
        this.f60372c = appCompatImageView;
        this.f60373d = constraintLayout2;
        this.f60374e = coordinatorLayout;
        this.f60375f = appCompatImageView2;
        this.f60376g = shapeableImageView;
        this.f60377h = publishStateView;
        this.f60378i = shapeableImageView2;
        this.f60379j = shapeableImageView3;
        this.f60380k = appCompatImageView3;
        this.f60381l = d0Var;
        this.f60382m = pileLayout;
        this.f60383n = constraintLayout3;
        this.f60384o = toolbar;
        this.f60385p = frameLayout;
        this.f60386q = collapsingToolbarLayout;
        this.f60387r = toolBarCheckInAnimationView;
        this.f60388s = textView;
        this.f60389t = checkInAnimationView;
        this.f60390u = textView2;
        this.f60391v = appCompatTextView;
        this.f60392w = expandView;
        this.f60393x = appCompatTextView2;
        this.f60394y = appCompatTextView3;
        this.f60395z = viewPager2;
    }

    public static n a(View view) {
        View viewA;
        int i10 = R$id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.bg_transparent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.cl_bar;
                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout != null) {
                    i10 = R$id.content;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
                    if (coordinatorLayout != null) {
                        i10 = R$id.iv_back;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.iv_cover_small;
                            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                            if (shapeableImageView != null) {
                                i10 = R$id.ivPublish;
                                PublishStateView publishStateView = (PublishStateView) f4.b.a(view, i10);
                                if (publishStateView != null) {
                                    i10 = R$id.iv_room_blur_cover;
                                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                                    if (shapeableImageView2 != null) {
                                        i10 = R$id.iv_room_cover;
                                        ShapeableImageView shapeableImageView3 = (ShapeableImageView) f4.b.a(view, i10);
                                        if (shapeableImageView3 != null) {
                                            i10 = R$id.iv_share;
                                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView3 != null && (viewA = f4.b.a(view, (i10 = R$id.ll_tab_room))) != null) {
                                                d0 d0VarA = d0.a(viewA);
                                                i10 = R$id.pl_member_ic;
                                                PileLayout pileLayout = (PileLayout) f4.b.a(view, i10);
                                                if (pileLayout != null) {
                                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                                                    i10 = R$id.toolbar;
                                                    Toolbar toolbar = (Toolbar) f4.b.a(view, i10);
                                                    if (toolbar != null) {
                                                        i10 = R$id.toolbar_frame;
                                                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                                        if (frameLayout != null) {
                                                            i10 = R$id.toolbar_layout;
                                                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                            if (collapsingToolbarLayout != null) {
                                                                i10 = R$id.toolbarTvCheckIn;
                                                                ToolBarCheckInAnimationView toolBarCheckInAnimationView = (ToolBarCheckInAnimationView) f4.b.a(view, i10);
                                                                if (toolBarCheckInAnimationView != null) {
                                                                    i10 = R$id.toolbar_tv_edit;
                                                                    TextView textView = (TextView) f4.b.a(view, i10);
                                                                    if (textView != null) {
                                                                        i10 = R$id.tvCheckIn;
                                                                        CheckInAnimationView checkInAnimationView = (CheckInAnimationView) f4.b.a(view, i10);
                                                                        if (checkInAnimationView != null) {
                                                                            i10 = R$id.tv_edit;
                                                                            TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                            if (textView2 != null) {
                                                                                i10 = R$id.tv_member_count;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                if (appCompatTextView != null) {
                                                                                    i10 = R$id.tv_room_info_desc;
                                                                                    ExpandView expandView = (ExpandView) f4.b.a(view, i10);
                                                                                    if (expandView != null) {
                                                                                        i10 = R$id.tv_room_title;
                                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView2 != null) {
                                                                                            i10 = R$id.tv_title;
                                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView3 != null) {
                                                                                                i10 = R$id.view_pager;
                                                                                                ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                                                if (viewPager2 != null) {
                                                                                                    return new n(constraintLayout2, appBarLayout, appCompatImageView, constraintLayout, coordinatorLayout, appCompatImageView2, shapeableImageView, publishStateView, shapeableImageView2, shapeableImageView3, appCompatImageView3, d0VarA, pileLayout, constraintLayout2, toolbar, frameLayout, collapsingToolbarLayout, toolBarCheckInAnimationView, textView, checkInAnimationView, textView2, appCompatTextView, expandView, appCompatTextView2, appCompatTextView3, viewPager2);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60370a;
    }
}
