package gf;

import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class d implements e {

    public o0 f60983a;

    private final Lazy f60984b;

    public e f60985c;

    private f f60986d;

    private g f60987e;

    public d(o0 pb2) {
        Intrinsics.h(pb2, "pb");
        this.f60983a = pb2;
        this.f60984b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return d.e();
            }
        });
        this.f60986d = new f(this.f60983a, this);
        this.f60987e = new g(this.f60983a, this);
        this.f60986d = new f(this.f60983a, this);
        this.f60987e = new g(this.f60983a, this);
    }

    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("kv_permission_x");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    @Override
    public f b() {
        return this.f60986d;
    }

    public final MMKV d() {
        return (MMKV) this.f60984b.getValue();
    }

    @Override
    public void finish() {
        e eVar = this.f60985c;
        if (eVar != null) {
            eVar.request();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f60983a.f61037k);
        arrayList.addAll(this.f60983a.f61038l);
        arrayList.addAll(this.f60983a.f61035i);
        if (this.f60983a.F()) {
            if (cf.c.f16930a.f(this.f60983a.m(), "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                this.f60983a.f61036j.add("android.permission.ACCESS_BACKGROUND_LOCATION");
            } else {
                arrayList.add("android.permission.ACCESS_BACKGROUND_LOCATION");
            }
        }
        if (this.f60983a.L() && this.f60983a.p() >= 23) {
            if (Settings.canDrawOverlays(this.f60983a.m())) {
                this.f60983a.f61036j.add("android.permission.SYSTEM_ALERT_WINDOW");
            } else {
                arrayList.add("android.permission.SYSTEM_ALERT_WINDOW");
            }
        }
        if (this.f60983a.M() && this.f60983a.p() >= 23) {
            if (Settings.System.canWrite(this.f60983a.m())) {
                this.f60983a.f61036j.add("android.permission.WRITE_SETTINGS");
            } else {
                arrayList.add("android.permission.WRITE_SETTINGS");
            }
        }
        if (this.f60983a.I()) {
            if (Build.VERSION.SDK_INT < 30 || !Environment.isExternalStorageManager()) {
                arrayList.add("android.permission.MANAGE_EXTERNAL_STORAGE");
            } else {
                this.f60983a.f61036j.add("android.permission.MANAGE_EXTERNAL_STORAGE");
            }
        }
        if (this.f60983a.H()) {
            if (Build.VERSION.SDK_INT < 26 || this.f60983a.p() < 26 || !this.f60983a.m().getPackageManager().canRequestPackageInstalls()) {
                arrayList.add("android.permission.REQUEST_INSTALL_PACKAGES");
            } else {
                this.f60983a.f61036j.add("android.permission.REQUEST_INSTALL_PACKAGES");
            }
        }
        if (this.f60983a.J()) {
            if (cf.c.f16930a.b(this.f60983a.m())) {
                this.f60983a.f61036j.add("android.permission.POST_NOTIFICATIONS");
            } else {
                arrayList.add("android.permission.POST_NOTIFICATIONS");
            }
        }
        if (this.f60983a.K()) {
            if (cf.c.f16930a.c(this.f60983a.m())) {
                this.f60983a.f61036j.add("android.permission.PICTURE_IN_PICTURE");
            } else {
                arrayList.add("android.permission.PICTURE_IN_PICTURE");
            }
        }
        if (this.f60983a.G()) {
            if (cf.c.f16930a.f(this.f60983a.m(), "android.permission.BODY_SENSORS_BACKGROUND")) {
                this.f60983a.f61036j.add("android.permission.BODY_SENSORS_BACKGROUND");
            } else {
                arrayList.add("android.permission.BODY_SENSORS_BACKGROUND");
            }
        }
        df.c cVar = this.f60983a.f61042p;
        if (cVar != null) {
            Intrinsics.e(cVar);
            cVar.a(arrayList.isEmpty(), new ArrayList(this.f60983a.f61036j), arrayList);
        }
        this.f60983a.j();
    }
}
