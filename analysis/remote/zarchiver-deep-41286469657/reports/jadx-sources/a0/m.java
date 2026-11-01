package a0;

import android.widget.SearchView;
import ru.zdevs.zarchiver.ZArchiver;

public final class m implements SearchView.OnCloseListener {

    public final ZArchiver f64a;

    public m(ZArchiver zArchiver) {
        this.f64a = zArchiver;
    }

    @Override
    public final boolean onClose() {
        ZArchiver zArchiver = this.f64a;
        ru.zdevs.zarchiver.b bVarC = zArchiver.f1445h.c();
        if (bVarC.i()) {
            zArchiver.Q(bVarC.f1652b, false, true);
        }
        zArchiver.f1449l.setVisibility(v0.b.i(zArchiver) ? 8 : 0);
        return false;
    }
}
