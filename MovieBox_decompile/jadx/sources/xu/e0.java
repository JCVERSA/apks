package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.setting.labelsfeedback.UCEditText;

public final class e0 implements f4.a {

    private final LinearLayout f75554a;

    public final AppCompatTextView f75555b;

    public final AppCompatEditText f75556c;

    public final UCEditText f75557d;

    public final ShapeableImageView f75558e;

    public final AppCompatEditText f75559f;

    public final View f75560g;

    private e0(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatEditText appCompatEditText, UCEditText uCEditText, ShapeableImageView shapeableImageView, AppCompatEditText appCompatEditText2, View view) {
        this.f75554a = linearLayout;
        this.f75555b = appCompatTextView;
        this.f75556c = appCompatEditText;
        this.f75557d = uCEditText;
        this.f75558e = shapeableImageView;
        this.f75559f = appCompatEditText2;
        this.f75560g = view;
    }

    public static e0 a(View view) {
        View viewA;
        int i10 = R$id.countTextView;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.countryEditText;
            AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
            if (appCompatEditText != null) {
                i10 = R$id.editText;
                UCEditText uCEditText = (UCEditText) f4.b.a(view, i10);
                if (uCEditText != null) {
                    i10 = R$id.imageView;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView != null) {
                        i10 = R$id.phoneEditText;
                        AppCompatEditText appCompatEditText2 = (AppCompatEditText) f4.b.a(view, i10);
                        if (appCompatEditText2 != null && (viewA = f4.b.a(view, (i10 = R$id.view6))) != null) {
                            return new e0((LinearLayout) view, appCompatTextView, appCompatEditText, uCEditText, shapeableImageView, appCompatEditText2, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.feedback_option_list_footer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75554a;
    }
}
