package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class c implements f4.a {

    private final ConstraintLayout f60302a;

    public final FragmentContainerView f60303b;

    private c(ConstraintLayout constraintLayout, FragmentContainerView fragmentContainerView) {
        this.f60302a = constraintLayout;
        this.f60303b = fragmentContainerView;
    }

    public static c a(View view) {
        int i10 = R$id.container;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) f4.b.a(view, i10);
        if (fragmentContainerView != null) {
            return new c((ConstraintLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_hot_rooms, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60302a;
    }
}
