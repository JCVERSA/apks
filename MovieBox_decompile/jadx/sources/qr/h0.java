package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;

public final class h0 implements f4.a {

    private final View f70030a;

    public final RecyclerView f70031b;

    public final AppCompatTextView f70032c;

    public final AppCompatTextView f70033d;

    private h0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f70030a = view;
        this.f70031b = recyclerView;
        this.f70032c = appCompatTextView;
        this.f70033d = appCompatTextView2;
    }

    public static h0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_view_all;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new h0(view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f70030a;
    }
}
