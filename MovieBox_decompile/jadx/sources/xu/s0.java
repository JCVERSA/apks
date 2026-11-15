package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class s0 implements f4.a {

    private final LinearLayout f75753a;

    public final AppCompatImageButton f75754b;

    public final LinearLayout f75755c;

    public final AppCompatTextView f75756d;

    private s0(LinearLayout linearLayout, AppCompatImageButton appCompatImageButton, LinearLayout linearLayout2, AppCompatTextView appCompatTextView) {
        this.f75753a = linearLayout;
        this.f75754b = appCompatImageButton;
        this.f75755c = linearLayout2;
        this.f75756d = appCompatTextView;
    }

    public static s0 a(View view) {
        int i10 = R$id.btn_back;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
        if (appCompatImageButton != null) {
            i10 = R$id.rlContent;
            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
            if (linearLayout != null) {
                i10 = R$id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new s0((LinearLayout) view, appCompatImageButton, linearLayout, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.use_activity_webview_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75753a;
    }
}
