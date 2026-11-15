package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.widget.HorizontalRecyclerview2;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

public final class g implements f4.a {

    private final View f70018a;

    public final HorizontalRecyclerview2 f70019b;

    public final AppCompatTextView f70020c;

    public final TnTextView f70021d;

    public final AppCompatTextView f70022e;

    private g(View view, HorizontalRecyclerview2 horizontalRecyclerview2, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f70018a = view;
        this.f70019b = horizontalRecyclerview2;
        this.f70020c = appCompatTextView;
        this.f70021d = tnTextView;
        this.f70022e = appCompatTextView2;
    }

    public static g a(View view) {
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
                        return new g(view, horizontalRecyclerview2, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f70018a;
    }
}
