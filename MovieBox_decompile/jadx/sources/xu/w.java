package xu;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

public final class w implements f4.a {

    private final LinearLayout f75794a;

    public final AppCompatTextView f75795b;

    public final AppCompatTextView f75796c;

    public final EditTextWithClear f75797d;

    public final AppCompatTextView f75798e;

    public final AppCompatTextView f75799f;

    public final AppCompatTextView f75800g;

    public final AppCompatTextView f75801h;

    public final AppCompatTextView f75802i;

    public final AppCompatTextView f75803j;

    public final AppCompatTextView f75804k;

    private w(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9) {
        this.f75794a = linearLayout;
        this.f75795b = appCompatTextView;
        this.f75796c = appCompatTextView2;
        this.f75797d = editTextWithClear;
        this.f75798e = appCompatTextView3;
        this.f75799f = appCompatTextView4;
        this.f75800g = appCompatTextView5;
        this.f75801h = appCompatTextView6;
        this.f75802i = appCompatTextView7;
        this.f75803j = appCompatTextView8;
        this.f75804k = appCompatTextView9;
    }

    public static w a(View view) {
        int i10 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_custom_lane;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.et_custom_lane;
                EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
                if (editTextWithClear != null) {
                    i10 = R$id.tv_lane_1;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tv_lane_2;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tv_lane_3;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView5 != null) {
                                i10 = R$id.tv_lane_4;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView6 != null) {
                                    i10 = R$id.tv_lane_5;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView7 != null) {
                                        i10 = R$id.tv_lane_cur;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView8 != null) {
                                            i10 = R$id.tv_reset;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView9 != null) {
                                                return new w((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9);
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
        return this.f75794a;
    }
}
