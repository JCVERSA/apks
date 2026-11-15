package sj;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.commercialization.R$id;

public final class d implements f4.a {

    private final LinearLayout f72246a;

    public final ConstraintLayout f72247b;

    public final ConstraintLayout f72248c;

    public final AppCompatImageView f72249d;

    public final AppCompatImageView f72250e;

    public final AppCompatTextView f72251f;

    public final AppCompatImageView f72252g;

    public final LinearLayoutCompat f72253h;

    public final LinearLayoutCompat f72254i;

    public final h f72255j;

    public final RecyclerView f72256k;

    public final TextView f72257l;

    public final TextView f72258m;

    public final TextView f72259n;

    public final TextView f72260o;

    public final TextView f72261p;

    private d(LinearLayout linearLayout, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat, LinearLayoutCompat linearLayoutCompat2, h hVar, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.f72246a = linearLayout;
        this.f72247b = constraintLayout;
        this.f72248c = constraintLayout2;
        this.f72249d = appCompatImageView;
        this.f72250e = appCompatImageView2;
        this.f72251f = appCompatTextView;
        this.f72252g = appCompatImageView3;
        this.f72253h = linearLayoutCompat;
        this.f72254i = linearLayoutCompat2;
        this.f72255j = hVar;
        this.f72256k = recyclerView;
        this.f72257l = textView;
        this.f72258m = textView2;
        this.f72259n = textView3;
        this.f72260o = textView4;
        this.f72261p = textView5;
    }

    public static d a(View view) {
        View viewA;
        int i10 = R$id.adGroup;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.cl2MemberInfo;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout2 != null) {
                i10 = R$id.ivClose;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ivIcon;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.ivPremium;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.ivRefresh;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView3 != null) {
                                i10 = R$id.llContent;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                if (linearLayoutCompat != null) {
                                    i10 = R$id.llLine;
                                    LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) f4.b.a(view, i10);
                                    if (linearLayoutCompat2 != null && (viewA = f4.b.a(view, (i10 = R$id.rewarded_layout))) != null) {
                                        h hVarA = h.a(viewA);
                                        i10 = R$id.f42559rv;
                                        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                        if (recyclerView != null) {
                                            i10 = R$id.tvGetAd;
                                            TextView textView = (TextView) f4.b.a(view, i10);
                                            if (textView != null) {
                                                i10 = R$id.tvGetAdSec;
                                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                                if (textView2 != null) {
                                                    i10 = R$id.tvTips;
                                                    TextView textView3 = (TextView) f4.b.a(view, i10);
                                                    if (textView3 != null) {
                                                        i10 = R$id.tvTipsSec;
                                                        TextView textView4 = (TextView) f4.b.a(view, i10);
                                                        if (textView4 != null) {
                                                            i10 = R$id.tvTryMore;
                                                            TextView textView5 = (TextView) f4.b.a(view, i10);
                                                            if (textView5 != null) {
                                                                return new d((LinearLayout) view, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatImageView3, linearLayoutCompat, linearLayoutCompat2, hVarA, recyclerView, textView, textView2, textView3, textView4, textView5);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72246a;
    }
}
