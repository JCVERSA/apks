package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class h {

    public static final h f65337a = new h();

    private static final ArrayDeque f65338b = new ArrayDeque();

    private static int f65339c;

    private static final int f65340d;

    static {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.g(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            objM453constructorimpl = Result.m453constructorimpl(StringsKt.v(property));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = null;
        }
        Integer num = (Integer) objM453constructorimpl;
        f65340d = num != null ? num.intValue() : 1048576;
    }

    private h() {
    }

    public final void a(char[] array) {
        Intrinsics.h(array, "array");
        synchronized (this) {
            try {
                int i10 = f65339c;
                if (array.length + i10 < f65340d) {
                    f65339c = i10 + array.length;
                    f65338b.addLast(array);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final char[] b() {
        char[] cArr;
        synchronized (this) {
            cArr = (char[]) f65338b.q();
            if (cArr != null) {
                f65339c -= cArr.length;
            } else {
                cArr = null;
            }
        }
        return cArr == null ? new char[128] : cArr;
    }
}
