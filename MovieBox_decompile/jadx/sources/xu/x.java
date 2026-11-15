package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class x implements f4.a {

    private final ConstraintLayout f75810a;

    public final AppCompatTextView f75811b;

    public final AppCompatTextView f75812c;

    public final EditTextWithClear f75813d;

    public final EditTextWithClear f75814e;

    public final EditTextWithClear f75815f;

    public final EditTextWithClear f75816g;

    public final AppCompatTextView f75817h;

    public final AppCompatTextView f75818i;

    public final AppCompatTextView f75819j;

    public final AppCompatTextView f75820k;

    private x(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, EditTextWithClear editTextWithClear2, EditTextWithClear editTextWithClear3, EditTextWithClear editTextWithClear4, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f75810a = constraintLayout;
        this.f75811b = appCompatTextView;
        this.f75812c = appCompatTextView2;
        this.f75813d = editTextWithClear;
        this.f75814e = editTextWithClear2;
        this.f75815f = editTextWithClear3;
        this.f75816g = editTextWithClear4;
        this.f75817h = appCompatTextView3;
        this.f75818i = appCompatTextView4;
        this.f75819j = appCompatTextView5;
        this.f75820k = appCompatTextView6;
    }

    public static x a(View view) {
        int i10 = R$id.btn_ok;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_rest;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.et_address;
                EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
                if (editTextWithClear != null) {
                    i10 = R$id.et_lat;
                    EditTextWithClear editTextWithClear2 = (EditTextWithClear) f4.b.a(view, i10);
                    if (editTextWithClear2 != null) {
                        i10 = R$id.et_lon;
                        EditTextWithClear editTextWithClear3 = (EditTextWithClear) f4.b.a(view, i10);
                        if (editTextWithClear3 != null) {
                            i10 = R$id.et_name;
                            EditTextWithClear editTextWithClear4 = (EditTextWithClear) f4.b.a(view, i10);
                            if (editTextWithClear4 != null) {
                                i10 = R$id.tv_address;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView3 != null) {
                                    i10 = R$id.tv_lat;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView4 != null) {
                                        i10 = R$id.tv_lon;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView5 != null) {
                                            i10 = R$id.tv_name;
                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView6 != null) {
                                                return new x((ConstraintLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, editTextWithClear2, editTextWithClear3, editTextWithClear4, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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

    public static x c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_lab_location, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75810a;
    }
}
