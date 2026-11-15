package xu;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.usercenter.R$id;

public final class b0 implements f4.a {

    private final LinearLayoutCompat f75502a;

    public final RecyclerView f75503b;

    public final AppCompatTextView f75504c;

    private b0(LinearLayoutCompat linearLayoutCompat, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f75502a = linearLayoutCompat;
        this.f75503b = recyclerView;
        this.f75504c = appCompatTextView;
    }

    public static b0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_cancel;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new b0((LinearLayoutCompat) view, recyclerView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75502a;
    }
}
