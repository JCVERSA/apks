package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class j implements f4.a {

    private final FrameLayout f72137a;

    public final RecyclerView f72138b;

    private j(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f72137a = frameLayout;
        this.f72138b = recyclerView;
    }

    public static j a(View view) {
        int i10 = R$id.rvIcon;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new j((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_icon_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f72137a;
    }
}
