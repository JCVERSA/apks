package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f76280a;

    public final FrameLayout f76281b;

    private b(ConstraintLayout constraintLayout, FrameLayout frameLayout) {
        this.f76280a = constraintLayout;
        this.f76281b = frameLayout;
    }

    public static b a(View view) {
        int i10 = R$id.fl_content;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            return new b((ConstraintLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_rewards_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76280a;
    }
}
