package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzcau;

public final class sgf {
    public final Context a;
    public final chf b;
    public final ViewGroup c;
    public final smg d;
    public zzcau e;

    public sgf(Context context, ViewGroup viewGroup, ejf ejfVar, smg smgVar) {
        this.a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.c = viewGroup;
        this.b = ejfVar;
        this.e = null;
        this.d = smgVar;
    }

    public final zzcau a() {
        return this.e;
    }

    public final Integer b() {
        zzcau zzcauVar = this.e;
        if (zzcauVar != null) {
            return zzcauVar.zzl();
        }
        return null;
    }

    public final void c(int i, int i2, int i3, int i4) {
        wd8.e("The underlay may only be modified from the UI thread.");
        zzcau zzcauVar = this.e;
        if (zzcauVar != null) {
            zzcauVar.zzF(i, i2, i3, i4);
        }
    }

    public final void d(int i, int i2, int i3, int i4, int i5, boolean z, bhf bhfVar) {
        if (this.e != null) {
            return;
        }
        chf chfVar = this.b;
        iye.a(chfVar.zzl().a(), chfVar.zzk(), "vpr2");
        zzcau zzcauVar = new zzcau(this.a, chfVar, i5, z, chfVar.zzl().a(), bhfVar, this.d);
        this.e = zzcauVar;
        this.c.addView(zzcauVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.e.zzF(i, i2, i3, i4);
        chfVar.zzz(false);
    }

    public final void e() {
        wd8.e("onDestroy must be called from the UI thread.");
        zzcau zzcauVar = this.e;
        if (zzcauVar != null) {
            zzcauVar.zzq();
            this.c.removeView(this.e);
            this.e = null;
        }
    }

    public final void f() {
        wd8.e("onPause must be called from the UI thread.");
        zzcau zzcauVar = this.e;
        if (zzcauVar != null) {
            zzcauVar.zzu();
        }
    }

    public final void g(int i) {
        zzcau zzcauVar = this.e;
        if (zzcauVar != null) {
            zzcauVar.zzC(i);
        }
    }
}
