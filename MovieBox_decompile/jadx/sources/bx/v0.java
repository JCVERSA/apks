package bx;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;

public final class v0 implements f4.a {

    private final View f16272a;

    public final RecyclerView f16273b;

    private v0(View view, RecyclerView recyclerView) {
        this.f16272a = view;
        this.f16273b = recyclerView;
    }

    public static v0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new v0(view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16272a;
    }
}
