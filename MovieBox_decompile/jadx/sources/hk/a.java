package hk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.fission.R$id;
import com.transsion.fission.R$layout;

public final class a implements f4.a {

    private final ConstraintLayout f61370a;

    public final AppCompatButton f61371b;

    public final AppCompatEditText f61372c;

    public final TitleLayout f61373d;

    private a(ConstraintLayout constraintLayout, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, TitleLayout titleLayout) {
        this.f61370a = constraintLayout;
        this.f61371b = appCompatButton;
        this.f61372c = appCompatEditText;
        this.f61373d = titleLayout;
    }

    public static a a(View view) {
        int i10 = R$id.btn_submit;
        AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
        if (appCompatButton != null) {
            i10 = R$id.et_invitation_code;
            AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
            if (appCompatEditText != null) {
                i10 = R$id.tool_bar;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new a((ConstraintLayout) view, appCompatButton, appCompatEditText, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fission_activity_invitation_code, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f61370a;
    }
}
