package pw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

public final class e implements f4.a {

    private final ConstraintLayout f69303a;

    public final FrameLayout f69304b;

    public final View f69305c;

    public final ProgressBar f69306d;

    public final AppCompatTextView f69307e;

    private e(ConstraintLayout constraintLayout, FrameLayout frameLayout, View view, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        this.f69303a = constraintLayout;
        this.f69304b = frameLayout;
        this.f69305c = view;
        this.f69306d = progressBar;
        this.f69307e = appCompatTextView;
    }

    public static e a(View view) {
        View viewA;
        int i10 = R$id.cover_gradient;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null && (viewA = f4.b.a(view, (i10 = R$id.cover_transparent))) != null) {
            i10 = R$id.progressBar;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.pull_indicator;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new e((ConstraintLayout) view, frameLayout, viewA, progressBar, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.second_floor_arc_cover_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69303a;
    }
}
