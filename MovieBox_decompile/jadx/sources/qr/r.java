package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class r implements f4.a {

    private final LinearLayout f70147a;

    public final AppCompatTextView f70148b;

    public final AppCompatTextView f70149c;

    public final TextView f70150d;

    public final TextView f70151e;

    private r(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, TextView textView2) {
        this.f70147a = linearLayout;
        this.f70148b = appCompatTextView;
        this.f70149c = appCompatTextView2;
        this.f70150d = textView;
        this.f70151e = textView2;
    }

    public static r a(View view) {
        int i10 = R$id.btn_primary;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_secondary;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tv_message;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tv_title;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        return new r((LinearLayout) view, appCompatTextView, appCompatTextView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static r c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_dialog_alert, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f70147a;
    }
}
