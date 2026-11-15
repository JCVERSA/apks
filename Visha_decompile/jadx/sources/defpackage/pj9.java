package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

public final class pj9 implements ListenerSet.Event {
    @Override
    public final void invoke(Object obj) {
        ((Player.Listener) obj).onRenderedFirstFrame();
    }
}
