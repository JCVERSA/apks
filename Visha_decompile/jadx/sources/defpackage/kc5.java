package defpackage;

import com.squareup.moshi.j;
import com.transsion.cloud_drive.base.utils.jsonadapters.LocalDateTimeAdapter;
import com.transsion.cloud_drive.base.utils.jsonadapters.NothingJsonAdapter;

public final class kc5 {
    public static final kc5 a = new kc5();
    public static final j b;

    static {
        j jVarD = new j.a().a(new w12()).b(new LocalDateTimeAdapter()).b(new NothingJsonAdapter()).c(new zg5()).d();
        y45.i(jVarD, "build(...)");
        b = jVarD;
    }

    public final j a() {
        return b;
    }
}
