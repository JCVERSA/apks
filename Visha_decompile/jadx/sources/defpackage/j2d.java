package defpackage;

import android.content.Context;
import android.widget.Scroller;

public class j2d extends Scroller {
    public int a;
    public boolean b;

    public j2d(Context context) {
        super(context);
        this.a = 800;
    }

    public int a() {
        return this.a;
    }

    public void b(int i) {
        this.a = i;
    }

    public void c(boolean z) {
        this.b = z;
    }

    @Override
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, this.b ? 0 : this.a);
    }

    @Override
    public void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, this.b ? 0 : this.a);
    }
}
