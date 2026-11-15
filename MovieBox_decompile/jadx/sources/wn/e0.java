package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;

public final class e0 implements f4.a {

    private final View f74351a;

    public final RecyclerView f74352b;

    public final AppCompatTextView f74353c;

    public final TnTextView f74354d;

    public final AppCompatTextView f74355e;

    private e0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f74351a = view;
        this.f74352b = recyclerView;
        this.f74353c = appCompatTextView;
        this.f74354d = tnTextView;
        this.f74355e = appCompatTextView2;
    }

    public static e0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_title_trending;
                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                if (tnTextView != null) {
                    i10 = R$id.tv_view_all;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new e0(view, recyclerView, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f74351a;
    }
}
