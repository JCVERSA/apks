package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class p implements f4.a {

    private final LinearLayout f60416a;

    public final FrameLayout f60417b;

    public final RecyclerView f60418c;

    private p(LinearLayout linearLayout, FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f60416a = linearLayout;
        this.f60417b = frameLayout;
        this.f60418c = recyclerView;
    }

    public static p a(View view) {
        int i10 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new p((LinearLayout) view, frameLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_filter_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f60416a;
    }
}
