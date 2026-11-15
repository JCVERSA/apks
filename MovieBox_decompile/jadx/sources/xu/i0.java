package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class i0 implements f4.a {

    private final ConstraintLayout f75601a;

    public final AppCompatImageView f75602b;

    public final AppCompatImageView f75603c;

    public final AppCompatImageView f75604d;

    public final BLConstraintLayout f75605e;

    public final BLConstraintLayout f75606f;

    public final BLConstraintLayout f75607g;

    private i0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, BLConstraintLayout bLConstraintLayout, BLConstraintLayout bLConstraintLayout2, BLConstraintLayout bLConstraintLayout3) {
        this.f75601a = constraintLayout;
        this.f75602b = appCompatImageView;
        this.f75603c = appCompatImageView2;
        this.f75604d = appCompatImageView3;
        this.f75605e = bLConstraintLayout;
        this.f75606f = bLConstraintLayout2;
        this.f75607g = bLConstraintLayout3;
    }

    public static i0 a(View view) {
        int i10 = R$id.ivChangePinArrow;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivDeletePinArrow;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivTrumpet;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.layoutChangePin;
                    BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
                    if (bLConstraintLayout != null) {
                        i10 = R$id.layoutDeletePin;
                        BLConstraintLayout bLConstraintLayout2 = (BLConstraintLayout) f4.b.a(view, i10);
                        if (bLConstraintLayout2 != null) {
                            i10 = R$id.layoutLockStatus;
                            BLConstraintLayout bLConstraintLayout3 = (BLConstraintLayout) f4.b.a(view, i10);
                            if (bLConstraintLayout3 != null) {
                                return new i0((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, bLConstraintLayout, bLConstraintLayout2, bLConstraintLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_pin_management, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75601a;
    }
}
