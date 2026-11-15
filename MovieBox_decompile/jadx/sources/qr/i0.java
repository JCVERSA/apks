package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.HorizontalRecyclerview2;
import com.transsion.shorttv.base.widget.TnTextView;

public final class i0 implements f4.a {

    private final View f70037a;

    public final HorizontalRecyclerview2 f70038b;

    public final AppCompatTextView f70039c;

    public final TnTextView f70040d;

    public final AppCompatTextView f70041e;

    private i0(View view, HorizontalRecyclerview2 horizontalRecyclerview2, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f70037a = view;
        this.f70038b = horizontalRecyclerview2;
        this.f70039c = appCompatTextView;
        this.f70040d = tnTextView;
        this.f70041e = appCompatTextView2;
    }

    public static i0 a(View view) {
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
                        return new i0(view, horizontalRecyclerview2, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f70037a;
    }
}
