package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class h implements f4.a {

    private final LinearLayout f60335a;

    public final FrameLayout f60336b;

    public final TitleLayout f60337c;

    private h(LinearLayout linearLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f60335a = linearLayout;
        this.f60336b = frameLayout;
        this.f60337c = titleLayout;
    }

    public static h a(View view) {
        int i10 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new h((LinearLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_room_home, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f60335a;
    }
}
