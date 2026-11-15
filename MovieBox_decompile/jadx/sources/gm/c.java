package gm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.member.R$id;

public final class c implements f4.a {

    private final FrameLayout f61087a;

    public final View f61088b;

    public final ConstraintLayout f61089c;

    public final ConstraintLayout f61090d;

    public final AppCompatImageView f61091e;

    public final AppCompatImageView f61092f;

    public final RecyclerView f61093g;

    public final TextView f61094h;

    public final TextView f61095i;

    public final TextView f61096j;

    public final View f61097k;

    private c(FrameLayout frameLayout, View view, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, View view2) {
        this.f61087a = frameLayout;
        this.f61088b = view;
        this.f61089c = constraintLayout;
        this.f61090d = constraintLayout2;
        this.f61091e = appCompatImageView;
        this.f61092f = appCompatImageView2;
        this.f61093g = recyclerView;
        this.f61094h = textView;
        this.f61095i = textView2;
        this.f61096j = textView3;
        this.f61097k = view2;
    }

    public static c a(View view) {
        View viewA;
        int i10 = R$id.MeBg1;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null) {
            i10 = R$id.MeBg2;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.clRoot;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout2 != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivPremium;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.rvMemberRights;
                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                            if (recyclerView != null) {
                                i10 = R$id.tvGetAd;
                                TextView textView = (TextView) f4.b.a(view, i10);
                                if (textView != null) {
                                    i10 = R$id.tvPay;
                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                    if (textView2 != null) {
                                        i10 = R$id.tvTitle;
                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                        if (textView3 != null && (viewA = f4.b.a(view, (i10 = R$id.viewBtnBg))) != null) {
                                            return new c((FrameLayout) view, viewA2, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, recyclerView, textView, textView2, textView3, viewA);
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

    @Override
    public FrameLayout getRoot() {
        return this.f61087a;
    }
}
