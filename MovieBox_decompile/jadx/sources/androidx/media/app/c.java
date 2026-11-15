package androidx.media.app;

import android.app.PendingIntent;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.o;

public class c extends NotificationCompat.p {

    MediaSessionCompat.Token f9457f;

    CharSequence f9458g;

    int f9459h;

    PendingIntent f9460i;

    int[] f9456e = null;

    boolean f9461j = false;

    @Override
    public void b(o oVar) {
        if (Build.VERSION.SDK_INT >= 34) {
            a.d(oVar.a(), a.b(b.a(a.a(), this.f9458g, this.f9459h, this.f9460i, Boolean.valueOf(this.f9461j)), this.f9456e, this.f9457f));
        } else {
            a.d(oVar.a(), a.b(a.a(), this.f9456e, this.f9457f));
        }
    }

    @Override
    public RemoteViews m(o oVar) {
        return null;
    }

    @Override
    public RemoteViews n(o oVar) {
        return null;
    }

    public c q(MediaSessionCompat.Token token) {
        this.f9457f = token;
        return this;
    }

    public c r(int... iArr) {
        this.f9456e = iArr;
        return this;
    }
}
