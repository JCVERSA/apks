package wn;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.postdetail.R$id;

public final class l0 implements f4.a {

    private final LinearLayout f74450a;

    public final ImageView f74451b;

    public final LinearLayout f74452c;

    public final TextView f74453d;

    public final TextView f74454e;

    public final View f74455f;

    private l0(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView, TextView textView2, View view) {
        this.f74450a = linearLayout;
        this.f74451b = imageView;
        this.f74452c = linearLayout2;
        this.f74453d = textView;
        this.f74454e = textView2;
        this.f74455f = view;
    }

    public static l0 a(View view) {
        View viewA;
        int i10 = R$id.ivRight;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R$id.tvCountDown;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                i10 = R$id.tvGetAdFree;
                TextView textView2 = (TextView) f4.b.a(view, i10);
                if (textView2 != null && (viewA = f4.b.a(view, (i10 = R$id.view))) != null) {
                    return new l0(linearLayout, imageView, linearLayout, textView, textView2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f74450a;
    }
}
