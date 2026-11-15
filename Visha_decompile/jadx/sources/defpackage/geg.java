package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.gms.internal.ads.zzdim;

public final class geg implements GestureDetector.OnGestureListener {
    public final zcg b;
    public final zzdim c;

    public geg(zcg zcgVar, zzdim zzdimVar) {
        this.b = zcgVar;
        this.c = zzdimVar;
    }

    @Override
    public final boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    @Override
    public final synchronized boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int y;
        try {
            zcg zcgVar = this.b;
            if (zcgVar != null) {
                int i = -1;
                if (Math.abs(f) > Math.abs(f2)) {
                    if (f > 0.0f) {
                        y = (int) (((motionEvent2.getX() - motionEvent.getX()) / f) * 1000.0f);
                        i = 1;
                    } else if (f < 0.0f) {
                        y = (int) (((motionEvent2.getX() - motionEvent.getX()) / f) * 1000.0f);
                        i = 2;
                    } else {
                        y = 0;
                    }
                } else if (f2 > 0.0f) {
                    y = (int) (((motionEvent2.getY() - motionEvent.getY()) / f2) * 1000.0f);
                    i = 8;
                } else if (f2 < 0.0f) {
                    y = (int) (((motionEvent2.getY() - motionEvent.getY()) / f2) * 1000.0f);
                    i = 4;
                } else {
                    y = 0;
                }
                if (i == zcgVar.I()) {
                    zcgVar.m(this.c.zzr(), y);
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void onLongPress(MotionEvent motionEvent) {
    }

    @Override
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override
    public final synchronized boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
