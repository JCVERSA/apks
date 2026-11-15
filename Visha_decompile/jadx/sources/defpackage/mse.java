package defpackage;

import android.app.AppOpsManager$OnOpActiveChangedListener;

public final class mse implements AppOpsManager$OnOpActiveChangedListener {
    public final ose a;

    public mse(ose oseVar) {
        this.a = oseVar;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        if (z) {
            ose oseVar = this.a;
            oseVar.a = System.currentTimeMillis();
            oseVar.d = true;
        } else {
            ose oseVar2 = this.a;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (oseVar2.b > 0 && jCurrentTimeMillis >= oseVar2.b) {
                oseVar2.c = jCurrentTimeMillis - oseVar2.b;
            }
            oseVar2.d = false;
        }
    }
}
