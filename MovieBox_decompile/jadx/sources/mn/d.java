package mn;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.player.longvideo.R$id;

public final class d implements f4.a {

    private final LinearLayout f66529a;

    public final TextView f66530b;

    public final TextView f66531c;

    public final LinearLayout f66532d;

    private d(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2) {
        this.f66529a = linearLayout;
        this.f66530b = textView;
        this.f66531c = textView2;
        this.f66532d = linearLayout2;
    }

    public static d a(View view) {
        int i10 = R$id.tv_loading;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.tv_speed;
            TextView textView2 = (TextView) f4.b.a(view, i10);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new d(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66529a;
    }
}
