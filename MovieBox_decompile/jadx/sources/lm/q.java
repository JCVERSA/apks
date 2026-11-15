package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;

public final class q implements f4.a {

    private final ConstraintLayout f65867a;

    public final FrameLayout f65868b;

    public final AppCompatImageView f65869c;

    public final LinearLayout f65870d;

    public final CustomTextViewGroup f65871e;

    public final AppCompatTextView f65872f;

    public final CustomTextViewGroup f65873g;

    public final CustomTextViewGroup f65874h;

    public final AppCompatTextView f65875i;

    public final AppCompatTextView f65876j;

    public final CustomTextViewGroup f65877k;

    public final View f65878l;

    private q(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatTextView appCompatTextView, CustomTextViewGroup customTextViewGroup2, CustomTextViewGroup customTextViewGroup3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, CustomTextViewGroup customTextViewGroup4, View view) {
        this.f65867a = constraintLayout;
        this.f65868b = frameLayout;
        this.f65869c = appCompatImageView;
        this.f65870d = linearLayout;
        this.f65871e = customTextViewGroup;
        this.f65872f = appCompatTextView;
        this.f65873g = customTextViewGroup2;
        this.f65874h = customTextViewGroup3;
        this.f65875i = appCompatTextView2;
        this.f65876j = appCompatTextView3;
        this.f65877k = customTextViewGroup4;
        this.f65878l = view;
    }

    public static q a(View view) {
        View viewA;
        int i10 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.ll_score;
                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                if (linearLayout != null) {
                    i10 = R$id.tv_category;
                    CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) f4.b.a(view, i10);
                    if (customTextViewGroup != null) {
                        i10 = R$id.tvDes;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tv_duration;
                            CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) f4.b.a(view, i10);
                            if (customTextViewGroup2 != null) {
                                i10 = R$id.tv_genre;
                                CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) f4.b.a(view, i10);
                                if (customTextViewGroup3 != null) {
                                    i10 = R$id.tvMovieInfo;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView2 != null) {
                                        i10 = R$id.tvMovieTitle;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView3 != null) {
                                            i10 = R$id.tv_students;
                                            CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) f4.b.a(view, i10);
                                            if (customTextViewGroup4 != null && (viewA = f4.b.a(view, (i10 = R$id.v_detail_hot_zone))) != null) {
                                                return new q((ConstraintLayout) view, frameLayout, appCompatImageView, linearLayout, customTextViewGroup, appCompatTextView, customTextViewGroup2, customTextViewGroup3, appCompatTextView2, appCompatTextView3, customTextViewGroup4, viewA);
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

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_edu_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65867a;
    }
}
