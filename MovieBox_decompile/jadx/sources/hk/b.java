package hk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.fission.R$id;
import com.transsion.fission.R$layout;

public final class b implements f4.a {

    private final LinearLayout f61374a;

    public final AppCompatTextView f61375b;

    private b(LinearLayout linearLayout, AppCompatTextView appCompatTextView) {
        this.f61374a = linearLayout;
        this.f61375b = appCompatTextView;
    }

    public static b a(View view) {
        int i10 = R$id.btn_ok;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            return new b((LinearLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fission_dialog_invite_code_help, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f61374a;
    }
}
