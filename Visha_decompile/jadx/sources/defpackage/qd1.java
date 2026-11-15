package defpackage;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.transformer.CompositionPlayer;

public final class qd1 implements SimpleBasePlayer.PositionSupplier {
    public final CompositionPlayer a;

    public qd1(CompositionPlayer compositionPlayer) {
        this.a = compositionPlayer;
    }

    @Override
    public final long get() {
        return this.a.getContentPositionMs();
    }
}
