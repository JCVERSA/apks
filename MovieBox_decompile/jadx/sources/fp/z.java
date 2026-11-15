package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLTextView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class z implements f4.a {

    private final BLFrameLayout f60485a;

    public final BLFrameLayout f60486b;

    public final BLTextView f60487c;

    public final View f60488d;

    private z(BLFrameLayout bLFrameLayout, BLFrameLayout bLFrameLayout2, BLTextView bLTextView, View view) {
        this.f60485a = bLFrameLayout;
        this.f60486b = bLFrameLayout2;
        this.f60487c = bLTextView;
        this.f60488d = view;
    }

    public static z a(View view) {
        View viewA;
        BLFrameLayout bLFrameLayout = (BLFrameLayout) view;
        int i10 = R$id.tv_title;
        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
        if (bLTextView == null || (viewA = f4.b.a(view, (i10 = R$id.v_selected))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new z(bLFrameLayout, bLFrameLayout, bLTextView, viewA);
    }

    public static z c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_room_list_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLFrameLayout getRoot() {
        return this.f60485a;
    }
}
