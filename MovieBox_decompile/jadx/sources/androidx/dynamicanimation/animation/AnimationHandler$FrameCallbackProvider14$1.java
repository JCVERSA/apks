package androidx.dynamicanimation.animation;

import android.os.SystemClock;

class AnimationHandler$FrameCallbackProvider14$1 implements Runnable {
    final a.d this$0;

    AnimationHandler$FrameCallbackProvider14$1(a.d dVar) {
    }

    @Override
    public void run() {
        this.this$0.f8677b = SystemClock.uptimeMillis();
        this.this$0.f8676a.a();
    }
}
