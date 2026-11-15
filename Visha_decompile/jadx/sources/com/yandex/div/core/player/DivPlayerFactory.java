package com.yandex.div.core.player;

import android.content.Context;
import com.yandex.div2.DivVideoScale;
import defpackage.lo2;
import defpackage.mo2;
import defpackage.y45;
import java.util.List;

public interface DivPlayerFactory {
    public static final a a = a.a;
    public static final DivPlayerFactory b = new DivPlayerFactory() {

        public static final class a implements com.yandex.div.core.player.a {
        }

        @Override
        public a c(List list, lo2 lo2Var) {
            y45.j(list, "src");
            y45.j(lo2Var, "config");
            return new a();
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.yandex.div.core.player.DivPlayerFactory$Companion$STUB$1$makePlayerView$1] */
        @Override
        public DivPlayerFactory$Companion$STUB$1$makePlayerView$1 b(final Context context) {
            y45.j(context, "context");
            return new DivPlayerView(context) {
                @Override
                public void attach(a aVar) {
                    super.attach(aVar);
                }

                @Override
                public void detach() {
                    super.detach();
                }

                @Override
                public a getAttachedPlayer() {
                    return super.getAttachedPlayer();
                }

                @Override
                public void setScale(DivVideoScale divVideoScale) {
                    super.setScale(divVideoScale);
                }

                @Override
                public void setVisibleOnScreen(boolean z) {
                    super.setVisibleOnScreen(z);
                }
            };
        }
    };

    public static final class a {
        public static final a a = new a();
    }

    default mo2 a() {
        return mo2.b;
    }

    DivPlayerView b(Context context);

    com.yandex.div.core.player.a c(List list, lo2 lo2Var);
}
