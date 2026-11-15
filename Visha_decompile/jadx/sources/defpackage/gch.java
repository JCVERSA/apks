package defpackage;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzblt;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public final class gch implements deh {
    public final enh a;
    public final PackageInfo b;
    public final zzg c;

    public gch(enh enhVar, PackageInfo packageInfo, zzg zzgVar) {
        this.a = enhVar;
        this.b = packageInfo;
        this.c = zzgVar;
    }

    private final void a(Bundle bundle) {
        int i;
        zzbfi zzbfiVar = this.a.i;
        if (zzbfiVar == null || (i = zzbfiVar.zzi) == 0) {
            return;
        }
        bundle.putBoolean("sccg_tap", zzbfiVar.zzj);
        bundle.putInt("sccg_dir", i);
    }

    @Override
    public final void zza(Object obj) {
        ArrayList arrayList = this.a.g;
        kyf kyfVar = (kyf) obj;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        a(kyfVar.b);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00e1  */
    @Override
    public final void zzb(Object obj) {
        JSONArray jSONArrayOptJSONArray;
        String str;
        enh enhVar = this.a;
        ArrayList<String> arrayList = enhVar.g;
        kyf kyfVar = (kyf) obj;
        if (arrayList == null) {
            return;
        }
        if (arrayList.isEmpty()) {
            kyfVar.a.putInt("native_version", 0);
            return;
        }
        Bundle bundle = kyfVar.a;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", enhVar.h);
        zzbfi zzbfiVar = enhVar.i;
        if (zzbfiVar != null) {
            String str2 = "any";
            if (zzbfiVar.zza > 3) {
                bundle.putBoolean("enable_native_media_orientation", true);
                int i = zzbfiVar.zzh;
                if (i == 1) {
                    str = "any";
                } else if (i == 2) {
                    str = "landscape";
                } else if (i != 3) {
                    str = i != 4 ? "unknown" : "square";
                } else {
                    str = "portrait";
                }
                if (!"unknown".equals(str)) {
                    bundle.putString("native_media_orientation", str);
                }
            }
            int i2 = zzbfiVar.zzc;
            if (i2 != 0) {
                if (i2 != 1) {
                    str2 = i2 != 2 ? "unknown" : "landscape";
                } else {
                    str2 = "portrait";
                }
            }
            if (!"unknown".equals(str2)) {
                bundle.putString("native_image_orientation", str2);
            }
            bundle.putBoolean("native_multiple_images", zzbfiVar.zzd);
            bundle.putBoolean("use_custom_mute", zzbfiVar.zzg);
            a(bundle);
        }
        PackageInfo packageInfo = this.b;
        int i3 = packageInfo != null ? packageInfo.versionCode : 0;
        zzg zzgVar = this.c;
        if (i3 > zzgVar.zza()) {
            zzgVar.zzq();
            zzgVar.zzt(i3);
        }
        JSONObject jSONObjectZzn = zzgVar.zzn();
        String string = null;
        if (jSONObjectZzn != null && (jSONArrayOptJSONArray = jSONObjectZzn.optJSONArray(enhVar.f)) != null) {
            string = jSONArrayOptJSONArray.toString();
        }
        if (!TextUtils.isEmpty(string)) {
            bundle.putString("native_advanced_settings", string);
        }
        int i4 = enhVar.k;
        if (i4 > 1) {
            bundle.putInt("max_num_ads", i4);
        }
        zzblt zzbltVar = enhVar.b;
        if (zzbltVar != null) {
            String str3 = zzbltVar.zzc;
            if (TextUtils.isEmpty(str3)) {
                int i5 = zzbltVar.zza;
                String str4 = TtmlNode.TAG_P;
                if (i5 >= 2) {
                    int i6 = zzbltVar.zzd;
                    if (i6 == 2 || i6 != 3) {
                        str4 = CmcdData.STREAM_TYPE_LIVE;
                    }
                } else {
                    int i7 = zzbltVar.zzb;
                    if (i7 == 1) {
                        str4 = CmcdData.STREAM_TYPE_LIVE;
                    } else if (i7 != 2) {
                        zzo.zzg("Instream ad video aspect ratio " + i7 + " is wrong.");
                        str4 = CmcdData.STREAM_TYPE_LIVE;
                    }
                }
                bundle.putString("ia_var", str4);
            } else {
                bundle.putString("ad_tag", str3);
            }
            bundle.putBoolean("instr", true);
        }
        if (!((Boolean) zzbd.zzc().b(cye.Wb)).booleanValue() || zzbfiVar == null) {
            return;
        }
        zzfw zzfwVar = zzbfiVar.zzf;
        if (zzfwVar != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("startMuted", zzfwVar.zza);
            bundle2.putBoolean("clickToExpandRequested", zzfwVar.zzc);
            bundle2.putBoolean("customControlsRequested", zzfwVar.zzb);
            bundle.putBundle("video", bundle2);
        }
        bundle.putBoolean("disable_image_loading", zzbfiVar.zzb);
        bundle.putInt("preferred_ad_choices_position", zzbfiVar.zze);
    }
}
