package an;

import android.view.View;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.play.detail.R$id;
import f4.b;

public final class a implements f4.a {

    private final View f410a;

    public final TnTextView f411b;

    public final BLView f412c;

    private a(View view, TnTextView tnTextView, BLView bLView) {
        this.f410a = view;
        this.f411b = tnTextView;
        this.f412c = bLView;
    }

    public static a a(View view) {
        int i10 = R$id.tv_title;
        TnTextView tnTextView = (TnTextView) b.a(view, i10);
        if (tnTextView != null) {
            i10 = R$id.v_dot;
            BLView bLView = (BLView) b.a(view, i10);
            if (bLView != null) {
                return new a(view, tnTextView, bLView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f410a;
    }
}
