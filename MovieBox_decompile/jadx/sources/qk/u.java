package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class u implements f4.a {

    private final LinearLayout f69855a;

    public final FrameLayout f69856b;

    public final View f69857c;

    public final ConstraintLayout f69858d;

    private u(LinearLayout linearLayout, FrameLayout frameLayout, View view, ConstraintLayout constraintLayout) {
        this.f69855a = linearLayout;
        this.f69856b = frameLayout;
        this.f69857c = view;
        this.f69858d = constraintLayout;
    }

    public static u a(View view) {
        View viewA;
        int i10 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null && (viewA = f4.b.a(view, (i10 = R$id.sub_room_header_bg))) != null) {
            i10 = R$id.sub_room_title_layout;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                return new u((LinearLayout) view, frameLayout, viewA, constraintLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static u c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69855a;
    }
}
