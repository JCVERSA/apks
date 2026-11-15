package wn;

import android.view.View;
import com.tn.lib.view.expand.ExpandView;

public final class h0 implements f4.a {

    private final ExpandView f74400a;

    public final ExpandView f74401b;

    private h0(ExpandView expandView, ExpandView expandView2) {
        this.f74400a = expandView;
        this.f74401b = expandView2;
    }

    public static h0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ExpandView expandView = (ExpandView) view;
        return new h0(expandView, expandView);
    }

    @Override
    public ExpandView getRoot() {
        return this.f74400a;
    }
}
