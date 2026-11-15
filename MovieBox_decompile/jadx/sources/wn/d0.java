package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.HorizontalRecyclerview2;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;

public final class d0 implements f4.a {

    private final View f74340a;

    public final HorizontalRecyclerview2 f74341b;

    public final AppCompatTextView f74342c;

    public final TnTextView f74343d;

    public final AppCompatTextView f74344e;

    private d0(View view, HorizontalRecyclerview2 horizontalRecyclerview2, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f74340a = view;
        this.f74341b = horizontalRecyclerview2;
        this.f74342c = appCompatTextView;
        this.f74343d = tnTextView;
        this.f74344e = appCompatTextView2;
    }

    public static d0 a(View view) {
        int i10 = R$id.recycler_view;
        HorizontalRecyclerview2 horizontalRecyclerview2 = (HorizontalRecyclerview2) f4.b.a(view, i10);
        if (horizontalRecyclerview2 != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_title_trending;
                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                if (tnTextView != null) {
                    i10 = R$id.tv_view_all;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new d0(view, horizontalRecyclerview2, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f74340a;
    }
}
