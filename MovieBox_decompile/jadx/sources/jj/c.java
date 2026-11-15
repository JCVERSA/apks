package jj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;

public final class c implements f4.a {

    private final ConstraintLayout f63137a;

    public final AppCompatImageView f63138b;

    public final LinearLayoutCompat f63139c;

    private c(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat) {
        this.f63137a = constraintLayout;
        this.f63138b = appCompatImageView;
        this.f63139c = linearLayoutCompat;
    }

    public static c a(View view) {
        int i10 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.toolbar_d;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                return new c((ConstraintLayout) view, appCompatImageView, linearLayoutCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.default_list_loading_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63137a;
    }
}
