package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class c implements f4.a {

    private final LinearLayout f75515a;

    public final EditTextWithClear f75516b;

    public final EditTextWithClear f75517c;

    public final EditTextWithClear f75518d;

    public final TextView f75519e;

    public final TextView f75520f;

    private c(LinearLayout linearLayout, EditTextWithClear editTextWithClear, EditTextWithClear editTextWithClear2, EditTextWithClear editTextWithClear3, TextView textView, TextView textView2) {
        this.f75515a = linearLayout;
        this.f75516b = editTextWithClear;
        this.f75517c = editTextWithClear2;
        this.f75518d = editTextWithClear3;
        this.f75519e = textView;
        this.f75520f = textView2;
    }

    public static c a(View view) {
        int i10 = R$id.edDeeplink;
        EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
        if (editTextWithClear != null) {
            i10 = R$id.etAppId;
            EditTextWithClear editTextWithClear2 = (EditTextWithClear) f4.b.a(view, i10);
            if (editTextWithClear2 != null) {
                i10 = R$id.etSceneId;
                EditTextWithClear editTextWithClear3 = (EditTextWithClear) f4.b.a(view, i10);
                if (editTextWithClear3 != null) {
                    i10 = R$id.tvApiOpen;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        i10 = R$id.tvDpOpen;
                        TextView textView2 = (TextView) f4.b.a(view, i10);
                        if (textView2 != null) {
                            return new c((LinearLayout) view, editTextWithClear, editTextWithClear2, editTextWithClear3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_lab_miniapp_sdk, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75515a;
    }
}
