package bx;

import android.view.View;
import com.noober.background.view.BLView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsnet.downloader.R$id;

public final class g1 implements f4.a {

    private final View f16063a;

    public final GradientTextView f16064b;

    public final BLView f16065c;

    private g1(View view, GradientTextView gradientTextView, BLView bLView) {
        this.f16063a = view;
        this.f16064b = gradientTextView;
        this.f16065c = bLView;
    }

    public static g1 a(View view) {
        int i10 = R$id.tv_title;
        GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
        if (gradientTextView != null) {
            i10 = R$id.v_dot;
            BLView bLView = (BLView) f4.b.a(view, i10);
            if (bLView != null) {
                return new g1(view, gradientTextView, bLView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16063a;
    }
}
