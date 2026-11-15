package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class x0 implements f4.a {

    private final ConstraintLayout f75821a;

    public final AppCompatButton f75822b;

    public final AppCompatEditText f75823c;

    public final AppCompatEditText f75824d;

    public final AppCompatImageView f75825e;

    public final AppCompatImageView f75826f;

    public final LinearLayout f75827g;

    public final TitleLayout f75828h;

    public final AppCompatTextView f75829i;

    public final AppCompatTextView f75830j;

    public final AppCompatTextView f75831k;

    public final AppCompatTextView f75832l;

    private x0(ConstraintLayout constraintLayout, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f75821a = constraintLayout;
        this.f75822b = appCompatButton;
        this.f75823c = appCompatEditText;
        this.f75824d = appCompatEditText2;
        this.f75825e = appCompatImageView;
        this.f75826f = appCompatImageView2;
        this.f75827g = linearLayout;
        this.f75828h = titleLayout;
        this.f75829i = appCompatTextView;
        this.f75830j = appCompatTextView2;
        this.f75831k = appCompatTextView3;
        this.f75832l = appCompatTextView4;
    }

    public static x0 a(View view) {
        int i10 = R$id.btn_submit;
        AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
        if (appCompatButton != null) {
            i10 = R$id.et_desc;
            AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
            if (appCompatEditText != null) {
                i10 = R$id.et_phone;
                AppCompatEditText appCompatEditText2 = (AppCompatEditText) f4.b.a(view, i10);
                if (appCompatEditText2 != null) {
                    i10 = R$id.img_background;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.iv_add_image;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.ll_input;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.toolbar;
                                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                                if (titleLayout != null) {
                                    i10 = R$id.tv_desc_num;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView != null) {
                                        i10 = R$id.tv_phone_country_code;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            i10 = R$id.tv_title_desc;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView3 != null) {
                                                i10 = R$id.whatsapp_hint;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView4 != null) {
                                                    return new x0((ConstraintLayout) view, appCompatButton, appCompatEditText, appCompatEditText2, appCompatImageView, appCompatImageView2, linearLayout, titleLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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

    public static x0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_feedback, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75821a;
    }
}
