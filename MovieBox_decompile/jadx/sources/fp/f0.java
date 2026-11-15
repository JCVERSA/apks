package fp;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

public final class f0 implements f4.a {

    private final View f60326a;

    public final RecyclerView f60327b;

    private f0(View view, RecyclerView recyclerView) {
        this.f60326a = view;
        this.f60327b = recyclerView;
    }

    public static f0 a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new f0(view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f60326a;
    }
}
