package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class a implements f4.a {

    private final LinearLayoutCompat f75481a;

    public final FrameLayout f75482b;

    public final LinearLayoutCompat f75483c;

    private a(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat2) {
        this.f75481a = linearLayoutCompat;
        this.f75482b = frameLayout;
        this.f75483c = linearLayoutCompat2;
    }

    public static a a(View view) {
        int i10 = R$id.flComments;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
        return new a(linearLayoutCompat, frameLayout, linearLayoutCompat);
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_dev, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75481a;
    }
}
