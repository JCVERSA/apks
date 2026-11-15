package tn;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.transsion.player.view.R$id;
import f4.b;

public final class a implements f4.a {

    private final LinearLayout f72784a;

    public final ImageView f72785b;

    public final ProgressBar f72786c;

    public final LinearLayout f72787d;

    public final ProgressBar f72788e;

    public final LinearLayout f72789f;

    private a(LinearLayout linearLayout, ImageView imageView, ProgressBar progressBar, LinearLayout linearLayout2, ProgressBar progressBar2, LinearLayout linearLayout3) {
        this.f72784a = linearLayout;
        this.f72785b = imageView;
        this.f72786c = progressBar;
        this.f72787d = linearLayout2;
        this.f72788e = progressBar2;
        this.f72789f = linearLayout3;
    }

    public static a a(View view) {
        int i10 = R$id.bvIV;
        ImageView imageView = (ImageView) b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.bvProgress;
            ProgressBar progressBar = (ProgressBar) b.a(view, i10);
            if (progressBar != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i10 = R$id.secProgress;
                ProgressBar progressBar2 = (ProgressBar) b.a(view, i10);
                if (progressBar2 != null) {
                    i10 = R$id.tipsLL;
                    LinearLayout linearLayout2 = (LinearLayout) b.a(view, i10);
                    if (linearLayout2 != null) {
                        return new a(linearLayout, imageView, progressBar, linearLayout, progressBar2, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72784a;
    }
}
