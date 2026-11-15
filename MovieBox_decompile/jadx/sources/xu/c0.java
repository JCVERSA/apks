package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class c0 implements f4.a {

    private final ConstraintLayout f75521a;

    public final AppCompatTextView f75522b;

    public final AppCompatTextView f75523c;

    public final AppCompatTextView f75524d;

    public final AppCompatTextView f75525e;

    private c0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f75521a = constraintLayout;
        this.f75522b = appCompatTextView;
        this.f75523c = appCompatTextView2;
        this.f75524d = appCompatTextView3;
        this.f75525e = appCompatTextView4;
    }

    public static c0 a(View view) {
        int i10 = R$id.btn_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_ok;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tv_tips;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView3 != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView4 != null) {
                        return new c0((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_profile_camera_permission, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75521a;
    }
}
