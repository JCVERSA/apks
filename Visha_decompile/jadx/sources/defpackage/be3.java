package defpackage;

import androidx.core.app.NotificationCompat;

public abstract class be3 {
    public final StringBuilder c = new StringBuilder();

    public final void A(String str, String str2) {
        y45.j(str, NotificationCompat.CATEGORY_EVENT);
        y45.j(str2, "message");
        if (this.c.length() > 0) {
            this.c.append(", ");
        }
        this.c.append(str + " (" + str2 + ')');
    }

    public final String B() {
        StringBuilder sb = this.c;
        if (sb.length() <= 0) {
            return null;
        }
        String string = sb.toString();
        c1a.m(sb);
        return string;
    }
}
