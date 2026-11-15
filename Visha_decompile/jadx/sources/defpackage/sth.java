package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzftu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class sth {
    public final q0h a;
    public final String b;
    public final String c;
    public final String d;
    public final Context e;
    public final wmh f;
    public final xmh g;
    public final fy0 h;
    public final fre i;

    public sth(q0h q0hVar, VersionInfoParcel versionInfoParcel, String str, String str2, Context context, wmh wmhVar, xmh xmhVar, fy0 fy0Var, fre freVar) {
        this.a = q0hVar;
        this.b = versionInfoParcel.afmaVersion;
        this.c = str;
        this.d = str2;
        this.e = context;
        this.f = wmhVar;
        this.g = xmhVar;
        this.h = fy0Var;
        this.i = freVar;
    }

    public static String c(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public static String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return zzl.zzk() ? "fakeForAdDebugLog" : str;
    }

    public final List d(vmh vmhVar, hmh hmhVar, List list) {
        return e(vmhVar, hmhVar, false, "", "", list);
    }

    public final List e(vmh vmhVar, hmh hmhVar, boolean z, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            boolean z2 = true;
            String strC = c(c(c((String) it.next(), "@gw_adlocid@", vmhVar.a.a.f), "@gw_adnetrefresh@", true != z ? "0" : "1"), "@gw_sdkver@", this.b);
            if (hmhVar != null) {
                String strC2 = c(c(c(strC, "@gw_qdata@", hmhVar.y), "@gw_adnetid@", hmhVar.x), "@gw_allocid@", hmhVar.w);
                Context context = this.e;
                strC = tdf.c(strC2, context, hmhVar.W, hmhVar.w0);
                if (((Boolean) zzbd.zzc().b(cye.qd)).booleanValue() && hmhVar.e == 4) {
                    zzv.zzq();
                    strC = c(strC, "@gw_aps@", true != zzs.zzH(context) ? "0" : "1");
                }
            }
            q0h q0hVar = this.a;
            String strC3 = c(c(c(c(strC, "@gw_adnetstatus@", q0hVar.g()), "@gw_ttr@", Long.toString(q0hVar.a(), 10)), "@gw_seqnum@", this.c), "@gw_sessid@", this.d);
            boolean z3 = false;
            if (((Boolean) zzbd.zzc().b(cye.L3)).booleanValue() && !TextUtils.isEmpty(str)) {
                z3 = true;
            }
            boolean zIsEmpty = TextUtils.isEmpty(str2);
            boolean z4 = !zIsEmpty;
            if (z3) {
                z2 = z4;
            } else {
                if (!zIsEmpty) {
                }
                arrayList.add(strC3);
            }
            if (this.i.f(Uri.parse(strC3))) {
                Uri.Builder builderBuildUpon = Uri.parse(strC3).buildUpon();
                if (z3) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("ms", str);
                }
                if (z2) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("attok", str2);
                }
                strC3 = builderBuildUpon.build().toString();
            }
            arrayList.add(strC3);
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0066 A[LOOP:0: B:13:0x0060->B:15:0x0066, LOOP_END] */
    public final List f(hmh hmhVar, List list, zzbvk zzbvkVar) {
        wmh wmhVar;
        zzftu zzftuVarZzd;
        String str;
        String str2;
        Iterator it;
        ArrayList arrayList = new ArrayList();
        long jCurrentTimeMillis = this.h.currentTimeMillis();
        try {
            String strZzc = zzbvkVar.zzc();
            String string = Integer.toString(zzbvkVar.zzb());
            if (((Boolean) zzbd.zzc().b(cye.M3)).booleanValue()) {
                xmh xmhVar = this.g;
                if (xmhVar == null) {
                    zzftuVarZzd = zzftu.zzc();
                } else {
                    wmhVar = xmhVar.a;
                }
                str = (String) zzftuVarZzd.zza(new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        return sth.g(((wmh) obj).a);
                    }
                }).zzb("");
                str2 = (String) zzftuVarZzd.zza(new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        return sth.g(((wmh) obj).b);
                    }
                }).zzb("");
                it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(tdf.c(c(c(c(c(c(c((String) it.next(), "@gw_rwd_userid@", Uri.encode(str)), "@gw_rwd_custom_data@", Uri.encode(str2)), "@gw_tmstmp@", Long.toString(jCurrentTimeMillis)), "@gw_rwd_itm@", Uri.encode(strZzc)), "@gw_rwd_amt@", string), "@gw_sdkver@", this.b), this.e, hmhVar.W, hmhVar.w0));
                }
                return arrayList;
            }
            wmhVar = this.f;
            zzftuVarZzd = zzftu.zzd(wmhVar);
            str = (String) zzftuVarZzd.zza(new m2i() {
                @Override
                public final Object apply(Object obj) {
                    return sth.g(((wmh) obj).a);
                }
            }).zzb("");
            str2 = (String) zzftuVarZzd.zza(new m2i() {
                @Override
                public final Object apply(Object obj) {
                    return sth.g(((wmh) obj).b);
                }
            }).zzb("");
            it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(tdf.c(c(c(c(c(c(c((String) it.next(), "@gw_rwd_userid@", Uri.encode(str)), "@gw_rwd_custom_data@", Uri.encode(str2)), "@gw_tmstmp@", Long.toString(jCurrentTimeMillis)), "@gw_rwd_itm@", Uri.encode(strZzc)), "@gw_rwd_amt@", string), "@gw_sdkver@", this.b), this.e, hmhVar.W, hmhVar.w0));
            }
            return arrayList;
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzh("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }
}
