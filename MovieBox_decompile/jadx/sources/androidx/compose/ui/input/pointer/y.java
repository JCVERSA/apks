package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;

public final class y {

    private final long f4765a;

    private final List f4766b;

    private final MotionEvent f4767c;

    public y(long j10, List list, MotionEvent motionEvent) {
        this.f4765a = j10;
        this.f4766b = list;
        this.f4767c = motionEvent;
    }

    public final MotionEvent a() {
        return this.f4767c;
    }

    public final List b() {
        return this.f4766b;
    }
}
