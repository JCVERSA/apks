package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class j implements f4.a {

    private final LinearLayout f75966a;

    public final TextView f75967b;

    private j(LinearLayout linearLayout, TextView textView) {
        this.f75966a = linearLayout;
        this.f75967b = textView;
    }

    public static j a(View view) {
        int i10 = R$id.tv_loading;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            return new j((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_loading, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75966a;
    }
}
