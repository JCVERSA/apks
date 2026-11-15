package iu;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;

public final class q implements f4.a {

    private final View f62769a;

    public final AppCompatTextView f62770b;

    public final AppCompatTextView f62771c;

    public final RecyclerView f62772d;

    private q(View view, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RecyclerView recyclerView) {
        this.f62769a = view;
        this.f62770b = appCompatTextView;
        this.f62771c = appCompatTextView2;
        this.f62772d = recyclerView;
    }

    public static q a(View view) {
        int i10 = R$id.tvAll;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvTitle;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.ugcDetailPlayListRv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    return new q(view, appCompatTextView, appCompatTextView2, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f62769a;
    }
}
