package wn;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.postdetail.R$id;

public final class d implements f4.a {

    private final LinearLayout f74333a;

    public final ImageView f74334b;

    public final LinearLayout f74335c;

    public final TextView f74336d;

    public final TextView f74337e;

    public final TextView f74338f;

    public final View f74339g;

    private d(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, View view) {
        this.f74333a = linearLayout;
        this.f74334b = imageView;
        this.f74335c = linearLayout2;
        this.f74336d = textView;
        this.f74337e = textView2;
        this.f74338f = textView3;
        this.f74339g = view;
    }

    public static d a(View view) {
        View viewA;
        int i10 = R$id.ivRight;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R$id.tvCountDown;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                i10 = R$id.tvEnterAd;
                TextView textView2 = (TextView) f4.b.a(view, i10);
                if (textView2 != null) {
                    i10 = R$id.tvGoAdFree;
                    TextView textView3 = (TextView) f4.b.a(view, i10);
                    if (textView3 != null && (viewA = f4.b.a(view, (i10 = R$id.view))) != null) {
                        return new d(linearLayout, imageView, linearLayout, textView, textView2, textView3, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f74333a;
    }
}
