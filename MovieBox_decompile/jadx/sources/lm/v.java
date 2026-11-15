package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class v implements f4.a {

    private final ConstraintLayout f65930a;

    public final View f65931b;

    public final ConstraintLayout f65932c;

    public final AppCompatImageView f65933d;

    public final RecyclerView f65934e;

    public final AppCompatTextView f65935f;

    public final AppCompatTextView f65936g;

    private v(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f65930a = constraintLayout;
        this.f65931b = view;
        this.f65932c = constraintLayout2;
        this.f65933d = appCompatImageView;
        this.f65934e = recyclerView;
        this.f65935f = appCompatTextView;
        this.f65936g = appCompatTextView2;
    }

    public static v a(View view) {
        int i10 = R$id.divider;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.f45196rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_all_episodes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            return new v(constraintLayout, viewA, constraintLayout, appCompatImageView, recyclerView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_video_detail_seasons, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65930a;
    }
}
