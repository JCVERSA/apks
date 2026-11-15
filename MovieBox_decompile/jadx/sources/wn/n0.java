package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class n0 implements f4.a {

    private final ConstraintLayout f74496a;

    public final AppCompatImageView f74497b;

    public final AppCompatImageView f74498c;

    public final AppCompatImageView f74499d;

    public final AppCompatImageView f74500e;

    public final AppCompatTextView f74501f;

    public final AppCompatTextView f74502g;

    public final View f74503h;

    public final View f74504i;

    public final View f74505j;

    public final View f74506k;

    private n0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view, View view2, View view3, View view4) {
        this.f74496a = constraintLayout;
        this.f74497b = appCompatImageView;
        this.f74498c = appCompatImageView2;
        this.f74499d = appCompatImageView3;
        this.f74500e = appCompatImageView4;
        this.f74501f = appCompatTextView;
        this.f74502g = appCompatTextView2;
        this.f74503h = view;
        this.f74504i = view2;
        this.f74505j = view3;
        this.f74506k = view4;
    }

    public static n0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i10 = R$id.ivComment;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivDownload;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivLike;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.ivShare;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView4 != null) {
                        i10 = R$id.tvComment;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tvLike;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.viewComment))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.viewDownload))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.viewLike))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.viewShare))) != null) {
                                return new n0((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatTextView, appCompatTextView2, viewA, viewA2, viewA3, viewA4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_post_detail_operation_new_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74496a;
    }
}
