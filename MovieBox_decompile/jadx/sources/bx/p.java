package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

public final class p implements f4.a {

    private final ConstraintLayout f16198a;

    public final AppCompatTextView f16199b;

    public final AppCompatTextView f16200c;

    public final View f16201d;

    private p(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f16198a = constraintLayout;
        this.f16199b = appCompatTextView;
        this.f16200c = appCompatTextView2;
        this.f16201d = view;
    }

    public static p a(View view) {
        View viewA;
        int i10 = R$id.tvCancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvClear;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.tvLine))) != null) {
                return new p((ConstraintLayout) view, appCompatTextView, appCompatTextView2, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16198a;
    }
}
