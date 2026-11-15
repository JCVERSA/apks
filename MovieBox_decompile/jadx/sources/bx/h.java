package bx;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;

public final class h implements f4.a {

    private final LinearLayout f16066a;

    public final RecyclerView f16067b;

    public final AppCompatTextView f16068c;

    private h(LinearLayout linearLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f16066a = linearLayout;
        this.f16067b = recyclerView;
        this.f16068c = appCompatTextView;
    }

    public static h a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_cancel;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new h((LinearLayout) view, recyclerView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f16066a;
    }
}
