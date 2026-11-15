package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

public final class w0 implements f4.a {

    private final ConstraintLayout f16286a;

    public final AppCompatTextView f16287b;

    private w0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView) {
        this.f16286a = constraintLayout;
        this.f16287b = appCompatTextView;
    }

    public static w0 a(View view) {
        int i10 = R$id.iv_premium;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            return new w0((ConstraintLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16286a;
    }
}
