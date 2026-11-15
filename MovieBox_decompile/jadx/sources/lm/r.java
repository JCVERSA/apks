package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class r implements f4.a {

    private final ConstraintLayout f65879a;

    public final FrameLayout f65880b;

    public final AppCompatImageView f65881c;

    public final AppCompatTextView f65882d;

    public final AppCompatTextView f65883e;

    public final AppCompatTextView f65884f;

    public final View f65885g;

    public final View f65886h;

    private r(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view, View view2) {
        this.f65879a = constraintLayout;
        this.f65880b = frameLayout;
        this.f65881c = appCompatImageView;
        this.f65882d = appCompatTextView;
        this.f65883e = appCompatTextView2;
        this.f65884f = appCompatTextView3;
        this.f65885g = view;
        this.f65886h = view2;
    }

    public static r a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ivCollection;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.tvMovieInfo;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvMovieTitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tvTag;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null && (viewA = f4.b.a(view, (i10 = R$id.v_detail_hot_zone))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                            return new r((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, viewA, viewA2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static r c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_edu_music_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65879a;
    }
}
