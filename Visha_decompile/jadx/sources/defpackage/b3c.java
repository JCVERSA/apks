package defpackage;

import com.transsion.magicmovie.activity.VideoPlayerMainActivity;

public final class b3c implements Runnable {
    public final VideoPlayerMainActivity b;

    public b3c(VideoPlayerMainActivity videoPlayerMainActivity) {
        this.b = videoPlayerMainActivity;
    }

    @Override
    public final void run() {
        this.b.updatePredictiveBackState();
    }
}
