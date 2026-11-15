package ki;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;

public final class b implements f4.a {

    private final FrameLayout f64001a;

    public final RecyclerView f64002b;

    private b(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f64001a = frameLayout;
        this.f64002b = recyclerView;
    }

    public static b a(View view) {
        int i10 = R$id.rv_list;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new b((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_recent_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f64001a;
    }
}
