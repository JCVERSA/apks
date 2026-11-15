package d0;

import android.view.KeyEvent;

public abstract class d {
    public static final long a(KeyEvent keyEvent) {
        return f.a(keyEvent.getKeyCode());
    }

    public static final int b(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            return action != 1 ? c.f58831a.c() : c.f58831a.b();
        }
        return c.f58831a.a();
    }

    public static final boolean c(KeyEvent keyEvent) {
        return keyEvent.isCtrlPressed();
    }

    public static final boolean d(KeyEvent keyEvent) {
        return keyEvent.isShiftPressed();
    }
}
