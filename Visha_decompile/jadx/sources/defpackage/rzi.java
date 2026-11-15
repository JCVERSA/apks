package defpackage;

import com.google.android.gms.internal.play_billing.zzjg;

public final class rzi {
    public final ozi a;

    public rzi(zzjg zzjgVar, Object obj, zzjg zzjgVar2, Object obj2) {
        this.a = new ozi(zzjgVar, "", zzjgVar2, obj2);
    }

    public static int b(ozi oziVar, Object obj, Object obj2) {
        return yci.a(oziVar.a, 1, obj) + yci.a(oziVar.c, 2, obj2);
    }

    public static rzi d(zzjg zzjgVar, Object obj, zzjg zzjgVar2, Object obj2) {
        return new rzi(zzjgVar, "", zzjgVar2, obj2);
    }

    public static void e(o4i o4iVar, ozi oziVar, Object obj, Object obj2) {
        yci.e(o4iVar, oziVar.a, 1, obj);
        yci.e(o4iVar, oziVar.c, 2, obj2);
    }

    public final int a(int i, Object obj, Object obj2) {
        ozi oziVar = this.a;
        int iW = o4i.w(i << 3);
        int iB = b(oziVar, obj, obj2);
        return iW + o4i.w(iB) + iB;
    }

    public final ozi c() {
        return this.a;
    }
}
