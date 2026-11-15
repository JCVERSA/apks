package fp;

import android.view.View;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.room.R$id;

public final class e0 implements f4.a {

    private final View f60320a;

    public final BLTextView f60321b;

    public final TnTextView f60322c;

    public final BLView f60323d;

    private e0(View view, BLTextView bLTextView, TnTextView tnTextView, BLView bLView) {
        this.f60320a = view;
        this.f60321b = bLTextView;
        this.f60322c = tnTextView;
        this.f60323d = bLView;
    }

    public static e0 a(View view) {
        int i10 = R$id.tv_badge;
        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
        if (bLTextView != null) {
            i10 = R$id.tv_title;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                i10 = R$id.v_badge;
                BLView bLView = (BLView) f4.b.a(view, i10);
                if (bLView != null) {
                    return new e0(view, bLTextView, tnTextView, bLView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f60320a;
    }
}
