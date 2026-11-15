package wn;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.postdetail.R$id;

public final class e implements f4.a {

    private final ConstraintLayout f74345a;

    public final View f74346b;

    public final FrameLayout f74347c;

    public final ImageView f74348d;

    public final AppCompatTextView f74349e;

    public final View f74350f;

    private e(ConstraintLayout constraintLayout, View view, FrameLayout frameLayout, ImageView imageView, AppCompatTextView appCompatTextView, View view2) {
        this.f74345a = constraintLayout;
        this.f74346b = view;
        this.f74347c = frameLayout;
        this.f74348d = imageView;
        this.f74349e = appCompatTextView;
        this.f74350f = view2;
    }

    public static e a(View view) {
        View viewA;
        int i10 = R$id.divider;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null) {
            i10 = R$id.fl_comment_container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.iv_close;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.tv_comment;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.v_bottom))) != null) {
                        return new e((ConstraintLayout) view, viewA2, frameLayout, imageView, appCompatTextView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74345a;
    }
}
