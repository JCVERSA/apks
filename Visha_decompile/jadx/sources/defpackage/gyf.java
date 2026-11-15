package defpackage;

import android.content.Context;
import java.util.ArrayList;

public final class gyf implements b1g, e0g {
    public final hmh b;

    public gyf(Context context, hmh hmhVar, paf pafVar) {
        this.b = hmhVar;
    }

    @Override
    public final void b(Context context) {
    }

    @Override
    public final void k(Context context) {
    }

    @Override
    public final void n(Context context) {
    }

    @Override
    public final void zzt() {
        qaf qafVar = this.b.d0;
        if (qafVar == null || !qafVar.a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String str = qafVar.b;
        if (str.isEmpty()) {
            return;
        }
        arrayList.add(str);
    }
}
