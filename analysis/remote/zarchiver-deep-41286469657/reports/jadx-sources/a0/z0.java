package a0;

import android.view.View;
import ru.zdevs.zarchiver.ZSelectFile;

public final class z0 implements View.OnClickListener {

    public final ZSelectFile f149a;

    public z0(ZSelectFile zSelectFile) {
        this.f149a = zSelectFile;
    }

    @Override
    public final void onClick(View view) {
        ZSelectFile zSelectFile = this.f149a;
        zSelectFile.f1486l.setVisibility(0);
        if (zSelectFile.f1480f.i()) {
            return;
        }
        ZSelectFile.u(zSelectFile, "", null, true);
    }
}
