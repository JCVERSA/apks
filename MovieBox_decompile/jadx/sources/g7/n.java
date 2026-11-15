package g7;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;

public class n extends GestureDetector {

    private a f60715a;

    public static class a extends GestureDetector.SimpleOnGestureListener {

        boolean f60716a = false;

        boolean a() {
            return this.f60716a;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f60716a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public n(Context context) {
        this(context, new a());
    }

    public boolean a() {
        return this.f60715a.a();
    }

    private n(Context context, a aVar) {
        super(context, aVar);
        this.f60715a = aVar;
        setIsLongpressEnabled(false);
    }
}
