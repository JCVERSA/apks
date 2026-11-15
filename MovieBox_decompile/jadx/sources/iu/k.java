package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f62709a;

    public final ConstraintLayout f62710b;

    public final FragmentContainerView f62711c;

    public final AppCompatImageView f62712d;

    public final RecyclerView f62713e;

    public final AppCompatTextView f62714f;

    public final View f62715g;

    private k(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, FragmentContainerView fragmentContainerView, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view) {
        this.f62709a = constraintLayout;
        this.f62710b = constraintLayout2;
        this.f62711c = fragmentContainerView;
        this.f62712d = appCompatImageView;
        this.f62713e = recyclerView;
        this.f62714f = appCompatTextView;
        this.f62715g = view;
    }

    public static k a(View view) {
        View viewA;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.fragmentContainer;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) f4.b.a(view, i10);
        if (fragmentContainerView != null) {
            i10 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.rvTabs;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tvPageTitle;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.vTitleLine))) != null) {
                        return new k(constraintLayout, constraintLayout, fragmentContainerView, appCompatImageView, recyclerView, appCompatTextView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail_play_list_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62709a;
    }
}
