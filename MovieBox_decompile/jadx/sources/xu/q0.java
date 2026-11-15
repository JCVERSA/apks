package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class q0 implements f4.a {

    private final ConstraintLayout f75732a;

    public final FrameLayout f75733b;

    private q0(ConstraintLayout constraintLayout, FrameLayout frameLayout) {
        this.f75732a = constraintLayout;
        this.f75733b = frameLayout;
    }

    public static q0 a(View view) {
        int i10 = R$id.flContent;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            return new q0((ConstraintLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.profile_activity_see, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75732a;
    }
}
