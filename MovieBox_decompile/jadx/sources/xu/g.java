package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class g implements f4.a {

    private final LinearLayout f75567a;

    public final Button f75568b;

    public final Button f75569c;

    public final AppCompatEditText f75570d;

    public final LinearLayout f75571e;

    public final RecyclerView f75572f;

    private g(LinearLayout linearLayout, Button button, Button button2, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, RecyclerView recyclerView) {
        this.f75567a = linearLayout;
        this.f75568b = button;
        this.f75569c = button2;
        this.f75570d = appCompatEditText;
        this.f75571e = linearLayout2;
        this.f75572f = recyclerView;
    }

    public static g a(View view) {
        int i10 = R$id.btnCustomInformation;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnReset;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.f54590et;
                AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                if (appCompatEditText != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i10 = R$id.f54593rv;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        return new g(linearLayout, button, button2, appCompatEditText, linearLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_mcc, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75567a;
    }
}
