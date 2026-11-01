package b1;

import ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu;

public final class b implements Runnable {

    public final boolean f306a;

    public final FloatingActionMenu f307b;

    public b(FloatingActionMenu floatingActionMenu, boolean z2) {
        this.f307b = floatingActionMenu;
        this.f306a = z2;
    }

    @Override
    public final void run() {
        int i2 = FloatingActionMenu.f1785t;
        this.f307b.b(this.f306a);
    }
}
