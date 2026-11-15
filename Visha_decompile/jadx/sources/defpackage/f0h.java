package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.internal.ads.zzbvw;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public abstract class f0h implements kxg {
    public static Bundle d(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override
    public final im5 a(vmh vmhVar, hmh hmhVar) {
        JSONObject jSONObject = hmhVar.v;
        String strOptString = jSONObject.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        enh enhVar = vmhVar.a.a;
        cnh cnhVar = new cnh();
        cnhVar.M(enhVar);
        cnhVar.P(strOptString);
        zzm zzmVar = enhVar.d;
        Bundle bundleD = d(zzmVar.zzm);
        Bundle bundleD2 = d(bundleD.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        bundleD2.putInt("gw", 1);
        String strOptString2 = jSONObject.optString("mad_hac", null);
        if (strOptString2 != null) {
            bundleD2.putString("mad_hac", strOptString2);
        }
        String strOptString3 = jSONObject.optString("adJson", null);
        if (strOptString3 != null) {
            bundleD2.putString("_ad", strOptString3);
        }
        bundleD2.putBoolean("_noRefresh", true);
        JSONObject jSONObject2 = hmhVar.D;
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString4 = jSONObject2.optString(next, null);
            if (next != null) {
                bundleD2.putString(next, strOptString4);
            }
        }
        bundleD.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundleD2);
        cnhVar.h(new zzm(zzmVar.zza, zzmVar.zzb, bundleD2, zzmVar.zzd, zzmVar.zze, zzmVar.zzf, zzmVar.zzg, zzmVar.zzh, zzmVar.zzi, zzmVar.zzj, zzmVar.zzk, zzmVar.zzl, bundleD, zzmVar.zzn, zzmVar.zzo, zzmVar.zzp, zzmVar.zzq, zzmVar.zzr, zzmVar.zzs, zzmVar.zzt, zzmVar.zzu, zzmVar.zzv, zzmVar.zzw, zzmVar.zzx, zzmVar.zzy, zzmVar.zzz));
        enh enhVarJ = cnhVar.j();
        Bundle bundle = new Bundle();
        kmh kmhVar = vmhVar.b.b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(kmhVar.a));
        bundle2.putInt("refresh_interval", kmhVar.c);
        bundle2.putString("gws_query_id", kmhVar.b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = enhVar.f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", hmhVar.w);
        bundle3.putString("ad_source_name", hmhVar.F);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(hmhVar.c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(hmhVar.d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(hmhVar.p));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(hmhVar.m));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(hmhVar.g));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(hmhVar.h));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(hmhVar.i));
        bundle3.putString("transaction_id", hmhVar.j);
        bundle3.putString("valid_from_timestamp", hmhVar.k);
        bundle3.putBoolean("is_closable_area_disabled", hmhVar.P);
        bundle3.putString("recursive_server_response_data", hmhVar.o0);
        bundle3.putBoolean("is_analytics_logging_enabled", hmhVar.W);
        zzbvw zzbvwVar = hmhVar.l;
        if (zzbvwVar != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzbvwVar.zzb);
            bundle4.putString("rb_type", zzbvwVar.zza);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return c(enhVarJ, bundle, hmhVar, vmhVar);
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        return !TextUtils.isEmpty(hmhVar.v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    public abstract im5 c(enh enhVar, Bundle bundle, hmh hmhVar, vmh vmhVar);
}
