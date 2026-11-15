package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class t implements f4.a {

    private final LinearLayout f72172a;

    public final Button f72173b;

    public final RecyclerView f72174c;

    public final TextView f72175d;

    private t(LinearLayout linearLayout, Button button, RecyclerView recyclerView, TextView textView) {
        this.f72172a = linearLayout;
        this.f72173b = button;
        this.f72174c = recyclerView;
        this.f72175d = textView;
    }

    public static t a(View view) {
        int i10 = R$id.btn;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.f40773rv;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.tvTitle;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    return new t((LinearLayout) view, button, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_plans_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72172a;
    }
}
