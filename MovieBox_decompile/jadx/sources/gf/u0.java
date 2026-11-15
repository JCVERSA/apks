package gf;

import androidx.core.app.ActivityCompat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class u0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        HashSet hashSet = new HashSet(this.f60983a.f61036j);
        hashSet.addAll(permissions);
        if (hashSet.isEmpty()) {
            finish();
        } else {
            this.f60983a.y(hashSet, this);
        }
    }

    @Override
    public void request() {
        boolean zJ;
        ArrayList arrayList = new ArrayList();
        for (String str : this.f60983a.f61031e) {
            if (cf.c.f16930a.f(this.f60983a.m(), str)) {
                this.f60983a.f61036j.add(str);
            } else {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            finish();
            return;
        }
        o0 o0Var = this.f60983a;
        if (o0Var.f61033g) {
            o0Var.getClass();
            if (this.f60983a.f61043q != null) {
                if (arrayList.size() == 1) {
                    Object obj = arrayList.get(0);
                    Intrinsics.g(obj, "get(...)");
                    String str2 = (String) obj;
                    if (d().getBoolean(str2, false)) {
                        zJ = ActivityCompat.j(this.f60983a.m(), str2);
                    } else {
                        d().putBoolean(str2, true);
                        zJ = true;
                    }
                } else {
                    zJ = true;
                }
                o0 o0Var2 = this.f60983a;
                o0Var2.f61033g = false;
                o0Var2.f61037k.addAll(arrayList);
                this.f60983a.E(this);
                o0 o0Var3 = this.f60983a;
                df.b bVar = o0Var3.f61043q;
                if (bVar != null) {
                    Intrinsics.e(bVar);
                    bVar.a(b(), arrayList, true, !zJ);
                    return;
                } else {
                    o0Var3.getClass();
                    Intrinsics.e(null);
                    b();
                    throw null;
                }
            }
        }
        o0 o0Var4 = this.f60983a;
        o0Var4.y(o0Var4.f61031e, this);
    }
}
