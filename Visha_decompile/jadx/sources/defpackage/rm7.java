package defpackage;

import android.os.SystemClock;
import android.util.Log;
import android.view.View;

public abstract class rm7 implements View.OnClickListener {
    public Long b = 0L;
    public Long c = 1000L;

    public void a(View view) {
        Log.d("CustomClickListener", "onFastClick");
    }

    public abstract void b(View view);

    @Override
    public void onClick(View view) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.b.longValue() > this.c.longValue()) {
            b(view);
            this.b = Long.valueOf(jElapsedRealtime);
        }
        a(view);
    }
}
