package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.internal.zza;
import com.google.android.gms.common.api.internal.zzd;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class tk5 {
    public final vk5 b;

    public tk5(vk5 vk5Var) {
        this.b = vk5Var;
    }

    public static vk5 c(sk5 sk5Var) {
        if (sk5Var.a()) {
            return zzd.u(sk5Var.d());
        }
        if (sk5Var.b()) {
            return zza.a(sk5Var.c());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    public static vk5 d(Activity activity) {
        return c(new sk5(activity));
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity b() {
        Activity activityN = this.b.n();
        wd8.l(activityN);
        return activityN;
    }

    public abstract void e(int i, int i2, Intent intent);

    public void f(Bundle bundle) {
    }

    public void g() {
    }

    public void h() {
    }

    public void i(Bundle bundle) {
    }

    public void j() {
    }

    public void k() {
    }
}
