package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.InfoExtendView;

public final class p implements f4.a {

    private final ConstraintLayout f65847a;

    public final FrameLayout f65848b;

    public final FrameLayout f65849c;

    public final InfoExtendView f65850d;

    public final AppCompatImageView f65851e;

    public final ShapeableImageView f65852f;

    public final View f65853g;

    public final AppCompatImageView f65854h;

    public final LinearLayout f65855i;

    public final AppCompatImageView f65856j;

    public final CustomTextViewGroup f65857k;

    public final LinearLayoutCompat f65858l;

    public final AppCompatTextView f65859m;

    public final CustomTextViewGroup f65860n;

    public final AppCompatTextView f65861o;

    public final AppCompatTextView f65862p;

    public final CustomTextViewGroup f65863q;

    public final CustomTextViewGroup f65864r;

    public final View f65865s;

    public final View f65866t;

    private p(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, InfoExtendView infoExtendView, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, View view, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, AppCompatImageView appCompatImageView3, CustomTextViewGroup customTextViewGroup, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, CustomTextViewGroup customTextViewGroup2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, CustomTextViewGroup customTextViewGroup3, CustomTextViewGroup customTextViewGroup4, View view2, View view3) {
        this.f65847a = constraintLayout;
        this.f65848b = frameLayout;
        this.f65849c = frameLayout2;
        this.f65850d = infoExtendView;
        this.f65851e = appCompatImageView;
        this.f65852f = shapeableImageView;
        this.f65853g = view;
        this.f65854h = appCompatImageView2;
        this.f65855i = linearLayout;
        this.f65856j = appCompatImageView3;
        this.f65857k = customTextViewGroup;
        this.f65858l = linearLayoutCompat;
        this.f65859m = appCompatTextView;
        this.f65860n = customTextViewGroup2;
        this.f65861o = appCompatTextView2;
        this.f65862p = appCompatTextView3;
        this.f65863q = customTextViewGroup3;
        this.f65864r = customTextViewGroup4;
        this.f65865s = view2;
        this.f65866t = view3;
    }

    public static p a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.fl_starring;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.game_container;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                i10 = R$id.infoExtendView;
                InfoExtendView infoExtendView = (InfoExtendView) f4.b.a(view, i10);
                if (infoExtendView != null) {
                    i10 = R$id.ivMovieContent;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivMovieCover;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView != null && (viewA = f4.b.a(view, (i10 = R$id.ivMovieCoverMask))) != null) {
                            i10 = R$id.iv_score;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.ll_score;
                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R$id.tv_close;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView3 != null) {
                                        i10 = R$id.tv_country;
                                        CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) f4.b.a(view, i10);
                                        if (customTextViewGroup != null) {
                                            i10 = R$id.tv_header_toolbar;
                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                            if (linearLayoutCompat != null) {
                                                i10 = R$id.tvMovieTitle;
                                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView != null) {
                                                    i10 = R$id.tv_restrict;
                                                    CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                    if (customTextViewGroup2 != null) {
                                                        i10 = R$id.tv_score;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView2 != null) {
                                                            i10 = R$id.tv_seasons;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView3 != null) {
                                                                i10 = R$id.tv_time;
                                                                CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                                if (customTextViewGroup3 != null) {
                                                                    i10 = R$id.tv_type;
                                                                    CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                                    if (customTextViewGroup4 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_seasons_line))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.view_separator))) != null) {
                                                                        return new p((ConstraintLayout) view, frameLayout, frameLayout2, infoExtendView, appCompatImageView, shapeableImageView, viewA, appCompatImageView2, linearLayout, appCompatImageView3, customTextViewGroup, linearLayoutCompat, appCompatTextView, customTextViewGroup2, appCompatTextView2, appCompatTextView3, customTextViewGroup3, customTextViewGroup4, viewA2, viewA3);
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

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_detail_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65847a;
    }
}
