package a0;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.ZSelectFile;

public final class c1 implements AdapterView.OnItemClickListener {

    public final ZSelectFile f24a;

    public c1(ZSelectFile zSelectFile) {
        this.f24a = zSelectFile;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (adapterView == null) {
            return;
        }
        h0.h hVar = new h0.h(((c0.e) adapterView.getItemAtPosition(i2)).f411c);
        int i3 = ZSelectFile.f1479n;
        this.f24a.y(null, hVar, false);
    }
}
