package bx;

import android.view.View;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;

public final class h1 implements f4.a {

    private final View f16077a;

    public final TnTextView f16078b;

    public final BLView f16079c;

    private h1(View view, TnTextView tnTextView, BLView bLView) {
        this.f16077a = view;
        this.f16078b = tnTextView;
        this.f16079c = bLView;
    }

    public static h1 a(View view) {
        int i10 = R$id.tv_title;
        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
        if (tnTextView != null) {
            i10 = R$id.v_dot;
            BLView bLView = (BLView) f4.b.a(view, i10);
            if (bLView != null) {
                return new h1(view, tnTextView, bLView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16077a;
    }
}
