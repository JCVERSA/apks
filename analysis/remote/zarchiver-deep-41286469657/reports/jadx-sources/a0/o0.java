package a0;

import android.content.ClipData;
import java.util.ArrayList;
import ru.zdevs.zarchiver.ZApp;

public final class o0 extends w0.c {

    public final ClipData f78e;

    public o0(int i2, ClipData clipData) {
        this.f78e = clipData;
    }

    @Override
    public final w0.a.b f() throws Throwable {
        ZApp zApp = ZApp.f1434c;
        if (zApp == null) {
            return null;
        }
        int itemCount = this.f78e.getItemCount();
        ArrayList arrayList = new ArrayList(itemCount);
        for (int i2 = 0; i2 < itemCount; i2++) {
            String strD = v0.f.d(zApp, this.f78e.getItemAt(i2).getUri());
            if (strD != null) {
                String[] strArrA = x0.g.a(strD);
                if (strArrA != null && n0.i.b(strArrA)) {
                    strD = n0.i.a(strD, strArrA[2]);
                }
                arrayList.add(new h0.h("file", strD));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new a0(arrayList);
    }

    @Override
    public final int j() {
        return 14;
    }
}
