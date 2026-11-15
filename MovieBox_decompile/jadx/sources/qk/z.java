package qk;

import android.view.View;
import android.view.ViewStub;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.home.R$id;
import com.transsion.home.view.filter.expand.FilterExpandView;
import com.transsion.home.view.filter.expand.TabExpandView;

public final class z implements f4.a {

    private final ConstraintLayout f69884a;

    public final TabExpandView f69885b;

    public final FilterExpandView f69886c;

    public final ConstraintLayout f69887d;

    public final ViewStub f69888e;

    public final ViewStub f69889f;

    public final ViewStub f69890g;

    public final TabLayout f69891h;

    private z(ConstraintLayout constraintLayout, TabExpandView tabExpandView, FilterExpandView filterExpandView, ConstraintLayout constraintLayout2, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, TabLayout tabLayout) {
        this.f69884a = constraintLayout;
        this.f69885b = tabExpandView;
        this.f69886c = filterExpandView;
        this.f69887d = constraintLayout2;
        this.f69888e = viewStub;
        this.f69889f = viewStub2;
        this.f69890g = viewStub3;
        this.f69891h = tabLayout;
    }

    public static z a(View view) {
        int i10 = R$id.channelExpand;
        TabExpandView tabExpandView = (TabExpandView) f4.b.a(view, i10);
        if (tabExpandView != null) {
            i10 = R$id.filterExpand;
            FilterExpandView filterExpandView = (FilterExpandView) f4.b.a(view, i10);
            if (filterExpandView != null) {
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
                                    return new z((ConstraintLayout) view, tabExpandView, filterExpandView, constraintLayout, viewStub, viewStub2, viewStub3, tabLayout);
                                }
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
        return this.f69884a;
    }
}
