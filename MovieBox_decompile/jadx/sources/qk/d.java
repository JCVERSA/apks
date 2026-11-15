package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class d implements f4.a {

    private final ConstraintLayout f69709a;

    public final FrameLayout f69710b;

    public final TitleLayout f69711c;

    private d(ConstraintLayout constraintLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f69709a = constraintLayout;
        this.f69710b = frameLayout;
        this.f69711c = titleLayout;
    }

    public static d a(View view) {
        int i10 = R$id.operate_page_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.operate_page_toolbar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new d((ConstraintLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_operate_page, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69709a;
    }
}
