package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class g implements f4.a {

    private final LinearLayout f60328a;

    public final FrameLayout f60329b;

    public final TitleLayout f60330c;

    private g(LinearLayout linearLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f60328a = linearLayout;
        this.f60329b = frameLayout;
        this.f60330c = titleLayout;
    }

    public static g a(View view) {
        int i10 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new g((LinearLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_others_room_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f60328a;
    }
}
