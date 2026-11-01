package q0;

import android.content.res.Resources;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class h {

    public final int f1414a;

    public h(int i2) {
        this.f1414a = i2;
    }

    public final String toString() {
        ZApp zApp = ZApp.f1434c;
        if (zApp == null) {
            return "";
        }
        if (this.f1414a == 0) {
            return zApp.getString(R.string.MES_EMPTY);
        }
        Resources resources = zApp.getResources();
        int i2 = this.f1414a;
        return resources.getQuantityString(R.plurals.FINFO_ITEM_COUNT, i2, Integer.valueOf(i2));
    }
}
