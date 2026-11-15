package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsnet.downloader.R$id;

public final class m implements f4.a {

    private final ConstraintLayout f16166a;

    public final BLTextView f16167b;

    public final View f16168c;

    public final AppCompatImageView f16169d;

    public final AppCompatTextView f16170e;

    private m(ConstraintLayout constraintLayout, BLTextView bLTextView, View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f16166a = constraintLayout;
        this.f16167b = bLTextView;
        this.f16168c = view;
        this.f16169d = appCompatImageView;
        this.f16170e = appCompatTextView;
    }

    public static m a(View view) {
        View viewA;
        int i10 = R$id.btn_bottom;
        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
        if (bLTextView != null && (viewA = f4.b.a(view, (i10 = R$id.btn_top))) != null) {
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.tv_tips;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new m((ConstraintLayout) view, bLTextView, viewA, appCompatImageView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16166a;
    }
}
