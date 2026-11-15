package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class n implements f4.a {

    private final ConstraintLayout f65840a;

    public final RecyclerView f65841b;

    public final AppCompatTextView f65842c;

    public final AppCompatTextView f65843d;

    private n(ConstraintLayout constraintLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f65840a = constraintLayout;
        this.f65841b = recyclerView;
        this.f65842c = appCompatTextView;
        this.f65843d = appCompatTextView2;
    }

    public static n a(View view) {
        int i10 = R$id.rvStarring;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tvStarringCount;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tvStarringTitle;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new n((ConstraintLayout) view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_starring, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65840a;
    }
}
