package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class p implements f4.a {

    private final FrameLayout f72161a;

    public final RecyclerView f72162b;

    private p(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f72161a = frameLayout;
        this.f72162b = recyclerView;
    }

    public static p a(View view) {
        int i10 = R$id.f40773rv;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new p((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_native_list_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f72161a;
    }
}
