package defpackage;

import com.transsion.audio.fragments.AudioMainFragment;

public final class cs implements Runnable {
    public final AudioMainFragment b;

    public cs(AudioMainFragment audioMainFragment) {
        this.b = audioMainFragment;
    }

    @Override
    public final void run() {
        this.b.t1();
    }
}
