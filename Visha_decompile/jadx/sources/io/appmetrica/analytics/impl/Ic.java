package io.appmetrica.analytics.impl;

import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class Ic {
    public final C3022ym a;
    public final C3022ym b;
    public final D4 c;
    public final PublicLogger d;
    public final String e;

    public Ic(String str, PublicLogger publicLogger) {
        this(new D4(30), new C3022ym(50, str.concat("map key"), publicLogger), new C3022ym(FlacTagCreator.DEFAULT_PADDING, str.concat("map value"), publicLogger), str, publicLogger);
    }

    public Ic(D4 d4, C3022ym c3022ym, C3022ym c3022ym2, String str, PublicLogger publicLogger) {
        this.c = d4;
        this.a = c3022ym;
        this.b = c3022ym2;
        this.e = str;
        this.d = publicLogger;
    }
}
