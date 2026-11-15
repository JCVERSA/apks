package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzev;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfg;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbfs;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzbpj;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbpn;
import com.google.android.gms.internal.ads.zzdhp;
import java.util.Collections;
import java.util.List;

public final class ddg {
    public int a;
    public zzea b;
    public zzbfm c;
    public View d;
    public List e;
    public zzev g;
    public Bundle h;
    public ejf i;
    public ejf j;
    public ejf k;
    public fxg l;
    public im5 m;
    public eff n;
    public View o;
    public View p;
    public IObjectWrapper q;
    public double r;
    public zzbft s;
    public zzbft t;
    public String u;
    public float x;
    public String y;
    public final SimpleArrayMap v = new SimpleArrayMap();
    public final SimpleArrayMap w = new SimpleArrayMap();
    public List f = Collections.emptyList();

    public static ddg H(zzbpj zzbpjVar) {
        try {
            zzdhp zzdhpVarL = L(zzbpjVar.zzg(), null);
            zzbfm zzbfmVarZzh = zzbpjVar.zzh();
            View view = (View) N(zzbpjVar.zzj());
            String strZzo = zzbpjVar.zzo();
            List listZzr = zzbpjVar.zzr();
            String strZzm = zzbpjVar.zzm();
            Bundle bundleZzf = zzbpjVar.zzf();
            String strZzn = zzbpjVar.zzn();
            View view2 = (View) N(zzbpjVar.zzk());
            IObjectWrapper iObjectWrapperZzl = zzbpjVar.zzl();
            String strZzq = zzbpjVar.zzq();
            String strZzp = zzbpjVar.zzp();
            double dZze = zzbpjVar.zze();
            zzbft zzbftVarZzi = zzbpjVar.zzi();
            ddg ddgVar = new ddg();
            ddgVar.a = 2;
            ddgVar.b = zzdhpVarL;
            ddgVar.c = zzbfmVarZzh;
            ddgVar.d = view;
            ddgVar.z("headline", strZzo);
            ddgVar.e = listZzr;
            ddgVar.z(TtmlNode.TAG_BODY, strZzm);
            ddgVar.h = bundleZzf;
            ddgVar.z("call_to_action", strZzn);
            ddgVar.o = view2;
            ddgVar.q = iObjectWrapperZzl;
            ddgVar.z("store", strZzq);
            ddgVar.z("price", strZzp);
            ddgVar.r = dZze;
            ddgVar.s = zzbftVarZzi;
            return ddgVar;
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static ddg I(zzbpk zzbpkVar) {
        try {
            zzdhp zzdhpVarL = L(zzbpkVar.zzf(), null);
            zzbfm zzbfmVarZzg = zzbpkVar.zzg();
            View view = (View) N(zzbpkVar.zzi());
            String strZzo = zzbpkVar.zzo();
            List listZzp = zzbpkVar.zzp();
            String strZzm = zzbpkVar.zzm();
            Bundle bundleZze = zzbpkVar.zze();
            String strZzn = zzbpkVar.zzn();
            View view2 = (View) N(zzbpkVar.zzj());
            IObjectWrapper iObjectWrapperZzk = zzbpkVar.zzk();
            String strZzl = zzbpkVar.zzl();
            zzbft zzbftVarZzh = zzbpkVar.zzh();
            ddg ddgVar = new ddg();
            ddgVar.a = 1;
            ddgVar.b = zzdhpVarL;
            ddgVar.c = zzbfmVarZzg;
            ddgVar.d = view;
            ddgVar.z("headline", strZzo);
            ddgVar.e = listZzp;
            ddgVar.z(TtmlNode.TAG_BODY, strZzm);
            ddgVar.h = bundleZze;
            ddgVar.z("call_to_action", strZzn);
            ddgVar.o = view2;
            ddgVar.q = iObjectWrapperZzk;
            ddgVar.z("advertiser", strZzl);
            ddgVar.t = zzbftVarZzh;
            return ddgVar;
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    public static ddg J(zzbpj zzbpjVar) {
        try {
            return M(L(zzbpjVar.zzg(), null), zzbpjVar.zzh(), (View) N(zzbpjVar.zzj()), zzbpjVar.zzo(), zzbpjVar.zzr(), zzbpjVar.zzm(), zzbpjVar.zzf(), zzbpjVar.zzn(), (View) N(zzbpjVar.zzk()), zzbpjVar.zzl(), zzbpjVar.zzq(), zzbpjVar.zzp(), zzbpjVar.zze(), zzbpjVar.zzi(), null, 0.0f);
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static ddg K(zzbpk zzbpkVar) {
        try {
            return M(L(zzbpkVar.zzf(), null), zzbpkVar.zzg(), (View) N(zzbpkVar.zzi()), zzbpkVar.zzo(), zzbpkVar.zzp(), zzbpkVar.zzm(), zzbpkVar.zze(), zzbpkVar.zzn(), (View) N(zzbpkVar.zzj()), zzbpkVar.zzk(), null, null, -1.0d, zzbpkVar.zzh(), zzbpkVar.zzl(), 0.0f);
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    public static zzdhp L(zzea zzeaVar, zzbpn zzbpnVar) {
        if (zzeaVar == null) {
            return null;
        }
        return new zzdhp(zzeaVar, zzbpnVar);
    }

    public static ddg M(zzea zzeaVar, zzbfm zzbfmVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzbft zzbftVar, String str6, float f) {
        ddg ddgVar = new ddg();
        ddgVar.a = 6;
        ddgVar.b = zzeaVar;
        ddgVar.c = zzbfmVar;
        ddgVar.d = view;
        ddgVar.z("headline", str);
        ddgVar.e = list;
        ddgVar.z(TtmlNode.TAG_BODY, str2);
        ddgVar.h = bundle;
        ddgVar.z("call_to_action", str3);
        ddgVar.o = view2;
        ddgVar.q = iObjectWrapper;
        ddgVar.z("store", str4);
        ddgVar.z("price", str5);
        ddgVar.r = d;
        ddgVar.s = zzbftVar;
        ddgVar.z("advertiser", str6);
        ddgVar.r(f);
        return ddgVar;
    }

    public static Object N(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static ddg g0(zzbpn zzbpnVar) {
        try {
            return M(L(zzbpnVar.zzj(), zzbpnVar), zzbpnVar.zzk(), (View) N(zzbpnVar.zzm()), zzbpnVar.zzs(), zzbpnVar.zzv(), zzbpnVar.zzq(), zzbpnVar.zzi(), zzbpnVar.zzr(), (View) N(zzbpnVar.zzn()), zzbpnVar.zzo(), zzbpnVar.zzu(), zzbpnVar.zzt(), zzbpnVar.zze(), zzbpnVar.zzl(), zzbpnVar.zzp(), zzbpnVar.zzf());
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public final synchronized double A() {
        return this.r;
    }

    public final synchronized void B(int i) {
        this.a = i;
    }

    public final synchronized void C(zzea zzeaVar) {
        this.b = zzeaVar;
    }

    public final synchronized void D(View view) {
        this.o = view;
    }

    public final synchronized void E(ejf ejfVar) {
        this.i = ejfVar;
    }

    public final synchronized void F(View view) {
        this.p = view;
    }

    public final synchronized boolean G() {
        return this.j != null;
    }

    public final synchronized float O() {
        return this.x;
    }

    public final synchronized int P() {
        return this.a;
    }

    public final synchronized Bundle Q() {
        try {
            if (this.h == null) {
                this.h = new Bundle();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.h;
    }

    public final synchronized View R() {
        return this.d;
    }

    public final synchronized View S() {
        return this.o;
    }

    public final synchronized View T() {
        return this.p;
    }

    public final synchronized SimpleArrayMap U() {
        return this.v;
    }

    public final synchronized SimpleArrayMap V() {
        return this.w;
    }

    public final synchronized zzea W() {
        return this.b;
    }

    public final synchronized zzev X() {
        return this.g;
    }

    public final synchronized zzbfm Y() {
        return this.c;
    }

    public final zzbft Z() {
        List list = this.e;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Object obj = this.e.get(0);
        if (obj instanceof IBinder) {
            return zzbfs.zzg((IBinder) obj);
        }
        return null;
    }

    public final synchronized String a() {
        return this.u;
    }

    public final synchronized zzbft a0() {
        return this.s;
    }

    public final synchronized String b() {
        return f("headline");
    }

    public final synchronized zzbft b0() {
        return this.t;
    }

    public final synchronized String c() {
        return this.y;
    }

    public final synchronized eff c0() {
        return this.n;
    }

    public final synchronized String d() {
        return f("price");
    }

    public final synchronized ejf d0() {
        return this.j;
    }

    public final synchronized String e() {
        return f("store");
    }

    public final synchronized ejf e0() {
        return this.k;
    }

    public final synchronized String f(String str) {
        return (String) this.w.get(str);
    }

    public final synchronized ejf f0() {
        return this.i;
    }

    public final synchronized List g() {
        return this.e;
    }

    public final synchronized List h() {
        return this.f;
    }

    public final synchronized fxg h0() {
        return this.l;
    }

    public final synchronized void i() {
        try {
            ejf ejfVar = this.i;
            if (ejfVar != null) {
                ejfVar.destroy();
                this.i = null;
            }
            ejf ejfVar2 = this.j;
            if (ejfVar2 != null) {
                ejfVar2.destroy();
                this.j = null;
            }
            ejf ejfVar3 = this.k;
            if (ejfVar3 != null) {
                ejfVar3.destroy();
                this.k = null;
            }
            im5 im5Var = this.m;
            if (im5Var != null) {
                im5Var.cancel(false);
                this.m = null;
            }
            eff effVar = this.n;
            if (effVar != null) {
                effVar.cancel(false);
                this.n = null;
            }
            this.l = null;
            this.v.clear();
            this.w.clear();
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.h = null;
            this.o = null;
            this.p = null;
            this.q = null;
            this.s = null;
            this.t = null;
            this.u = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized IObjectWrapper i0() {
        return this.q;
    }

    public final synchronized void j(zzbfm zzbfmVar) {
        this.c = zzbfmVar;
    }

    public final synchronized im5 j0() {
        return this.m;
    }

    public final synchronized void k(String str) {
        this.u = str;
    }

    public final synchronized String k0() {
        return f("advertiser");
    }

    public final synchronized void l(zzev zzevVar) {
        this.g = zzevVar;
    }

    public final synchronized String l0() {
        return f(TtmlNode.TAG_BODY);
    }

    public final synchronized void m(zzbft zzbftVar) {
        this.s = zzbftVar;
    }

    public final synchronized String m0() {
        return f("call_to_action");
    }

    public final synchronized void n(String str, zzbfg zzbfgVar) {
        try {
            if (zzbfgVar == null) {
                this.v.remove(str);
            } else {
                this.v.put(str, zzbfgVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void o(ejf ejfVar) {
        this.j = ejfVar;
    }

    public final synchronized void p(List list) {
        this.e = list;
    }

    public final synchronized void q(zzbft zzbftVar) {
        this.t = zzbftVar;
    }

    public final synchronized void r(float f) {
        this.x = f;
    }

    public final synchronized void s(List list) {
        this.f = list;
    }

    public final synchronized void t(ejf ejfVar) {
        this.k = ejfVar;
    }

    public final synchronized void u(im5 im5Var) {
        this.m = im5Var;
    }

    public final synchronized void v(String str) {
        this.y = str;
    }

    public final synchronized void w(fxg fxgVar) {
        this.l = fxgVar;
    }

    public final synchronized void x(eff effVar) {
        this.n = effVar;
    }

    public final synchronized void y(double d) {
        this.r = d;
    }

    public final synchronized void z(String str, String str2) {
        try {
            if (str2 == null) {
                this.w.remove(str);
            } else {
                this.w.put(str, str2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
