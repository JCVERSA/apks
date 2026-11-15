package xu;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

public final class s implements f4.a {

    private final LinearLayout f75745a;

    public final AppCompatTextView f75746b;

    public final AppCompatTextView f75747c;

    public final EditTextWithClear f75748d;

    public final AppCompatTextView f75749e;

    public final AppCompatTextView f75750f;

    public final AppCompatTextView f75751g;

    public final AppCompatTextView f75752h;

    private s(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f75745a = linearLayout;
        this.f75746b = appCompatTextView;
        this.f75747c = appCompatTextView2;
        this.f75748d = editTextWithClear;
        this.f75749e = appCompatTextView3;
        this.f75750f = appCompatTextView4;
        this.f75751g = appCompatTextView5;
        this.f75752h = appCompatTextView6;
    }

    public static s a(View view) {
        int i10 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_custom_lane;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.et_custom_cn;
                EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
                if (editTextWithClear != null) {
                    i10 = R$id.tv_lane_cur;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tv_lane_ke;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tv_lane_ng;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView5 != null) {
                                i10 = R$id.tv_reset;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView6 != null) {
                                    return new s((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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
        return this.f75745a;
    }
}
