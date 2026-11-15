package defpackage;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public abstract class b8f {
    public static void a(IObjectWrapper iObjectWrapper, Throwable th, String str) {
        uaf.c((Context) ObjectWrapper.unwrap(iObjectWrapper)).a(th, str, ((Double) i0f.f.e()).floatValue());
    }
}
