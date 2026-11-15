package ij;

import com.transsion.baselib.utils.PlayMode;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.jvm.internal.Intrinsics;

public final class t {

    public static final t f62121a = new t();

    private t() {
    }

    private final PlayMode a() {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("change_play_mode_by_debug", "");
        for (PlayMode playMode : PlayMode.values()) {
            if (Intrinsics.c(playMode.getValue(), string)) {
                return playMode;
            }
        }
        PlayMode playMode2 = PlayMode.DOWNLOAD;
        ConfigBean configBeanC = cm.f.f17019c.a().c("play_mode", true);
        if (configBeanC == null) {
            return playMode2;
        }
        String value = configBeanC.getValue();
        return (!Intrinsics.c(value, "1") && Intrinsics.c(value, "2")) ? PlayMode.STREAM : playMode2;
    }

    public final boolean b() {
        return a() == PlayMode.STREAM;
    }

    public final void c(PlayMode playMode) {
        Intrinsics.h(playMode, "playMode");
        com.transsion.baselib.report.launch.b.f42221a.b().putString("change_play_mode_by_debug", playMode.getValue());
    }
}
