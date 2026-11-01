package a0;

import android.view.View;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu;

public final class i implements View.OnClickListener {

    public final ZArchiver f48a;

    public i(ZArchiver zArchiver) {
        this.f48a = zArchiver;
    }

    @Override
    public final void onClick(View view) {
        ZArchiver zArchiver = this.f48a;
        FloatingActionMenu floatingActionMenu = zArchiver.f1450m;
        if (floatingActionMenu == null) {
            return;
        }
        if (floatingActionMenu.f1790e > 2) {
            floatingActionMenu.e(!floatingActionMenu.d(), floatingActionMenu.f1795j);
            return;
        }
        if (zArchiver.f269b != null) {
            ru.zdevs.zarchiver.d dVar = zArchiver.f1445h;
            if (dVar.f1681a != 0) {
                if (dVar.f1683c.m(zArchiver, true)) {
                    zArchiver.f269b.finish();
                    return;
                }
                return;
            }
        }
        if (floatingActionMenu.getTag() != null) {
            zArchiver.D(((Integer) zArchiver.f1450m.getTag()).intValue());
        }
    }
}
