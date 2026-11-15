package defpackage;

import android.view.View;

public class ro0 extends vfd {
    @Override
    public int d(b bVar, View view) {
        if (view == null || bVar == null || !view.getGlobalVisibleRect(this.a)) {
            return 0;
        }
        long jHeight = ((long) this.a.height()) * ((long) this.a.width());
        long height = ((long) view.getHeight()) * ((long) view.getWidth());
        this.b = this.a.width() + "*" + this.a.height();
        if (height <= 0) {
            return 0;
        }
        return (int) ((jHeight * 100) / height);
    }
}
