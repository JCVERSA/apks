package dm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.baseui.widget.text.GradientTextView;
import com.transsion.mbwidget.R$id;
import com.transsion.mbwidget.R$layout;

public final class b implements f4.a {

    private final LinearLayout f59047a;

    public final TextView f59048b;

    public final ImageView f59049c;

    public final GradientTextView f59050d;

    private b(LinearLayout linearLayout, TextView textView, ImageView imageView, GradientTextView gradientTextView) {
        this.f59047a = linearLayout;
        this.f59048b = textView;
        this.f59049c = imageView;
        this.f59050d = gradientTextView;
    }

    public static b a(View view) {
        int i10 = R$id.addTv;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.closeIV;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.tipsTv;
                GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                if (gradientTextView != null) {
                    return new b((LinearLayout) view, textView, imageView, gradientTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_widget_add, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f59047a;
    }
}
