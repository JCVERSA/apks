package wn;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.postdetail.R$id;

public final class g implements f4.a {

    private final LinearLayout f74366a;

    public final AppCompatTextView f74367b;

    public final AppCompatTextView f74368c;

    private g(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f74366a = linearLayout;
        this.f74367b = appCompatTextView;
        this.f74368c = appCompatTextView2;
    }

    public static g a(View view) {
        int i10 = R$id.post_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.post_confirm;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                return new g((LinearLayout) view, appCompatTextView, appCompatTextView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f74366a;
    }
}
