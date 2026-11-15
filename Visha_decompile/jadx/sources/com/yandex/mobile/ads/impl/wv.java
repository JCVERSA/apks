package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;

public final class wv {
    public static void a(@Nullable tv tvVar) {
        if (tvVar != null) {
            try {
                tvVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
