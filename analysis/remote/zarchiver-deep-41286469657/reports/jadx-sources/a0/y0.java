package a0;

import android.widget.SearchView;
import ru.zdevs.zarchiver.ZSelectFile;

public final class y0 implements SearchView.OnCloseListener {

    public final ZSelectFile f146a;

    public y0(ZSelectFile zSelectFile) {
        this.f146a = zSelectFile;
    }

    @Override
    public final boolean onClose() {
        ZSelectFile zSelectFile = this.f146a;
        if (zSelectFile.f1480f.i()) {
            zSelectFile.A(false, true);
        }
        zSelectFile.f1486l.setVisibility(v0.b.i(zSelectFile) ? 8 : 0);
        return false;
    }
}
