package wn;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.postdetail.R$id;

public final class k0 implements f4.a {

    private final LinearLayout f74433a;

    public final TextView f74434b;

    public final TextView f74435c;

    public final LinearLayout f74436d;

    private k0(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2) {
        this.f74433a = linearLayout;
        this.f74434b = textView;
        this.f74435c = textView2;
        this.f74436d = linearLayout2;
    }

    public static k0 a(View view) {
        int i10 = R$id.tv_loading;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.tv_speed;
            TextView textView2 = (TextView) f4.b.a(view, i10);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new k0(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f74433a;
    }
}
