package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzu;

public final class cgj implements View.OnTouchListener {
    public final zzu b;

    public cgj(zzu zzuVar) {
        this.b = zzuVar;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzu zzuVar = this.b;
        if (zzuVar.zzh == null) {
            return false;
        }
        zzuVar.zzh.d(motionEvent);
        return false;
    }
}
