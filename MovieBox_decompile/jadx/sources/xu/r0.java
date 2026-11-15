package xu;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;

public final class r0 implements f4.a {

    private final ConstraintLayout f75741a;

    public final TextView f75742b;

    public final TextView f75743c;

    public final TextView f75744d;

    private r0(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        this.f75741a = constraintLayout;
        this.f75742b = textView;
        this.f75743c = textView2;
        this.f75744d = textView3;
    }

    public static r0 a(View view) {
        int i10 = R$id.tvDes;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.tvJump;
            TextView textView2 = (TextView) f4.b.a(view, i10);
            if (textView2 != null) {
                i10 = R$id.tvTitle;
                TextView textView3 = (TextView) f4.b.a(view, i10);
                if (textView3 != null) {
                    return new r0((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75741a;
    }
}
