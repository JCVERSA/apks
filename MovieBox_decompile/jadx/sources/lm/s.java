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
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;

public final class s implements f4.a {

    private final ConstraintLayout f65887a;

    public final FrameLayout f65888b;

    public final AppCompatImageView f65889c;

    public final AppCompatImageView f65890d;

    public final LinearLayout f65891e;

    public final CustomTextViewGroup f65892f;

    public final AppCompatTextView f65893g;

    public final LinearLayoutCompat f65894h;

    public final CustomTextViewGroup f65895i;

    public final AppCompatImageView f65896j;

    public final AppCompatTextView f65897k;

    public final CustomTextViewGroup f65898l;

    public final CustomTextViewGroup f65899m;

    public final CustomTextViewGroup f65900n;

    private s(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat, CustomTextViewGroup customTextViewGroup2, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView2, CustomTextViewGroup customTextViewGroup3, CustomTextViewGroup customTextViewGroup4, CustomTextViewGroup customTextViewGroup5) {
        this.f65887a = constraintLayout;
        this.f65888b = frameLayout;
        this.f65889c = appCompatImageView;
        this.f65890d = appCompatImageView2;
        this.f65891e = linearLayout;
        this.f65892f = customTextViewGroup;
        this.f65893g = appCompatTextView;
        this.f65894h = linearLayoutCompat;
        this.f65895i = customTextViewGroup2;
        this.f65896j = appCompatImageView3;
        this.f65897k = appCompatTextView2;
        this.f65898l = customTextViewGroup3;
        this.f65899m = customTextViewGroup4;
        this.f65900n = customTextViewGroup5;
    }

    public static s a(View view) {
        int i10 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_score;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.ll_score;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.tv_country;
                        CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) f4.b.a(view, i10);
                        if (customTextViewGroup != null) {
                            i10 = R$id.tvMovieTitle;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_movie_title_container;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                if (linearLayoutCompat != null) {
                                    i10 = R$id.tv_restrict;
                                    CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) f4.b.a(view, i10);
                                    if (customTextViewGroup2 != null) {
                                        i10 = R$id.tv_right;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView3 != null) {
                                            i10 = R$id.tv_score;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView2 != null) {
                                                i10 = R$id.tv_seasons;
                                                CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                if (customTextViewGroup3 != null) {
                                                    i10 = R$id.tv_time;
                                                    CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                    if (customTextViewGroup4 != null) {
                                                        i10 = R$id.tv_type;
                                                        CustomTextViewGroup customTextViewGroup5 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                        if (customTextViewGroup5 != null) {
                                                            return new s((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, linearLayout, customTextViewGroup, appCompatTextView, linearLayoutCompat, customTextViewGroup2, appCompatImageView3, appCompatTextView2, customTextViewGroup3, customTextViewGroup4, customTextViewGroup5);
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

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65887a;
    }
}
