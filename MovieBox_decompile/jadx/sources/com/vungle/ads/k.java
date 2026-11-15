package com.vungle.ads;

import android.content.Context;

public interface k extends com.vungle.ads.a {

    public static final class a {
        public static void play$default(k kVar, Context context, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: play");
            }
            if ((i10 & 1) != 0) {
                context = null;
            }
            kVar.play(context);
        }
    }

    @Override
    Boolean canPlayAd();

    @Override
    void load(String str);

    void play(Context context);
}
