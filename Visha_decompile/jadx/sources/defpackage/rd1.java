package defpackage;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.transformer.CompositionPlayer;

public final class rd1 implements SimpleBasePlayer.PositionSupplier {
    public final CompositionPlayer a;

    public rd1(CompositionPlayer compositionPlayer) {
        this.a = compositionPlayer;
    }

    @Override
    public final long get() {
        return this.a.getBufferedPositionMs();
    }
}
