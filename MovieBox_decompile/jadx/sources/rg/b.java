package rg;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.tn.lib.tranpay.R$id;

public final class b implements f4.a {

    private final LinearLayoutCompat f71190a;

    public final AppCompatImageView f71191b;

    public final AppCompatImageView f71192c;

    public final AppCompatEditText f71193d;

    public final AppCompatEditText f71194e;

    public final AppCompatTextView f71195f;

    public final FrameLayout f71196g;

    public final AppCompatImageView f71197h;

    public final ConstraintLayout f71198i;

    public final View f71199j;

    public final AppCompatTextView f71200k;

    public final AppCompatTextView f71201l;

    public final AppCompatTextView f71202m;

    public final AppCompatTextView f71203n;

    public final AppCompatTextView f71204o;

    public final AppCompatTextView f71205p;

    public final AppCompatTextView f71206q;

    public final AppCompatTextView f71207r;

    public final ConstraintLayout f71208s;

    public final View f71209t;

    public final LinearLayoutCompat f71210u;

    public final LinearLayoutCompat f71211v;

    public final NestedScrollView f71212w;

    public final View f71213x;

    private b(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, AppCompatTextView appCompatTextView, FrameLayout frameLayout, AppCompatImageView appCompatImageView3, ConstraintLayout constraintLayout, View view, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, ConstraintLayout constraintLayout2, View view2, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3, NestedScrollView nestedScrollView, View view3) {
        this.f71190a = linearLayoutCompat;
        this.f71191b = appCompatImageView;
        this.f71192c = appCompatImageView2;
        this.f71193d = appCompatEditText;
        this.f71194e = appCompatEditText2;
        this.f71195f = appCompatTextView;
        this.f71196g = frameLayout;
        this.f71197h = appCompatImageView3;
        this.f71198i = constraintLayout;
        this.f71199j = view;
        this.f71200k = appCompatTextView2;
        this.f71201l = appCompatTextView3;
        this.f71202m = appCompatTextView4;
        this.f71203n = appCompatTextView5;
        this.f71204o = appCompatTextView6;
        this.f71205p = appCompatTextView7;
        this.f71206q = appCompatTextView8;
        this.f71207r = appCompatTextView9;
        this.f71208s = constraintLayout2;
        this.f71209t = view2;
        this.f71210u = linearLayoutCompat2;
        this.f71211v = linearLayoutCompat3;
        this.f71212w = nestedScrollView;
        this.f71213x = view3;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.clear_cnic_button;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.clear_phone_button;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.input_cnic;
                AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                if (appCompatEditText != null) {
                    i10 = R$id.input_phone;
                    AppCompatEditText appCompatEditText2 = (AppCompatEditText) f4.b.a(view, i10);
                    if (appCompatEditText2 != null) {
                        i10 = R$id.iv_amount;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.iv_back;
                            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R$id.iv_close;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView3 != null) {
                                    i10 = R$id.iv_cnic_container;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                    if (constraintLayout != null && (viewA = f4.b.a(view, (i10 = R$id.iv_cnic_container_line))) != null) {
                                        i10 = R$id.iv_company;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            i10 = R$id.iv_desc;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView3 != null) {
                                                i10 = R$id.iv_input_cnic_error;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView4 != null) {
                                                    i10 = R$id.iv_input_phone_error;
                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView5 != null) {
                                                        i10 = R$id.iv_order_id;
                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView6 != null) {
                                                            i10 = R$id.iv_pay_button;
                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView7 != null) {
                                                                i10 = R$id.iv_payment_method;
                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView8 != null) {
                                                                    i10 = R$id.iv_phone_code;
                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView9 != null) {
                                                                        i10 = R$id.iv_phone_container;
                                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                                                        if (constraintLayout2 != null && (viewA2 = f4.b.a(view, (i10 = R$id.iv_phone_container_line))) != null) {
                                                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, R$id.left_panel);
                                                                            LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) view;
                                                                            i10 = R$id.scroll_view;
                                                                            NestedScrollView nestedScrollView = (NestedScrollView) f4.b.a(view, i10);
                                                                            if (nestedScrollView != null && (viewA3 = f4.b.a(view, (i10 = R$id.view))) != null) {
                                                                                return new b(linearLayoutCompat2, appCompatImageView, appCompatImageView2, appCompatEditText, appCompatEditText2, appCompatTextView, frameLayout, appCompatImageView3, constraintLayout, viewA, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, constraintLayout2, viewA2, linearLayoutCompat, linearLayoutCompat2, nestedScrollView, viewA3);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f71190a;
    }
}
