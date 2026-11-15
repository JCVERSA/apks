package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.TnButton;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class w0 implements f4.a {

    private final LinearLayout f75805a;

    public final TnButton f75806b;

    public final TextView f75807c;

    public final RecyclerView f75808d;

    public final TitleLayout f75809e;

    private w0(LinearLayout linearLayout, TnButton tnButton, TextView textView, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f75805a = linearLayout;
        this.f75806b = tnButton;
        this.f75807c = textView;
        this.f75808d = recyclerView;
        this.f75809e = titleLayout;
    }

    public static w0 a(View view) {
        int i10 = R$id.btn_login;
        TnButton tnButton = (TnButton) f4.b.a(view, i10);
        if (tnButton != null) {
            i10 = R$id.deviceInfoTv;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                i10 = R$id.f54593rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tool_bar;
                    TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                    if (titleLayout != null) {
                        return new w0((LinearLayout) view, tnButton, textView, recyclerView, titleLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75805a;
    }
}
