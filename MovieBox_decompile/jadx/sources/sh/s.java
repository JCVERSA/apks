package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.JsonViewer;

public final class s implements f4.a {

    private final LinearLayout f72170a;

    public final JsonViewer f72171b;

    private s(LinearLayout linearLayout, JsonViewer jsonViewer) {
        this.f72170a = linearLayout;
        this.f72171b = jsonViewer;
    }

    public static s a(View view) {
        int i10 = R$id.jsonViewer;
        JsonViewer jsonViewer = (JsonViewer) f4.b.a(view, i10);
        if (jsonViewer != null) {
            return new s((LinearLayout) view, jsonViewer);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_plan_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72170a;
    }
}
