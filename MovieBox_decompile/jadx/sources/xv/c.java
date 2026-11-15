package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class c implements f4.a {

    private final ConstraintLayout f75866a;

    public final View f75867b;

    public final AppCompatImageView f75868c;

    public final ProgressBar f75869d;

    public final RecyclerView f75870e;

    public final AppCompatTextView f75871f;

    private c(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f75866a = constraintLayout;
        this.f75867b = view;
        this.f75868c = appCompatImageView;
        this.f75869d = progressBar;
        this.f75870e = recyclerView;
        this.f75871f = appCompatTextView;
    }

    public static c a(View view) {
        int i10 = R$id.divider;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.iv_close;
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
                            return new c((ConstraintLayout) view, viewA, appCompatImageView, progressBar, recyclerView, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_audio_track, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75866a;
    }
}
