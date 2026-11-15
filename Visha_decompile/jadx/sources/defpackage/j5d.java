package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.transsion.athena.data.TrackData;

public abstract class j5d {
    public Context b;
    public Handler c;

    public j5d(Context context) {
        this.b = context;
    }

    public void a() {
    }

    public abstract void b(Message message, long j);

    public abstract void c(Runnable runnable);

    public abstract void d(Runnable runnable, long j);

    public abstract void e(String str, TrackData trackData, long j);

    public Handler f() {
        return this.c;
    }

    public void g() {
    }
}
