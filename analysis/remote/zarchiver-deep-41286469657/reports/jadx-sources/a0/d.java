package a0;

import android.view.View;
import ru.zdevs.zarchiver.ZArchiver;

public final class d implements View.OnClickListener {

    public final ZArchiver f25a;

    public d(ZArchiver zArchiver) {
        this.f25a = zArchiver;
    }

    @Override
    public final void onClick(View view) {
        ZArchiver zArchiver = this.f25a;
        zArchiver.f1449l.setVisibility(0);
        ru.zdevs.zarchiver.b bVarC = zArchiver.f1445h.c();
        if (bVarC.i()) {
            return;
        }
        zArchiver.P(bVarC.f1652b, "", null, true);
    }
}
