package a0;

import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.ui.text.ExSearchView;

public final class e implements ExSearchView.c {

    public final ZArchiver f27a;

    public e(ZArchiver zArchiver) {
        this.f27a = zArchiver;
    }

    @Override
    public final void a(String str, String[] strArr) {
        ZArchiver zArchiver = this.f27a;
        zArchiver.P(zArchiver.f1445h.f1685e, str, strArr, false);
    }
}
