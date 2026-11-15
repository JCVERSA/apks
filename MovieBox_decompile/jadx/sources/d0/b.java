package d0;

import android.view.KeyEvent;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final KeyEvent f58830a;

    private b(KeyEvent keyEvent) {
        this.f58830a = keyEvent;
    }

    public static final b a(KeyEvent keyEvent) {
        return new b(keyEvent);
    }

    public static boolean c(KeyEvent keyEvent, Object obj) {
        return (obj instanceof b) && Intrinsics.c(keyEvent, ((b) obj).f());
    }

    public static int d(KeyEvent keyEvent) {
        return keyEvent.hashCode();
    }

    public static String e(KeyEvent keyEvent) {
        return "KeyEvent(nativeKeyEvent=" + keyEvent + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f58830a, obj);
    }

    public final KeyEvent f() {
        return this.f58830a;
    }

    public int hashCode() {
        return d(this.f58830a);
    }

    public String toString() {
        return e(this.f58830a);
    }

    public static KeyEvent b(KeyEvent keyEvent) {
        return keyEvent;
    }
}
