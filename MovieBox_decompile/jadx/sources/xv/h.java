package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class h implements f4.a {

    private final ConstraintLayout f75927a;

    public final FrameLayout f75928b;

    public final AppCompatImageView f75929c;

    public final ShapeableImageView f75930d;

    public final AppCompatImageView f75931e;

    public final AppCompatImageView f75932f;

    public final LinearLayout f75933g;

    public final CustomTextViewGroup f75934h;

    public final AppCompatTextView f75935i;

    public final AppCompatTextView f75936j;

    public final CustomTextViewGroup f75937k;

    public final AppCompatTextView f75938l;

    public final CustomTextViewGroup f75939m;

    public final AppCompatTextView f75940n;

    public final CustomTextViewGroup f75941o;

    public final CustomTextViewGroup f75942p;

    public final View f75943q;

    public final View f75944r;

    private h(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, CustomTextViewGroup customTextViewGroup2, AppCompatTextView appCompatTextView3, CustomTextViewGroup customTextViewGroup3, AppCompatTextView appCompatTextView4, CustomTextViewGroup customTextViewGroup4, CustomTextViewGroup customTextViewGroup5, View view, View view2) {
        this.f75927a = constraintLayout;
        this.f75928b = frameLayout;
        this.f75929c = appCompatImageView;
        this.f75930d = shapeableImageView;
        this.f75931e = appCompatImageView2;
        this.f75932f = appCompatImageView3;
        this.f75933g = linearLayout;
        this.f75934h = customTextViewGroup;
        this.f75935i = appCompatTextView;
        this.f75936j = appCompatTextView2;
        this.f75937k = customTextViewGroup2;
        this.f75938l = appCompatTextView3;
        this.f75939m = customTextViewGroup3;
        this.f75940n = appCompatTextView4;
        this.f75941o = customTextViewGroup4;
        this.f75942p = customTextViewGroup5;
        this.f75943q = view;
        this.f75944r = view2;
    }

    public static h a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.ivMovieCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null) {
                    i10 = R$id.iv_preview;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.iv_score;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView3 != null) {
                            i10 = R$id.ll_score;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.tv_country;
                                CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) f4.b.a(view, i10);
                                if (customTextViewGroup != null) {
                                    i10 = R$id.tvMovieInfo;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView != null) {
                                        i10 = R$id.tvMovieTitle;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            i10 = R$id.tv_restrict;
                                            CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) f4.b.a(view, i10);
                                            if (customTextViewGroup2 != null) {
                                                i10 = R$id.tv_score;
                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView3 != null) {
                                                    i10 = R$id.tv_seasons;
                                                    CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                    if (customTextViewGroup3 != null) {
                                                        i10 = R$id.tv_seasons_2;
                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView4 != null) {
                                                            i10 = R$id.tv_time;
                                                            CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                            if (customTextViewGroup4 != null) {
                                                                i10 = R$id.tv_type;
                                                                CustomTextViewGroup customTextViewGroup5 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                                if (customTextViewGroup5 != null && (viewA = f4.b.a(view, (i10 = R$id.v_detail_hot_zone))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_seasons_line_2))) != null) {
                                                                    return new h((ConstraintLayout) view, frameLayout, appCompatImageView, shapeableImageView, appCompatImageView2, appCompatImageView3, linearLayout, customTextViewGroup, appCompatTextView, appCompatTextView2, customTextViewGroup2, appCompatTextView3, customTextViewGroup3, appCompatTextView4, customTextViewGroup4, customTextViewGroup5, viewA, viewA2);
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

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75927a;
    }
}
