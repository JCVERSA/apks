package a0;

import ru.zdevs.zarchiver.ZSelectFile;
import ru.zdevs.zarchiver.ui.text.ExSearchView;

public final class a1 implements ExSearchView.c {

    public final ZSelectFile f4a;

    public a1(ZSelectFile zSelectFile) {
        this.f4a = zSelectFile;
    }

    @Override
    public final void a(String str, String[] strArr) {
        ZSelectFile.u(this.f4a, str, strArr, false);
    }
}
