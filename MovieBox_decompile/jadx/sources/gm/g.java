package gm;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.member.R$id;

public final class g implements f4.a {

    private final ConstraintLayout f61122a;

    public final TextView f61123b;

    public final ConstraintLayout f61124c;

    public final AppCompatImageView f61125d;

    public final AppCompatImageView f61126e;

    public final TextView f61127f;

    public final TextView f61128g;

    private g(ConstraintLayout constraintLayout, TextView textView, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView2, TextView textView3) {
        this.f61122a = constraintLayout;
        this.f61123b = textView;
        this.f61124c = constraintLayout2;
        this.f61125d = appCompatImageView;
        this.f61126e = appCompatImageView2;
        this.f61127f = textView2;
        this.f61128g = textView3;
    }

    public static g a(View view) {
        int i10 = R$id.btnClaim;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.ivIcon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.tvSubTitle;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        i10 = R$id.tvTitle;
                        TextView textView3 = (TextView) f4.b.a(view, i10);
                        if (textView3 != null) {
                            return new g(constraintLayout, textView, constraintLayout, appCompatImageView, appCompatImageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f61122a;
    }
}
