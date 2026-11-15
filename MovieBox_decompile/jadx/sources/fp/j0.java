package fp;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

public final class j0 implements f4.a {

    private final View f60352a;

    public final RecyclerView f60353b;

    public final AppCompatTextView f60354c;

    public final AppCompatTextView f60355d;

    private j0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f60352a = view;
        this.f60353b = recyclerView;
        this.f60354c = appCompatTextView;
        this.f60355d = appCompatTextView2;
    }

    public static j0 a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tvMore;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new j0(view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f60352a;
    }
}
