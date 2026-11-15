package xt;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.transfer.R$id;

public final class f implements f4.a {

    private final ConstraintLayout f75464a;

    public final AppCompatTextView f75465b;

    public final BLTextView f75466c;

    public final AppCompatTextView f75467d;

    public final AppCompatTextView f75468e;

    public final View f75469f;

    private f(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, BLTextView bLTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view) {
        this.f75464a = constraintLayout;
        this.f75465b = appCompatTextView;
        this.f75466c = bLTextView;
        this.f75467d = appCompatTextView2;
        this.f75468e = appCompatTextView3;
        this.f75469f = view;
    }

    public static f a(View view) {
        View viewA;
        int i10 = R$id.btn_no;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_yes;
            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
            if (bLTextView != null) {
                i10 = R$id.tv_tips;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null && (viewA = f4.b.a(view, (i10 = R$id.v_ling_1))) != null) {
                        return new f((ConstraintLayout) view, appCompatTextView, bLTextView, appCompatTextView2, appCompatTextView3, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75464a;
    }
}
