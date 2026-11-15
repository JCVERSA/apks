package wn;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;

public final class f0 implements f4.a {

    private final View f74362a;

    public final RecyclerView f74363b;

    public final TnTextView f74364c;

    public final TnTextView f74365d;

    private f0(View view, RecyclerView recyclerView, TnTextView tnTextView, TnTextView tnTextView2) {
        this.f74362a = view;
        this.f74363b = recyclerView;
        this.f74364c = tnTextView;
        this.f74365d = tnTextView2;
    }

    public static f0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_title;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                i10 = R$id.tv_title_trending;
                TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                if (tnTextView2 != null) {
                    return new f0(view, recyclerView, tnTextView, tnTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f74362a;
    }
}
