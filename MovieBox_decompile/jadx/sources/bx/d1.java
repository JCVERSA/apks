package bx;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.transsnet.downloader.R$id;

public final class d1 implements f4.a {

    private final BLFrameLayout f15993a;

    public final RecyclerView f15994b;

    private d1(BLFrameLayout bLFrameLayout, RecyclerView recyclerView) {
        this.f15993a = bLFrameLayout;
        this.f15994b = recyclerView;
    }

    public static d1 a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new d1((BLFrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLFrameLayout getRoot() {
        return this.f15993a;
    }
}
