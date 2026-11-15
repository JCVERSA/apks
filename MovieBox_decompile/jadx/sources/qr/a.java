package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class a implements f4.a {

    private final ConstraintLayout f69937a;

    public final TextView f69938b;

    public final View f69939c;

    public final ProgressBar f69940d;

    private a(ConstraintLayout constraintLayout, TextView textView, View view, ProgressBar progressBar) {
        this.f69937a = constraintLayout;
        this.f69938b = textView;
        this.f69939c = view;
        this.f69940d = progressBar;
    }

    public static a a(View view) {
        View viewA;
        int i10 = R$id.tvLoading;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null && (viewA = f4.b.a(view, (i10 = R$id.viewBg))) != null) {
            i10 = R$id.viewLoad;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                return new a((ConstraintLayout) view, textView, viewA, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pay_order_id_dialog_loading, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69937a;
    }
}
