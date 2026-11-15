package wn;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.postdetail.R$id;

public final class f implements f4.a {

    private final FrameLayout f74356a;

    public final ImageView f74357b;

    public final LinearLayoutCompat f74358c;

    public final TextView f74359d;

    public final TextView f74360e;

    public final TextView f74361f;

    private f(FrameLayout frameLayout, ImageView imageView, LinearLayoutCompat linearLayoutCompat, TextView textView, TextView textView2, TextView textView3) {
        this.f74356a = frameLayout;
        this.f74357b = imageView;
        this.f74358c = linearLayoutCompat;
        this.f74359d = textView;
        this.f74360e = textView2;
        this.f74361f = textView3;
    }

    public static f a(View view) {
        int i10 = R$id.ivSelect;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.llSelect;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.tvBtnCancel;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tvBtnDownload;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        i10 = R$id.tvTip;
                        TextView textView3 = (TextView) f4.b.a(view, i10);
                        if (textView3 != null) {
                            return new f((FrameLayout) view, imageView, linearLayoutCompat, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74356a;
    }
}
