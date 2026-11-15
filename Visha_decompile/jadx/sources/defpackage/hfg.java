package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdc;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzbpj;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbpn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class hfg implements ldg {
    public final zzbpn a;
    public final b0g b;
    public final izf c;
    public final r8g d;
    public final Context e;
    public final hmh f;
    public final VersionInfoParcel g;
    public final enh h;
    public boolean i = false;
    public boolean j = false;
    public boolean k = true;
    public final zzbpj l;
    public final zzbpk m;

    public hfg(zzbpj zzbpjVar, zzbpk zzbpkVar, zzbpn zzbpnVar, b0g b0gVar, izf izfVar, r8g r8gVar, Context context, hmh hmhVar, VersionInfoParcel versionInfoParcel, enh enhVar) {
        this.l = zzbpjVar;
        this.m = zzbpkVar;
        this.a = zzbpnVar;
        this.b = b0gVar;
        this.c = izfVar;
        this.d = r8gVar;
        this.e = context;
        this.f = hmhVar;
        this.g = versionInfoParcel;
        this.h = enhVar;
    }

    public static final HashMap q(Map map) {
        HashMap map2 = new HashMap();
        if (map != null) {
            synchronized (map) {
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        View view = (View) ((WeakReference) entry.getValue()).get();
                        if (view != null) {
                            map2.put((String) entry.getKey(), view);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return map2;
    }

    @Override
    public final void a(Bundle bundle) {
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final void c(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType, int i) {
        if (!this.j) {
            int i2 = zze.zza;
            zzo.zzj("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (this.f.L) {
            p(view2);
        } else {
            int i3 = zze.zza;
            zzo.zzj("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        }
    }

    @Override
    public final void d(zzdc zzdcVar) {
        int i = zze.zza;
        zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00cf A[Catch: RemoteException -> 0x002b, JSONException -> 0x0047, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0047, blocks: (B:49:0x00b4, B:50:0x00c9, B:52:0x00cf), top: B:73:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00c9 A[SYNTHETIC] */
    @Override
    public final void e(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        ClassLoader classLoader;
        Iterator it;
        IObjectWrapper iObjectWrapperZzn;
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            JSONObject jSONObject = this.f.j0;
            boolean z = true;
            if (((Boolean) zzbd.zzc().b(cye.J1)).booleanValue() && jSONObject.length() != 0) {
                Map map3 = map == null ? new HashMap() : map;
                Map map4 = map2 == null ? new HashMap() : map2;
                HashMap map5 = new HashMap();
                map5.putAll(map3);
                map5.putAll(map4);
                Iterator<String> itKeys = jSONObject.keys();
                loop0: while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                    if (jSONArrayOptJSONArray != null) {
                        WeakReference weakReference = (WeakReference) map5.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) zzbd.zzc().b(cye.K1)).booleanValue() && next.equals("3010")) {
                                zzbpn zzbpnVar = this.a;
                                Object objUnwrap = null;
                                if (zzbpnVar != null) {
                                    try {
                                        iObjectWrapperZzn = zzbpnVar.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    zzbpj zzbpjVar = this.l;
                                    if (zzbpjVar != null) {
                                        iObjectWrapperZzn = zzbpjVar.zzk();
                                    } else {
                                        zzbpk zzbpkVar = this.m;
                                        iObjectWrapperZzn = zzbpkVar != null ? zzbpkVar.zzj() : null;
                                    }
                                }
                                if (iObjectWrapperZzn != null) {
                                    objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzn);
                                }
                                if (objUnwrap != null) {
                                    cls = objUnwrap.getClass();
                                    ArrayList arrayList = new ArrayList();
                                    zzbs.zzc(jSONArrayOptJSONArray, arrayList);
                                    zzv.zzq();
                                    classLoader = this.e.getClassLoader();
                                    it = arrayList.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls)) {
                                            }
                                        }
                                    }
                                }
                            } else {
                                try {
                                    ArrayList arrayList2 = new ArrayList();
                                    zzbs.zzc(jSONArrayOptJSONArray, arrayList2);
                                    zzv.zzq();
                                    classLoader = this.e.getClassLoader();
                                    it = arrayList2.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls)) {
                                            }
                                        }
                                    }
                                } catch (JSONException unused2) {
                                    continue;
                                }
                            }
                        }
                        z = false;
                        break;
                    }
                }
            }
            this.k = z;
            HashMap mapQ = q(map);
            HashMap mapQ2 = q(map2);
            zzbpn zzbpnVar2 = this.a;
            if (zzbpnVar2 != null) {
                zzbpnVar2.zzy(iObjectWrapperWrap, ObjectWrapper.wrap(mapQ), ObjectWrapper.wrap(mapQ2));
                return;
            }
            zzbpj zzbpjVar2 = this.l;
            if (zzbpjVar2 != null) {
                zzbpjVar2.zzv(iObjectWrapperWrap, ObjectWrapper.wrap(mapQ), ObjectWrapper.wrap(mapQ2));
                zzbpjVar2.zzu(iObjectWrapperWrap);
                return;
            }
            zzbpk zzbpkVar2 = this.m;
            if (zzbpkVar2 != null) {
                zzbpkVar2.zzt(iObjectWrapperWrap, ObjectWrapper.wrap(mapQ), ObjectWrapper.wrap(mapQ2));
                zzbpkVar2.zzs(iObjectWrapperWrap);
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to call trackView", e);
        }
    }

    @Override
    public final boolean f(Bundle bundle) {
        return false;
    }

    @Override
    public final void g(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        if (this.j && this.f.L) {
            return;
        }
        p(view);
    }

    @Override
    public final JSONObject h(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override
    public final JSONObject i(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override
    public final void j(View view, Map map) {
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            zzbpn zzbpnVar = this.a;
            if (zzbpnVar != null) {
                zzbpnVar.zzz(iObjectWrapperWrap);
                return;
            }
            zzbpj zzbpjVar = this.l;
            if (zzbpjVar != null) {
                zzbpjVar.zzw(iObjectWrapperWrap);
                return;
            }
            zzbpk zzbpkVar = this.m;
            if (zzbpkVar != null) {
                zzbpkVar.zzu(iObjectWrapperWrap);
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to call untrackView", e);
        }
    }

    @Override
    public final void k(View view, MotionEvent motionEvent, View view2) {
    }

    @Override
    public final void l(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        try {
            if (!this.i) {
                this.i = zzv.zzt().zzn(this.e, this.g.afmaVersion, this.f.C.toString(), this.h.f);
            }
            if (this.k) {
                zzbpn zzbpnVar = this.a;
                if (zzbpnVar != null && !zzbpnVar.zzB()) {
                    zzbpnVar.zzx();
                    this.b.zza();
                    return;
                }
                zzbpj zzbpjVar = this.l;
                if (zzbpjVar != null && !zzbpjVar.zzy()) {
                    zzbpjVar.zzt();
                    this.b.zza();
                    return;
                }
                zzbpk zzbpkVar = this.m;
                if (zzbpkVar == null || zzbpkVar.zzw()) {
                    return;
                }
                zzbpkVar.zzr();
                this.b.zza();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to call recordImpression", e);
        }
    }

    @Override
    public final void m(View view) {
    }

    @Override
    public final void n(zzbhk zzbhkVar) {
    }

    @Override
    public final void o(zzdg zzdgVar) {
        int i = zze.zza;
        zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    public final void p(View view) {
        try {
            zzbpn zzbpnVar = this.a;
            if (zzbpnVar != null && !zzbpnVar.zzA()) {
                zzbpnVar.zzw(ObjectWrapper.wrap(view));
                this.c.onAdClicked();
                if (((Boolean) zzbd.zzc().b(cye.Ra)).booleanValue()) {
                    this.d.zzdd();
                    return;
                }
                return;
            }
            zzbpj zzbpjVar = this.l;
            if (zzbpjVar != null && !zzbpjVar.zzx()) {
                zzbpjVar.zzs(ObjectWrapper.wrap(view));
                this.c.onAdClicked();
                if (((Boolean) zzbd.zzc().b(cye.Ra)).booleanValue()) {
                    this.d.zzdd();
                    return;
                }
                return;
            }
            zzbpk zzbpkVar = this.m;
            if (zzbpkVar == null || zzbpkVar.zzv()) {
                return;
            }
            zzbpkVar.zzq(ObjectWrapper.wrap(view));
            this.c.onAdClicked();
            if (((Boolean) zzbd.zzc().b(cye.Ra)).booleanValue()) {
                this.d.zzdd();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Failed to call handleClick", e);
        }
    }

    @Override
    public final boolean zzD() {
        return this.f.L;
    }

    @Override
    public final int zza() {
        return 0;
    }

    @Override
    public final void zzi() {
        int i = zze.zza;
        zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override
    public final void zzj() {
    }

    @Override
    public final void zzk() {
    }

    @Override
    public final void zzn(String str) {
    }

    @Override
    public final void zzo(Bundle bundle) {
    }

    @Override
    public final void zzr() {
    }

    @Override
    public final void zzt() {
    }

    @Override
    public final void zzx() {
        this.j = true;
    }
}
