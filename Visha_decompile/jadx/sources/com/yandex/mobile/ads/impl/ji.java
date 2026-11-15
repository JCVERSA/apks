package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class ji {
    public final int a = 0;
    public final float b = 0.0f;

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ji.class != obj.getClass()) {
            return false;
        }
        ji jiVar = (ji) obj;
        return this.a == jiVar.a && Float.compare(jiVar.b, this.b) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.b) + ((this.a + 527) * 31);
    }
}
