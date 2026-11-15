package tu;

import android.content.Context;
import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.Intrinsics;

public final class i {

    public static final h f72841b = new h();

    public static volatile i f72842c;

    public final MMKV f72843a;

    public i(Context context) {
        try {
            MMKV.C(context);
            this.f72843a = MMKV.o();
        } catch (Throwable unused) {
        }
    }

    public final String a(String key, String defaultValue) {
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        MMKV mmkv = this.f72843a;
        String strL = mmkv != null ? mmkv.l(key, defaultValue) : null;
        return strL == null ? defaultValue : strL;
    }

    public final void b(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        MMKV mmkv = this.f72843a;
        if (mmkv != null) {
            mmkv.v(key, value);
        }
    }
}
