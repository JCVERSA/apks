package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

public final class c implements f4.a {

    private final ConstraintLayout f63269a;

    public final RecyclerView f63270b;

    public final AppCompatTextView f63271c;

    public final View f63272d;

    private c(ConstraintLayout constraintLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view) {
        this.f63269a = constraintLayout;
        this.f63270b = recyclerView;
        this.f63271c = appCompatTextView;
        this.f63272d = view;
    }

    public static c a(View view) {
        View viewA;
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.v_bottom_line_line))) != null) {
                return new c((ConstraintLayout) view, recyclerView, appCompatTextView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_audio_select_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63269a;
    }
}
