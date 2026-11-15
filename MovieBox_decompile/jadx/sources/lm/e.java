package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.InfoExtendView;

public final class e implements f4.a {

    private final ConstraintLayout f65757a;

    public final Flow f65758b;

    public final InfoExtendView f65759c;

    public final AppCompatImageView f65760d;

    public final LinearLayout f65761e;

    public final CustomTextViewGroup f65762f;

    public final AppCompatImageView f65763g;

    public final CustomTextViewGroup f65764h;

    public final CustomTextViewGroup f65765i;

    public final LinearLayoutCompat f65766j;

    public final AppCompatTextView f65767k;

    public final CustomTextViewGroup f65768l;

    private e(ConstraintLayout constraintLayout, Flow flow, InfoExtendView infoExtendView, AppCompatImageView appCompatImageView, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatImageView appCompatImageView2, CustomTextViewGroup customTextViewGroup2, CustomTextViewGroup customTextViewGroup3, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, CustomTextViewGroup customTextViewGroup4) {
        this.f65757a = constraintLayout;
        this.f65758b = flow;
        this.f65759c = infoExtendView;
        this.f65760d = appCompatImageView;
        this.f65761e = linearLayout;
        this.f65762f = customTextViewGroup;
        this.f65763g = appCompatImageView2;
        this.f65764h = customTextViewGroup2;
        this.f65765i = customTextViewGroup3;
        this.f65766j = linearLayoutCompat;
        this.f65767k = appCompatTextView;
        this.f65768l = customTextViewGroup4;
    }

    public static e a(View view) {
        int i10 = R$id.flow;
        Flow flow = (Flow) f4.b.a(view, i10);
        if (flow != null) {
            i10 = R$id.infoExtendView;
            InfoExtendView infoExtendView = (InfoExtendView) f4.b.a(view, i10);
            if (infoExtendView != null) {
                i10 = R$id.ivMovieContent;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ll_score;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.tv_category;
                        CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) f4.b.a(view, i10);
                        if (customTextViewGroup != null) {
                            i10 = R$id.tv_close;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.tv_duration;
                                CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) f4.b.a(view, i10);
                                if (customTextViewGroup2 != null) {
                                    i10 = R$id.tv_genre;
                                    CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) f4.b.a(view, i10);
                                    if (customTextViewGroup3 != null) {
                                        i10 = R$id.tv_header_toolbar;
                                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                        if (linearLayoutCompat != null) {
                                            i10 = R$id.tvMovieTitle;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView != null) {
                                                i10 = R$id.tv_students;
                                                CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) f4.b.a(view, i10);
                                                if (customTextViewGroup4 != null) {
                                                    return new e((ConstraintLayout) view, flow, infoExtendView, appCompatImageView, linearLayout, customTextViewGroup, appCompatImageView2, customTextViewGroup2, customTextViewGroup3, linearLayoutCompat, appCompatTextView, customTextViewGroup4);
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

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_edu_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65757a;
    }
}
