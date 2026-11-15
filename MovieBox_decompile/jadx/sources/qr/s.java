package qr;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import com.transsion.shorttv.R$id;

public final class s implements f4.a {

    private final ConstraintLayout f70159a;

    public final AppCompatImageView f70160b;

    public final ProgressBar f70161c;

    public final RecyclerView f70162d;

    public final TabLayout f70163e;

    public final AppCompatTextView f70164f;

    public final View f70165g;

    private s(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, TabLayout tabLayout, AppCompatTextView appCompatTextView, View view) {
        this.f70159a = constraintLayout;
        this.f70160b = appCompatImageView;
        this.f70161c = progressBar;
        this.f70162d = recyclerView;
        this.f70163e = tabLayout;
        this.f70164f = appCompatTextView;
        this.f70165g = view;
    }

    public static s a(View view) {
        View viewA;
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.f50563rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tab;
                    TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                    if (tabLayout != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.view_line))) != null) {
                            return new s((ConstraintLayout) view, appCompatImageView, progressBar, recyclerView, tabLayout, appCompatTextView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70159a;
    }
}
