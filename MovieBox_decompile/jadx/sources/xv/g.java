package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class g implements f4.a {

    private final ConstraintLayout f75912a;

    public final Barrier f75913b;

    public final AppCompatImageView f75914c;

    public final ShapeableImageView f75915d;

    public final View f75916e;

    public final AppCompatImageView f75917f;

    public final AppCompatImageView f75918g;

    public final LinearLayout f75919h;

    public final LinearLayoutCompat f75920i;

    public final AppCompatTextView f75921j;

    public final AppCompatTextView f75922k;

    public final AppCompatTextView f75923l;

    public final AppCompatTextView f75924m;

    public final AppCompatTextView f75925n;

    public final AppCompatTextView f75926o;

    private g(ConstraintLayout constraintLayout, Barrier barrier, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, View view, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f75912a = constraintLayout;
        this.f75913b = barrier;
        this.f75914c = appCompatImageView;
        this.f75915d = shapeableImageView;
        this.f75916e = view;
        this.f75917f = appCompatImageView2;
        this.f75918g = appCompatImageView3;
        this.f75919h = linearLayout;
        this.f75920i = linearLayoutCompat;
        this.f75921j = appCompatTextView;
        this.f75922k = appCompatTextView2;
        this.f75923l = appCompatTextView3;
        this.f75924m = appCompatTextView4;
        this.f75925n = appCompatTextView5;
        this.f75926o = appCompatTextView6;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.barrierMovieCoverBottom;
        Barrier barrier = (Barrier) f4.b.a(view, i10);
        if (barrier != null) {
            i10 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.ivMovieCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null && (viewA = f4.b.a(view, (i10 = R$id.ivMovieCoverMask))) != null) {
                    i10 = R$id.iv_score;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.iv_subtitle_tag;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView3 != null) {
                            i10 = R$id.ll_score;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.tv_header_toolbar;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                if (linearLayoutCompat != null) {
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
                                                            return new g((ConstraintLayout) view, barrier, appCompatImageView, shapeableImageView, viewA, appCompatImageView2, appCompatImageView3, linearLayout, linearLayoutCompat, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_detail_info, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75912a;
    }
}
