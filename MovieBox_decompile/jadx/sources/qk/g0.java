package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.FlowLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class g0 implements f4.a {

    private final LinearLayout f69742a;

    public final FlowLayout f69743b;

    public final AppCompatTextView f69744c;

    private g0(LinearLayout linearLayout, FlowLayout flowLayout, AppCompatTextView appCompatTextView) {
        this.f69742a = linearLayout;
        this.f69743b = flowLayout;
        this.f69744c = appCompatTextView;
    }

    public static g0 a(View view) {
        int i10 = R$id.flow_layout;
        FlowLayout flowLayout = (FlowLayout) f4.b.a(view, i10);
        if (flowLayout != null) {
            i10 = R$id.tvExpand;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new g0((LinearLayout) view, flowLayout, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.layout_filter_expand_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69742a;
    }
}
