package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class m implements f4.a {

    private final LinearLayoutCompat f75689a;

    public final TextView f75690b;

    public final TextView f75691c;

    public final TextView f75692d;

    private m(LinearLayoutCompat linearLayoutCompat, TextView textView, TextView textView2, TextView textView3) {
        this.f75689a = linearLayoutCompat;
        this.f75690b = textView;
        this.f75691c = textView2;
        this.f75692d = textView3;
    }

    public static m a(View view) {
        int i10 = R$id.btnEdit;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.btnFollowers;
            TextView textView2 = (TextView) f4.b.a(view, i10);
            if (textView2 != null) {
                i10 = R$id.btnFollowing;
                TextView textView3 = (TextView) f4.b.a(view, i10);
                if (textView3 != null) {
                    return new m((LinearLayoutCompat) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_user_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75689a;
    }
}
