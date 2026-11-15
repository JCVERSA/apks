package xu;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

public final class p implements f4.a {

    private final LinearLayout f75714a;

    public final AppCompatTextView f75715b;

    public final AppCompatTextView f75716c;

    public final EditTextWithClear f75717d;

    public final AppCompatTextView f75718e;

    public final AppCompatTextView f75719f;

    public final AppCompatTextView f75720g;

    public final AppCompatTextView f75721h;

    public final AppCompatTextView f75722i;

    public final AppCompatTextView f75723j;

    private p(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8) {
        this.f75714a = linearLayout;
        this.f75715b = appCompatTextView;
        this.f75716c = appCompatTextView2;
        this.f75717d = editTextWithClear;
        this.f75718e = appCompatTextView3;
        this.f75719f = appCompatTextView4;
        this.f75720g = appCompatTextView5;
        this.f75721h = appCompatTextView6;
        this.f75722i = appCompatTextView7;
        this.f75723j = appCompatTextView8;
    }

    public static p a(View view) {
        int i10 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_custom_brand;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.et_custom_brand;
                EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
                if (editTextWithClear != null) {
                    i10 = R$id.tv_lane_cur;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tv_lane_infinix;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tv_lane_itel;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView5 != null) {
                                i10 = R$id.tv_lane_samsung;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView6 != null) {
                                    i10 = R$id.tv_lane_tecno;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView7 != null) {
                                        i10 = R$id.tv_reset;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView8 != null) {
                                            return new p((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8);
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
        return this.f75714a;
    }
}
