package defpackage;

import com.yandex.div.core.player.a;
import com.yandex.div2.DivVideoScale;

public interface ju2 {
    default void attach(a aVar) {
        y45.j(aVar, "player");
    }

    default void detach() {
    }

    default a getAttachedPlayer() {
        return null;
    }

    default void setScale(DivVideoScale divVideoScale) {
        y45.j(divVideoScale, "videoScale");
    }

    default void setVisibleOnScreen(boolean z) {
    }
}
