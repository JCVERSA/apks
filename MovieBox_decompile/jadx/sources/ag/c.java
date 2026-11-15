package ag;

import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f353a = new c();

    private static MMKV f354b;

    private c() {
    }

    public final String a(String key, String defaultValue) {
        String string;
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        if (f354b == null) {
            f354b = MMKV.I("mmkv_net");
        }
        MMKV mmkv = f354b;
        return (mmkv == null || (string = mmkv.getString(key, defaultValue)) == null) ? defaultValue : string;
    }

    public final void b(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        if (f354b == null) {
            f354b = MMKV.I("mmkv_net");
        }
        MMKV mmkv = f354b;
        if (mmkv != null) {
            mmkv.putString(key, value);
        }
    }
}
