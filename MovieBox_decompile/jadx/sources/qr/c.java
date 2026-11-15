package qr;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.shorttv.R$id;

public final class c implements f4.a {

    private final BLConstraintLayout f69962a;

    public final FrameLayout f69963b;

    public final AppCompatImageView f69964c;

    public final ProgressBar f69965d;

    public final RecyclerView f69966e;

    public final AppCompatTextView f69967f;

    public final View f69968g;

    private c(BLConstraintLayout bLConstraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view) {
        this.f69962a = bLConstraintLayout;
        this.f69963b = frameLayout;
        this.f69964c = appCompatImageView;
        this.f69965d = progressBar;
        this.f69966e = recyclerView;
        this.f69967f = appCompatTextView;
        this.f69968g = view;
    }

    public static c a(View view) {
        View viewA;
        int i10 = R$id.content_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.pb_loading;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    i10 = R$id.tabs_rv;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.view_line))) != null) {
                            return new c((BLConstraintLayout) view, frameLayout, appCompatImageView, progressBar, recyclerView, appCompatTextView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f69962a;
    }
}
