package qk;

import android.view.View;
import android.view.ViewStub;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.home.R$id;
import com.transsion.home.view.filter.expand.UGCFilterExpandView;

public final class i0 implements f4.a {

    private final ConstraintLayout f69775a;

    public final UGCFilterExpandView f69776b;

    public final ConstraintLayout f69777c;

    public final ViewStub f69778d;

    public final ViewStub f69779e;

    public final ViewStub f69780f;

    public final TabLayout f69781g;

    private i0(ConstraintLayout constraintLayout, UGCFilterExpandView uGCFilterExpandView, ConstraintLayout constraintLayout2, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, TabLayout tabLayout) {
        this.f69775a = constraintLayout;
        this.f69776b = uGCFilterExpandView;
        this.f69777c = constraintLayout2;
        this.f69778d = viewStub;
        this.f69779e = viewStub2;
        this.f69780f = viewStub3;
        this.f69781g = tabLayout;
    }

    public static i0 a(View view) {
        int i10 = R$id.filterExpand;
        UGCFilterExpandView uGCFilterExpandView = (UGCFilterExpandView) f4.b.a(view, i10);
        if (uGCFilterExpandView != null) {
            i10 = R$id.ll_tab_movie;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.loading_stub;
                ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                if (viewStub != null) {
                    i10 = R$id.no_network_stub;
                    ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                    if (viewStub2 != null) {
                        i10 = R$id.no_result_stub;
                        ViewStub viewStub3 = (ViewStub) f4.b.a(view, i10);
                        if (viewStub3 != null) {
                            i10 = R$id.tab_movie;
                            TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                            if (tabLayout != null) {
                                return new i0((ConstraintLayout) view, uGCFilterExpandView, constraintLayout, viewStub, viewStub2, viewStub3, tabLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69775a;
    }
}
