package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class s implements f4.a {

    private final ConstraintLayout f69847a;

    public final ComposeView f69848b;

    public final FrameLayout f69849c;

    public final ConstraintLayout f69850d;

    public final TitleLayout f69851e;

    private s(ConstraintLayout constraintLayout, ComposeView composeView, FrameLayout frameLayout, ConstraintLayout constraintLayout2, TitleLayout titleLayout) {
        this.f69847a = constraintLayout;
        this.f69848b = composeView;
        this.f69849c = frameLayout;
        this.f69850d = constraintLayout2;
        this.f69851e = titleLayout;
    }

    public static s a(View view) {
        int i10 = R$id.rank_all_category_container;
        ComposeView composeView = (ComposeView) f4.b.a(view, i10);
        if (composeView != null) {
            i10 = R$id.rank_all_error;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.rank_all_loading_frame;
                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout != null) {
                    i10 = R$id.rank_all_title;
                    TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                    if (titleLayout != null) {
                        return new s((ConstraintLayout) view, composeView, frameLayout, constraintLayout, titleLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_rank_all, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69847a;
    }
}
