package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class z0 implements f4.a {

    private final ConstraintLayout f75849a;

    public final SwitchButton f75850b;

    public final TitleLayout f75851c;

    public final View f75852d;

    private z0(ConstraintLayout constraintLayout, SwitchButton switchButton, TitleLayout titleLayout, View view) {
        this.f75849a = constraintLayout;
        this.f75850b = switchButton;
        this.f75851c = titleLayout;
        this.f75852d = view;
    }

    public static z0 a(View view) {
        View viewA;
        int i10 = R$id.switch_button;
        SwitchButton switchButton = (SwitchButton) f4.b.a(view, i10);
        if (switchButton != null) {
            i10 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null && (viewA = f4.b.a(view, (i10 = R$id.v_notice_bg))) != null) {
                return new z0((ConstraintLayout) view, switchButton, titleLayout, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static z0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_privacy_data, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75849a;
    }
}
