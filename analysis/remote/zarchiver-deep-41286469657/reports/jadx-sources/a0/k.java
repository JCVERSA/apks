package a0;

import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu;

public final class k implements FloatingActionMenu.c {

    public final ZArchiver f58a;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            k.this.f58a.f1450m.setMenuState(false);
        }
    }

    public k(ZArchiver zArchiver) {
        this.f58a = zArchiver;
    }

    @Override
    public final void a(boolean z2) {
        View viewFindViewById = this.f58a.findViewById(R.id.ibActionBg);
        if (z2) {
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new a());
        } else {
            viewFindViewById.setVisibility(8);
            viewFindViewById.setOnClickListener(null);
        }
    }
}
