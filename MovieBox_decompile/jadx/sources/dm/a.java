package dm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.mbwidget.R$id;
import com.transsion.mbwidget.R$layout;

public final class a implements f4.a {

    private final LinearLayout f59045a;

    public final TitleLayout f59046b;

    private a(LinearLayout linearLayout, TitleLayout titleLayout) {
        this.f59045a = linearLayout;
        this.f59046b = titleLayout;
    }

    public static a a(View view) {
        int i10 = R$id.mTitleLayout;
        TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
        if (titleLayout != null) {
            return new a((LinearLayout) view, titleLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_widget_guide, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f59045a;
    }
}
