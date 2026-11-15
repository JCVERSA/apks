package xt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

public final class a implements f4.a {

    private final ConstraintLayout f75422a;

    public final AppCompatImageView f75423b;

    public final RecyclerView f75424c;

    public final TitleLayout f75425d;

    public final AppCompatTextView f75426e;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, RecyclerView recyclerView, TitleLayout titleLayout, AppCompatTextView appCompatTextView) {
        this.f75422a = constraintLayout;
        this.f75423b = appCompatImageView;
        this.f75424c = recyclerView;
        this.f75425d = titleLayout;
        this.f75426e = appCompatTextView;
    }

    public static a a(View view) {
        int i10 = R$id.ivHeader;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.rv_permissions;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.toolBar;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    i10 = R$id.tvNext;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        return new a((ConstraintLayout) view, appCompatImageView, recyclerView, titleLayout, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_permissions, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75422a;
    }
}
