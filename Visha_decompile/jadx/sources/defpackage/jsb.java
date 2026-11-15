package defpackage;

import com.transsion.magicvideo.fragments.VideoMainFragment;

public final class jsb implements Runnable {
    public final VideoMainFragment b;

    public jsb(VideoMainFragment videoMainFragment) {
        this.b = videoMainFragment;
    }

    @Override
    public final void run() {
        this.b.L1();
    }
}
