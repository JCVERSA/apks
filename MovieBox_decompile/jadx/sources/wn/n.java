package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.PostDetailItemView;

public final class n implements f4.a {

    private final ConstraintLayout f74487a;

    public final AppBarLayout f74488b;

    public final ConstraintLayout f74489c;

    public final FrameLayout f74490d;

    public final PostDetailItemView f74491e;

    public final TitleLayout f74492f;

    public final AppCompatTextView f74493g;

    public final AppCompatTextView f74494h;

    public final View f74495i;

    private n(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, ConstraintLayout constraintLayout2, FrameLayout frameLayout, PostDetailItemView postDetailItemView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f74487a = constraintLayout;
        this.f74488b = appBarLayout;
        this.f74489c = constraintLayout2;
        this.f74490d = frameLayout;
        this.f74491e = postDetailItemView;
        this.f74492f = titleLayout;
        this.f74493g = appCompatTextView;
        this.f74494h = appCompatTextView2;
        this.f74495i = view;
    }

    public static n a(View view) {
        View viewA;
        int i10 = R$id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.fl_comment_container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.postDetailItem;
                PostDetailItemView postDetailItemView = (PostDetailItemView) f4.b.a(view, i10);
                if (postDetailItemView != null) {
                    i10 = R$id.titleLayout;
                    TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                    if (titleLayout != null) {
                        i10 = R$id.tv_comment;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tv_comment_num;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.v_bottom))) != null) {
                                return new n(constraintLayout, appBarLayout, constraintLayout, frameLayout, postDetailItemView, titleLayout, appCompatTextView, appCompatTextView2, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_post_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74487a;
    }
}
