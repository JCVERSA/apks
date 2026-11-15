package lj;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.Intrinsics;
import zg.h;

public abstract class a {
    public static final int a(float f10) {
        h hVar = h.f76787a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return hVar.a(applicationA, f10);
    }

    public static final int b(int i10) {
        h hVar = h.f76787a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return hVar.a(applicationA, i10);
    }
}
