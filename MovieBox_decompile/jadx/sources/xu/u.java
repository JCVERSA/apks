package xu;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

public final class u implements f4.a {

    private final LinearLayout f75768a;

    public final AppCompatTextView f75769b;

    public final AppCompatTextView f75770c;

    public final EditTextWithClear f75771d;

    public final AppCompatTextView f75772e;

    public final AppCompatTextView f75773f;

    public final AppCompatTextView f75774g;

    public final AppCompatTextView f75775h;

    public final AppCompatTextView f75776i;

    public final AppCompatTextView f75777j;

    public final AppCompatTextView f75778k;

    public final AppCompatTextView f75779l;

    public final AppCompatTextView f75780m;

    public final AppCompatTextView f75781n;

    private u(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12) {
        this.f75768a = linearLayout;
        this.f75769b = appCompatTextView;
        this.f75770c = appCompatTextView2;
        this.f75771d = editTextWithClear;
        this.f75772e = appCompatTextView3;
        this.f75773f = appCompatTextView4;
        this.f75774g = appCompatTextView5;
        this.f75775h = appCompatTextView6;
        this.f75776i = appCompatTextView7;
        this.f75777j = appCompatTextView8;
        this.f75778k = appCompatTextView9;
        this.f75779l = appCompatTextView10;
        this.f75780m = appCompatTextView11;
        this.f75781n = appCompatTextView12;
    }

    public static u a(View view) {
        int i10 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_custom_host;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.et_custom_host;
                EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
                if (editTextWithClear != null) {
                    i10 = R$id.tv_host_1;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tv_host_2;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tv_host_3;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView5 != null) {
                                i10 = R$id.tv_host_4;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView6 != null) {
                                    i10 = R$id.tv_host_5;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView7 != null) {
                                        i10 = R$id.tv_host_6;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView8 != null) {
                                            i10 = R$id.tv_host_7;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView9 != null) {
                                                i10 = R$id.tv_host_8;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView10 != null) {
                                                    i10 = R$id.tv_host_cur;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView11 != null) {
                                                        i10 = R$id.tv_reset;
                                                        AppCompatTextView appCompatTextView12 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView12 != null) {
                                                            return new u((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12);
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
        return this.f75768a;
    }
}
