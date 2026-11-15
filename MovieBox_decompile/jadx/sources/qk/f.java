package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class f implements f4.a {

    private final FrameLayout f69725a;

    public final ConstraintLayout f69726b;

    public final View f69727c;

    public final AppCompatImageView f69728d;

    public final RecyclerView f69729e;

    public final TnTextView f69730f;

    private f(FrameLayout frameLayout, ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f69725a = frameLayout;
        this.f69726b = constraintLayout;
        this.f69727c = view;
        this.f69728d = appCompatImageView;
        this.f69729e = recyclerView;
        this.f69730f = tnTextView;
    }

    public static f a(View view) {
        View viewA;
        int i10 = R$id.clHeader;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null && (viewA = f4.b.a(view, (i10 = R$id.divider))) != null) {
            i10 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.rvGrades;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tvTitle;
                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                    if (tnTextView != null) {
                        return new f((FrameLayout) view, constraintLayout, viewA, appCompatImageView, recyclerView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_grade_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69725a;
    }
}
