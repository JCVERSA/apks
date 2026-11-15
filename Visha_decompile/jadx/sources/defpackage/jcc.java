package defpackage;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;

public class jcc extends GestureDetector {
    public a a;

    public static class a extends GestureDetector.SimpleOnGestureListener {
        public boolean b = false;

        public boolean a() {
            return this.b;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.b = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public jcc(Context context) {
        this(context, new a());
    }

    public boolean a() {
        return this.a.a();
    }

    public jcc(Context context, a aVar) {
        super(context, aVar);
        this.a = aVar;
        setIsLongpressEnabled(false);
    }
}
