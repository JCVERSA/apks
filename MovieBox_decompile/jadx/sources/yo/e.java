package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class e implements f4.a {

    private final LinearLayoutCompat f76317a;

    public final AppCompatButton f76318b;

    public final AppCompatEditText f76319c;

    public final AppCompatImageView f76320d;

    public final AppCompatImageView f76321e;

    public final AppCompatImageView f76322f;

    public final LinearLayoutCompat f76323g;

    public final LinearLayoutCompat f76324h;

    public final LinearLayoutCompat f76325i;

    public final AppCompatTextView f76326j;

    public final AppCompatTextView f76327k;

    public final AppCompatTextView f76328l;

    public final AppCompatTextView f76329m;

    public final AppCompatTextView f76330n;

    private e(LinearLayoutCompat linearLayoutCompat, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3, LinearLayoutCompat linearLayoutCompat4, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5) {
        this.f76317a = linearLayoutCompat;
        this.f76318b = appCompatButton;
        this.f76319c = appCompatEditText;
        this.f76320d = appCompatImageView;
        this.f76321e = appCompatImageView2;
        this.f76322f = appCompatImageView3;
        this.f76323g = linearLayoutCompat2;
        this.f76324h = linearLayoutCompat3;
        this.f76325i = linearLayoutCompat4;
        this.f76326j = appCompatTextView;
        this.f76327k = appCompatTextView2;
        this.f76328l = appCompatTextView3;
        this.f76329m = appCompatTextView4;
        this.f76330n = appCompatTextView5;
    }

    public static e a(View view) {
        int i10 = R$id.btn_action;
        AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
        if (appCompatButton != null) {
            i10 = R$id.et_phone;
            AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
            if (appCompatEditText != null) {
                i10 = R$id.iv_back;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.iv_clear;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.iv_close;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView3 != null) {
                            i10 = R$id.ll_phone_cc;
                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                            if (linearLayoutCompat != null) {
                                i10 = R$id.ll_phone_input_container;
                                LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) f4.b.a(view, i10);
                                if (linearLayoutCompat2 != null) {
                                    LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) view;
                                    i10 = R$id.tv_phone_cc;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView != null) {
                                        i10 = R$id.tv_price;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            i10 = R$id.tv_product_name;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView3 != null) {
                                                i10 = R$id.tv_subtitle;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView4 != null) {
                                                    i10 = R$id.tv_title;
                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView5 != null) {
                                                        return new e(linearLayoutCompat3, appCompatButton, appCompatEditText, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayoutCompat, linearLayoutCompat2, linearLayoutCompat3, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5);
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

    public static e c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.phone_bottom_sheet, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f76317a;
    }
}
