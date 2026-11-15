package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

@Deprecated
public final class CustomEventExtras {
    public final HashMap a = new HashMap();

    @Nullable
    public Object getExtra(@NonNull String str) {
        return this.a.get(str);
    }

    public void setExtra(@NonNull String str, @NonNull Object obj) {
        this.a.put(str, obj);
    }
}
