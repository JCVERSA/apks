package a0;

import android.view.View;
import ru.zdevs.zarchiver.ZSelectFile;

public final class d1 implements View.OnClickListener {

    public final ZSelectFile f26a;

    public d1(ZSelectFile zSelectFile) {
        this.f26a = zSelectFile;
    }

    @Override
    public final void onClick(View view) {
        ZSelectFile zSelectFile = this.f26a;
        d0.h listAdapter = zSelectFile.f1484j.getListAdapter();
        if (listAdapter != null) {
            zSelectFile.z(listAdapter.d());
        }
    }
}
