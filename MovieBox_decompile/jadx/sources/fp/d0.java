package fp;

import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.tabs.TabLayout;
import com.transsion.room.R$id;

public final class d0 implements f4.a {

    private final LinearLayoutCompat f60314a;

    public final View f60315b;

    public final LinearLayoutCompat f60316c;

    public final TabLayout f60317d;

    private d0(LinearLayoutCompat linearLayoutCompat, View view, LinearLayoutCompat linearLayoutCompat2, TabLayout tabLayout) {
        this.f60314a = linearLayoutCompat;
        this.f60315b = view;
        this.f60316c = linearLayoutCompat2;
        this.f60317d = tabLayout;
    }

    public static d0 a(View view) {
        int i10 = R$id.divider;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
            int i11 = R$id.tab_room;
            TabLayout tabLayout = (TabLayout) f4.b.a(view, i11);
            if (tabLayout != null) {
                return new d0(linearLayoutCompat, viewA, linearLayoutCompat, tabLayout);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f60314a;
    }
}
