package androidx.work;

import android.app.Notification;

public final class e {

    private final int f15132a;

    private final int f15133b;

    private final Notification f15134c;

    public e(int i10, Notification notification, int i11) {
        this.f15132a = i10;
        this.f15134c = notification;
        this.f15133b = i11;
    }

    public int a() {
        return this.f15133b;
    }

    public Notification b() {
        return this.f15134c;
    }

    public int c() {
        return this.f15132a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f15132a == eVar.f15132a && this.f15133b == eVar.f15133b) {
            return this.f15134c.equals(eVar.f15134c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f15132a * 31) + this.f15133b) * 31) + this.f15134c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f15132a + ", mForegroundServiceType=" + this.f15133b + ", mNotification=" + this.f15134c + '}';
    }
}
