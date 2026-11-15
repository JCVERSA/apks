package qr;

import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

public final class g0 implements f4.a {

    private final LinearLayoutCompat f70023a;

    public final TnTextView f70024b;

    public final TnTextView f70025c;

    public final TnTextView f70026d;

    private g0(LinearLayoutCompat linearLayoutCompat, TnTextView tnTextView, TnTextView tnTextView2, TnTextView tnTextView3) {
        this.f70023a = linearLayoutCompat;
        this.f70024b = tnTextView;
        this.f70025c = tnTextView2;
        this.f70026d = tnTextView3;
    }

    public static g0 a(View view) {
        int i10 = R$id.iv_all;
        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
        if (tnTextView != null) {
            i10 = R$id.iv_hottest;
            TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
            if (tnTextView2 != null) {
                i10 = R$id.iv_latest;
                TnTextView tnTextView3 = (TnTextView) f4.b.a(view, i10);
                if (tnTextView3 != null) {
                    return new g0((LinearLayoutCompat) view, tnTextView, tnTextView2, tnTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f70023a;
    }
}
