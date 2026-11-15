package lm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.transsion.moviedetail.R$id;

public final class x implements f4.a {

    private final LinearLayout f65946a;

    public final FrameLayout f65947b;

    public final FrameLayout f65948c;

    private x(LinearLayout linearLayout, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f65946a = linearLayout;
        this.f65947b = frameLayout;
        this.f65948c = frameLayout2;
    }

    public static x a(View view) {
        int i10 = R$id.fl_empty_View;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.fl_room;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                return new x((LinearLayout) view, frameLayout, frameLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f65946a;
    }
}
