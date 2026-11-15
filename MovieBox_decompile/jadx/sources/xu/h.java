package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class h implements f4.a {

    private final LinearLayout f75587a;

    public final View f75588b;

    public final FrameLayout f75589c;

    public final ImageView f75590d;

    private h(LinearLayout linearLayout, View view, FrameLayout frameLayout, ImageView imageView) {
        this.f75587a = linearLayout;
        this.f75588b = view;
        this.f75589c = frameLayout;
        this.f75590d = imageView;
    }

    public static h a(View view) {
        int i10 = R$id.divider_line;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.flContainer;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.ivBack;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    return new h((LinearLayout) view, viewA, frameLayout, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_pin_management, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75587a;
    }
}
