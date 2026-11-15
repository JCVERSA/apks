package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.SwitchButton;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

public final class g implements f4.a {

    private final ConstraintLayout f63292a;

    public final AppCompatImageView f63293b;

    public final AppCompatImageView f63294c;

    public final LinearLayoutCompat f63295d;

    public final LinearLayoutCompat f63296e;

    public final RecyclerView f63297f;

    public final SwitchButton f63298g;

    public final SwitchButton f63299h;

    public final AppCompatTextView f63300i;

    public final AppCompatTextView f63301j;

    public final AppCompatTextView f63302k;

    public final AppCompatTextView f63303l;

    public final View f63304m;

    public final LinearLayoutCompat f63305n;

    private g(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayoutCompat linearLayoutCompat, LinearLayoutCompat linearLayoutCompat2, RecyclerView recyclerView, SwitchButton switchButton, SwitchButton switchButton2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view, LinearLayoutCompat linearLayoutCompat3) {
        this.f63292a = constraintLayout;
        this.f63293b = appCompatImageView;
        this.f63294c = appCompatImageView2;
        this.f63295d = linearLayoutCompat;
        this.f63296e = linearLayoutCompat2;
        this.f63297f = recyclerView;
        this.f63298g = switchButton;
        this.f63299h = switchButton2;
        this.f63300i = appCompatTextView;
        this.f63301j = appCompatTextView2;
        this.f63302k = appCompatTextView3;
        this.f63303l = appCompatTextView4;
        this.f63304m = view;
        this.f63305n = linearLayoutCompat3;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.ivOptions;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivSync;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.llOptions;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                if (linearLayoutCompat != null) {
                    i10 = R$id.llSync;
                    LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) f4.b.a(view, i10);
                    if (linearLayoutCompat2 != null) {
                        i10 = R$id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                        if (recyclerView != null) {
                            i10 = R$id.switchBilingual;
                            SwitchButton switchButton = (SwitchButton) f4.b.a(view, i10);
                            if (switchButton != null) {
                                i10 = R$id.switchBtn;
                                SwitchButton switchButton2 = (SwitchButton) f4.b.a(view, i10);
                                if (switchButton2 != null) {
                                    i10 = R$id.tvBilingual;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView != null) {
                                        i10 = R$id.tvOptions;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            i10 = R$id.tvSync;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView3 != null) {
                                                i10 = R$id.tvTitle;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView4 != null && (viewA = f4.b.a(view, (i10 = R$id.viewLine))) != null) {
                                                    i10 = R$id.viewOptionsBg;
                                                    LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) f4.b.a(view, i10);
                                                    if (linearLayoutCompat3 != null) {
                                                        return new g((ConstraintLayout) view, appCompatImageView, appCompatImageView2, linearLayoutCompat, linearLayoutCompat2, recyclerView, switchButton, switchButton2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA, linearLayoutCompat3);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_select_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63292a;
    }
}
