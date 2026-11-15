package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class l0 implements f4.a {

    private final ConstraintLayout f75665a;

    public final AppBarLayout f75666b;

    public final ConstraintLayout f75667c;

    public final ExpandView f75668d;

    public final BLFrameLayout f75669e;

    public final FrameLayout f75670f;

    public final AppCompatImageView f75671g;

    public final AppCompatImageView f75672h;

    public final ShapeableImageView f75673i;

    public final AppCompatImageView f75674j;

    public final View f75675k;

    public final ImageView f75676l;

    public final LinearLayout f75677m;

    public final MagicIndicator f75678n;

    public final PileLayout f75679o;

    public final LinearLayout f75680p;

    public final AppCompatTextView f75681q;

    public final AppCompatTextView f75682r;

    public final RoomJoinAnimationView f75683s;

    public final RoomJoinAnimationView f75684t;

    public final View f75685u;

    public final View f75686v;

    public final TnTextView f75687w;

    public final ViewPager2 f75688x;

    private l0(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, ConstraintLayout constraintLayout2, ExpandView expandView, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView3, View view, ImageView imageView, LinearLayout linearLayout, MagicIndicator magicIndicator, PileLayout pileLayout, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RoomJoinAnimationView roomJoinAnimationView, RoomJoinAnimationView roomJoinAnimationView2, View view2, View view3, TnTextView tnTextView, ViewPager2 viewPager2) {
        this.f75665a = constraintLayout;
        this.f75666b = appBarLayout;
        this.f75667c = constraintLayout2;
        this.f75668d = expandView;
        this.f75669e = bLFrameLayout;
        this.f75670f = frameLayout;
        this.f75671g = appCompatImageView;
        this.f75672h = appCompatImageView2;
        this.f75673i = shapeableImageView;
        this.f75674j = appCompatImageView3;
        this.f75675k = view;
        this.f75676l = imageView;
        this.f75677m = linearLayout;
        this.f75678n = magicIndicator;
        this.f75679o = pileLayout;
        this.f75680p = linearLayout2;
        this.f75681q = appCompatTextView;
        this.f75682r = appCompatTextView2;
        this.f75683s = roomJoinAnimationView;
        this.f75684t = roomJoinAnimationView2;
        this.f75685u = view2;
        this.f75686v = view3;
        this.f75687w = tnTextView;
        this.f75688x = viewPager2;
    }

    public static l0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.cl_top_content;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.ev_room_des;
                ExpandView expandView = (ExpandView) f4.b.a(view, i10);
                if (expandView != null) {
                    i10 = R$id.fl_tab;
                    BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
                    if (bLFrameLayout != null) {
                        i10 = R$id.flTabBg;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            i10 = R$id.iv_back;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.iv_publish;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView2 != null) {
                                    i10 = R$id.iv_room_cover;
                                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                    if (shapeableImageView != null) {
                                        i10 = R$id.iv_share;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView3 != null && (viewA = f4.b.a(view, (i10 = R$id.iv_top_bg))) != null) {
                                            i10 = R$id.iv_top_bg_mask;
                                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                                            if (imageView != null) {
                                                i10 = R$id.ll_header_root;
                                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                if (linearLayout != null) {
                                                    i10 = R$id.magic_indicator;
                                                    MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                                    if (magicIndicator != null) {
                                                        i10 = R$id.pl_member_ic;
                                                        PileLayout pileLayout = (PileLayout) f4.b.a(view, i10);
                                                        if (pileLayout != null) {
                                                            i10 = R$id.titleContainer;
                                                            LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                                            if (linearLayout2 != null) {
                                                                i10 = R$id.tv_member;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView != null) {
                                                                    i10 = R$id.tv_title;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView2 != null) {
                                                                        i10 = R$id.v_join;
                                                                        RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) f4.b.a(view, i10);
                                                                        if (roomJoinAnimationView != null) {
                                                                            i10 = R$id.v_join_collapsed;
                                                                            RoomJoinAnimationView roomJoinAnimationView2 = (RoomJoinAnimationView) f4.b.a(view, i10);
                                                                            if (roomJoinAnimationView2 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_title_bar_bg))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_top_bg_color))) != null) {
                                                                                i10 = R$id.videoCountText;
                                                                                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                                                                if (tnTextView != null) {
                                                                                    i10 = R$id.view_pager;
                                                                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                                    if (viewPager2 != null) {
                                                                                        return new l0((ConstraintLayout) view, appBarLayout, constraintLayout, expandView, bLFrameLayout, frameLayout, appCompatImageView, appCompatImageView2, shapeableImageView, appCompatImageView3, viewA, imageView, linearLayout, magicIndicator, pileLayout, linearLayout2, appCompatTextView, appCompatTextView2, roomJoinAnimationView, roomJoinAnimationView2, viewA2, viewA3, tnTextView, viewPager2);
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

    public static l0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_profile, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75665a;
    }
}
