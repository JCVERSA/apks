package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class t implements f4.a {

    private final BLConstraintLayout f70170a;

    public final AppCompatImageView f70171b;

    public final ProgressBar f70172c;

    public final RecyclerView f70173d;

    public final AppCompatTextView f70174e;

    private t(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f70170a = bLConstraintLayout;
        this.f70171b = appCompatImageView;
        this.f70172c = progressBar;
        this.f70173d = recyclerView;
        this.f70174e = appCompatTextView;
    }

    public static t a(View view) {
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.f50563rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        return new t((BLConstraintLayout) view, appCompatImageView, progressBar, recyclerView, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_dialog_language_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f70170a;
    }
}
