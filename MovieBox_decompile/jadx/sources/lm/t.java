package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class t implements f4.a {

    private final ConstraintLayout f65901a;

    public final Barrier f65902b;

    public final View f65903c;

    public final AppCompatImageView f65904d;

    public final ShapeableImageView f65905e;

    public final View f65906f;

    public final AppCompatImageView f65907g;

    public final AppCompatImageView f65908h;

    public final LinearLayout f65909i;

    public final AppCompatTextView f65910j;

    public final AppCompatTextView f65911k;

    public final AppCompatTextView f65912l;

    public final AppCompatTextView f65913m;

    public final AppCompatTextView f65914n;

    public final AppCompatTextView f65915o;

    private t(ConstraintLayout constraintLayout, Barrier barrier, View view, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, View view2, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f65901a = constraintLayout;
        this.f65902b = barrier;
        this.f65903c = view;
        this.f65904d = appCompatImageView;
        this.f65905e = shapeableImageView;
        this.f65906f = view2;
        this.f65907g = appCompatImageView2;
        this.f65908h = appCompatImageView3;
        this.f65909i = linearLayout;
        this.f65910j = appCompatTextView;
        this.f65911k = appCompatTextView2;
        this.f65912l = appCompatTextView3;
        this.f65913m = appCompatTextView4;
        this.f65914n = appCompatTextView5;
        this.f65915o = appCompatTextView6;
    }

    public static t a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.barrierMovieCoverBottom;
        Barrier barrier = (Barrier) f4.b.a(view, i10);
        if (barrier != null && (viewA = f4.b.a(view, (i10 = R$id.ivCoverZoom))) != null) {
            i10 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.ivMovieCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null && (viewA2 = f4.b.a(view, (i10 = R$id.ivMovieCoverMask))) != null) {
                    i10 = R$id.iv_score;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.iv_subtitle_tag;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView3 != null) {
                            i10 = R$id.ll_score;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.tvMovieContent;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.tvMovieTitle;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView2 != null) {
                                        i10 = R$id.tv_score;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView3 != null) {
                                            i10 = R$id.tv_subtitle_more;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView4 != null) {
                                                i10 = R$id.tv_subtitle_tag;
                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView5 != null) {
                                                    i10 = R$id.tv_time;
                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView6 != null) {
                                                        return new t((ConstraintLayout) view, barrier, viewA, appCompatImageView, shapeableImageView, viewA2, appCompatImageView2, appCompatImageView3, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_movie_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65901a;
    }
}
