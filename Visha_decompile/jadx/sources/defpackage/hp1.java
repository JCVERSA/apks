package defpackage;

import android.view.View;

public class hp1 extends vfd {
    @Override
    public int d(b bVar, View view) {
        if (view == null || bVar == null || !view.getGlobalVisibleRect(this.a)) {
            return 2;
        }
        long jHeight = ((long) this.a.height()) * ((long) this.a.width());
        long height = ((long) view.getHeight()) * ((long) view.getWidth());
        this.b = this.a.width() + "*" + this.a.height();
        return (height > 0 && jHeight >= ((long) bVar.b)) ? 1 : 2;
    }
}
