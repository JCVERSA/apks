package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class f implements f4.a {

    private final LinearLayout f75561a;

    public final View f75562b;

    public final FrameLayout f75563c;

    public final ImageView f75564d;

    public final TnTextView f75565e;

    private f(LinearLayout linearLayout, View view, FrameLayout frameLayout, ImageView imageView, TnTextView tnTextView) {
        this.f75561a = linearLayout;
        this.f75562b = view;
        this.f75563c = frameLayout;
        this.f75564d = imageView;
        this.f75565e = tnTextView;
    }

    public static f a(View view) {
        int i10 = R$id.divider_line;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.flContainer;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.ivBack;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.tvToolbarTitle;
                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                    if (tnTextView != null) {
                        return new f((LinearLayout) view, viewA, frameLayout, imageView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_manage_profiles, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75561a;
    }
}
