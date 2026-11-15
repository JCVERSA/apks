package ek;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.FlowLayout;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;

public final class a implements f4.a {

    private final LinearLayout f59714a;

    public final FlowLayout f59715b;

    public final ProgressBar f59716c;

    public final AppCompatTextView f59717d;

    public final AppCompatTextView f59718e;

    private a(LinearLayout linearLayout, FlowLayout flowLayout, ProgressBar progressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f59714a = linearLayout;
        this.f59715b = flowLayout;
        this.f59716c = progressBar;
        this.f59717d = appCompatTextView;
        this.f59718e = appCompatTextView2;
    }

    public static a a(View view) {
        int i10 = R$id.interestLayout;
        FlowLayout flowLayout = (FlowLayout) f4.b.a(view, i10);
        if (flowLayout != null) {
            i10 = R$id.loadView;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.tvConfirm;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvSkip;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new a((LinearLayout) view, flowLayout, progressBar, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_interest_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f59714a;
    }
}
