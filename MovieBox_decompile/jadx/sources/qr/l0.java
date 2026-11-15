package qr;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.transsion.shorttv.R$id;

public final class l0 implements f4.a {

    private final BLFrameLayout f70107a;

    public final RecyclerView f70108b;

    private l0(BLFrameLayout bLFrameLayout, RecyclerView recyclerView) {
        this.f70107a = bLFrameLayout;
        this.f70108b = recyclerView;
    }

    public static l0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new l0((BLFrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLFrameLayout getRoot() {
        return this.f70107a;
    }
}
