package xv;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.videodetail.R$id;

public final class a implements f4.a {

    private final ConstraintLayout f75853a;

    public final AppCompatImageView f75854b;

    public final ProgressBar f75855c;

    public final RecyclerView f75856d;

    public final AppCompatTextView f75857e;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f75853a = constraintLayout;
        this.f75854b = appCompatImageView;
        this.f75855c = progressBar;
        this.f75856d = recyclerView;
        this.f75857e = appCompatTextView;
    }

    public static a a(View view) {
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.f55399rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        return new a((ConstraintLayout) view, appCompatImageView, progressBar, recyclerView, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75853a;
    }
}
