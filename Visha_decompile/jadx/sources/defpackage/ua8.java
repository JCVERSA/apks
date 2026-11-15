package defpackage;

import com.transsion.magicmovie.fragments.PlayerMainFragment;

public final class ua8 implements Runnable {
    public final PlayerMainFragment b;

    public ua8(PlayerMainFragment playerMainFragment) {
        this.b = playerMainFragment;
    }

    @Override
    public final void run() {
        this.b.W0();
    }
}
