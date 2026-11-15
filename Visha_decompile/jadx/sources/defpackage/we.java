package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.measurement.b;
import java.util.List;
import java.util.Map;

public class we {
    public final b a;

    public interface a extends kti {
    }

    public we(b bVar) {
        this.a = bVar;
    }

    public static we k(Context context, String str, String str2, String str3, Bundle bundle) {
        return b.A(context, str, str2, str3, bundle).x();
    }

    public void a(String str) {
        this.a.N(str);
    }

    public void b(String str, String str2, Bundle bundle) {
        this.a.O(str, str2, bundle);
    }

    public void c(String str) {
        this.a.P(str);
    }

    public long d() {
        return this.a.v();
    }

    public String e() {
        return this.a.C();
    }

    public String f() {
        return this.a.E();
    }

    public List g(String str, String str2) {
        return this.a.I(str, str2);
    }

    public String h() {
        return this.a.F();
    }

    public String i() {
        return this.a.G();
    }

    public String j() {
        return this.a.H();
    }

    public int l(String str) {
        return this.a.u(str);
    }

    public Map m(String str, String str2, boolean z) {
        return this.a.J(str, str2, z);
    }

    public void n(String str, String str2, Bundle bundle) {
        this.a.R(str, str2, bundle);
    }

    public void o(Bundle bundle) {
        this.a.w(bundle, false);
    }

    public Bundle p(Bundle bundle) {
        return this.a.w(bundle, true);
    }

    public void q(Bundle bundle) {
        this.a.d(bundle);
    }

    public void r(Bundle bundle) {
        this.a.e(bundle);
    }

    public void registerOnMeasurementEventListener(@NonNull a aVar) {
        this.a.b(aVar);
    }

    public void s(Activity activity, String str, String str2) {
        this.a.g(activity, str, str2);
    }

    public void t(String str, String str2, Object obj) {
        this.a.l(str, str2, obj, true);
    }

    public void unregisterOnMeasurementEventListener(@NonNull a aVar) {
        this.a.m(aVar);
    }
}
