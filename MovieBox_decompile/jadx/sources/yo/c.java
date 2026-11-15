package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class c implements f4.a {

    private final ConstraintLayout f76282a;

    public final AppCompatTextView f76283b;

    public final EditText f76284c;

    public final EditText f76285d;

    public final EditText f76286e;

    public final EditText f76287f;

    public final EditText f76288g;

    public final EditText f76289h;

    public final AppCompatImageView f76290i;

    public final LinearLayout f76291j;

    public final LinearLayout f76292k;

    public final LinearLayout f76293l;

    public final ScrollView f76294m;

    public final AppCompatTextView f76295n;

    public final ConstraintLayout f76296o;

    public final TextView f76297p;

    public final TextView f76298q;

    private c(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, AppCompatImageView appCompatImageView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, ScrollView scrollView, AppCompatTextView appCompatTextView2, ConstraintLayout constraintLayout2, TextView textView, TextView textView2) {
        this.f76282a = constraintLayout;
        this.f76283b = appCompatTextView;
        this.f76284c = editText;
        this.f76285d = editText2;
        this.f76286e = editText3;
        this.f76287f = editText4;
        this.f76288g = editText5;
        this.f76289h = editText6;
        this.f76290i = appCompatImageView;
        this.f76291j = linearLayout;
        this.f76292k = linearLayout2;
        this.f76293l = linearLayout3;
        this.f76294m = scrollView;
        this.f76295n = appCompatTextView2;
        this.f76296o = constraintLayout2;
        this.f76297p = textView;
        this.f76298q = textView2;
    }

    public static c a(View view) {
        int i10 = R$id.btn_submit;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.et_address;
            EditText editText = (EditText) f4.b.a(view, i10);
            if (editText != null) {
                i10 = R$id.et_alt_phone;
                EditText editText2 = (EditText) f4.b.a(view, i10);
                if (editText2 != null) {
                    i10 = R$id.et_email;
                    EditText editText3 = (EditText) f4.b.a(view, i10);
                    if (editText3 != null) {
                        i10 = R$id.et_fullname;
                        EditText editText4 = (EditText) f4.b.a(view, i10);
                        if (editText4 != null) {
                            i10 = R$id.et_main_phone;
                            EditText editText5 = (EditText) f4.b.a(view, i10);
                            if (editText5 != null) {
                                i10 = R$id.et_postal;
                                EditText editText6 = (EditText) f4.b.a(view, i10);
                                if (editText6 != null) {
                                    i10 = R$id.iv_back;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView != null) {
                                        i10 = R$id.ll_alt_phone_cc;
                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout != null) {
                                            i10 = R$id.ll_main_phone_cc;
                                            LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                            if (linearLayout2 != null) {
                                                i10 = R$id.ll_main_phone_container;
                                                LinearLayout linearLayout3 = (LinearLayout) f4.b.a(view, i10);
                                                if (linearLayout3 != null) {
                                                    i10 = R$id.scrollView;
                                                    ScrollView scrollView = (ScrollView) f4.b.a(view, i10);
                                                    if (scrollView != null) {
                                                        i10 = R$id.title;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView2 != null) {
                                                            i10 = R$id.titleLayout;
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                                            if (constraintLayout != null) {
                                                                i10 = R$id.tv_alt_phone_cc;
                                                                TextView textView = (TextView) f4.b.a(view, i10);
                                                                if (textView != null) {
                                                                    i10 = R$id.tv_main_phone_cc;
                                                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                    if (textView2 != null) {
                                                                        return new c((ConstraintLayout) view, appCompatTextView, editText, editText2, editText3, editText4, editText5, editText6, appCompatImageView, linearLayout, linearLayout2, linearLayout3, scrollView, appCompatTextView2, constraintLayout, textView, textView2);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_claim_reward, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76282a;
    }
}
