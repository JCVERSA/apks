package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class d implements f4.a {

    private final ConstraintLayout f62639a;

    public final FrameLayout f62640b;

    public final AppCompatTextView f62641c;

    public final View f62642d;

    private d(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatTextView appCompatTextView, View view) {
        this.f62639a = constraintLayout;
        this.f62640b = frameLayout;
        this.f62641c = appCompatTextView;
        this.f62642d = view;
    }

    public static d a(View view) {
        View viewA;
        int i10 = R$id.fl_comment_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.tv_comment;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.v_bottom_divider))) != null) {
                return new d((ConstraintLayout) view, frameLayout, appCompatTextView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_detail_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62639a;
    }
}
