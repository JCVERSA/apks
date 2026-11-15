package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzcj;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzcau;
import com.google.android.gms.internal.ads.zzcfn;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.push.PushConstants;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class phf implements n3f {
    public boolean a;

    public static int b(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                zzbb.zzb();
                i = zzf.zzy(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                int i2 = zze.zza;
                zzo.zzj("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (zze.zzc()) {
            zze.zza("Parse pixels for " + str + ", got string " + str2 + ", int " + i + Consts.DOT);
        }
        return i;
    }

    public static void c(zzcau zzcauVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcauVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                String str6 = String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2);
                int i = zze.zza;
                zzo.zzj(str6);
                return;
            }
        }
        if (str2 != null) {
            zzcauVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcauVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcauVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcauVar.zzD(Integer.parseInt(str5));
        }
    }

    @Override
    public final void a(Object obj, Map map) {
        int iMin;
        int iMin2;
        Integer numValueOf;
        chf chfVar = (chf) obj;
        String str = (String) map.get("action");
        if (str == null) {
            int i = zze.zza;
            zzo.zzj("Action missing from video GMSG.");
            return;
        }
        Integer numValueOf2 = map.containsKey("playerId") ? Integer.valueOf(Integer.parseInt((String) map.get("playerId"))) : null;
        Integer numB = chfVar.zzn() != null ? chfVar.zzn().b() : null;
        if (numValueOf2 != null && numB != null && !numValueOf2.equals(numB) && !str.equals("load")) {
            String str2 = String.format(Locale.US, "Event intended for player %s, but sent to player %d - event ignored", numValueOf2, numB);
            int i2 = zze.zza;
            zzo.zzi(str2);
            return;
        }
        if (zzo.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzo.zze("Video GMSG: " + str + " " + jSONObject.toString());
        }
        if (str.equals("background")) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                zzo.zzj("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                chfVar.setBackgroundColor(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused) {
                zzo.zzj("Invalid color parameter in background video GMSG.");
                return;
            }
        }
        if (str.equals("playerBackground")) {
            String str4 = (String) map.get("color");
            if (TextUtils.isEmpty(str4)) {
                zzo.zzj("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                chfVar.zzB(Color.parseColor(str4));
                return;
            } catch (IllegalArgumentException unused2) {
                zzo.zzj("Invalid color parameter in playerBackground video GMSG.");
                return;
            }
        }
        int i3 = 0;
        if (str.equals("decoderProps")) {
            String str5 = (String) map.get("mimeTypes");
            if (str5 == null) {
                zzo.zzj("No MIME types specified for decoder properties inspection.");
                HashMap map2 = new HashMap();
                map2.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
                map2.put("error", "missingMimeTypes");
                chfVar.zzd("onVideoEvent", map2);
                return;
            }
            HashMap map3 = new HashMap();
            String[] strArrSplit = str5.split(StringUtils.COMMA);
            int length = strArrSplit.length;
            while (i3 < length) {
                String str6 = strArrSplit[i3];
                map3.put(str6, zzcj.zza(str6.trim()));
                i3++;
            }
            HashMap map4 = new HashMap();
            map4.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
            map4.put("mimeTypes", map3);
            chfVar.zzd("onVideoEvent", map4);
            return;
        }
        sgf sgfVarZzn = chfVar.zzn();
        if (sgfVarZzn == null) {
            zzo.zzj("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = str.equals("new");
        boolean zEquals2 = str.equals("position");
        if (zEquals || zEquals2) {
            Context context = chfVar.getContext();
            int iB = b(context, map, "x", 0);
            int iB2 = b(context, map, "y", 0);
            int iB3 = b(context, map, "w", -1);
            qxe qxeVar = cye.d4;
            if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                iMin = iB3 == -1 ? chfVar.zzh() : Math.min(iB3, chfVar.zzh());
            } else {
                if (zze.zzc()) {
                    zze.zza("Calculate width with original width " + iB3 + ", videoHost.getVideoBoundingWidth() " + chfVar.zzh() + ", x " + iB + Consts.DOT);
                }
                iMin = Math.min(iB3, chfVar.zzh() - iB);
            }
            int i4 = iMin;
            int iB4 = b(context, map, CmcdData.STREAMING_FORMAT_HLS, -1);
            if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                iMin2 = iB4 == -1 ? chfVar.zzg() : Math.min(iB4, chfVar.zzg());
            } else {
                if (zze.zzc()) {
                    zze.zza("Calculate height with original height " + iB4 + ", videoHost.getVideoBoundingHeight() " + chfVar.zzg() + ", y " + iB2 + Consts.DOT);
                }
                iMin2 = Math.min(iB4, chfVar.zzg() - iB2);
            }
            try {
                i3 = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused3) {
            }
            int i5 = i3;
            boolean z = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || sgfVarZzn.a() != null) {
                sgfVarZzn.c(iB, iB2, i4, iMin2);
                return;
            }
            sgfVarZzn.d(iB, iB2, i4, iMin2, i5, z, new bhf((String) map.get("flags")));
            zzcau zzcauVarA = sgfVarZzn.a();
            if (zzcauVarA != null) {
                c(zzcauVarA, map);
                return;
            }
            return;
        }
        zzcfn zzcfnVarZzq = chfVar.zzq();
        if (zzcfnVarZzq != null) {
            if (str.equals(VkConstant.VK_EVENT_TIME_UPDATE)) {
                String str7 = (String) map.get("currentTime");
                if (str7 == null) {
                    zzo.zzj("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzcfnVarZzq.zzt(Float.parseFloat(str7));
                    return;
                } catch (NumberFormatException unused4) {
                    zzo.zzj("Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str7));
                    return;
                }
            }
            if (str.equals("skip")) {
                zzcfnVarZzq.zzu();
                return;
            }
        }
        zzcau zzcauVarA2 = sgfVarZzn.a();
        if (zzcauVarA2 == null) {
            HashMap map5 = new HashMap();
            map5.put(NotificationCompat.CATEGORY_EVENT, "no_video_view");
            chfVar.zzd("onVideoEvent", map5);
            return;
        }
        if (str.equals(PushConstants.PUSH_SERVICE_TYPE_CLICK)) {
            Context context2 = chfVar.getContext();
            int iB5 = b(context2, map, "x", 0);
            float fB = b(context2, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iB5, fB, 0);
            zzcauVarA2.zzx(motionEventObtain);
            motionEventObtain.recycle();
            return;
        }
        if (str.equals("currentTime")) {
            String str8 = (String) map.get("time");
            if (str8 == null) {
                zzo.zzj("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzcauVarA2.zzw((int) (Float.parseFloat(str8) * 1000.0f));
                return;
            } catch (NumberFormatException unused5) {
                zzo.zzj("Could not parse time parameter from currentTime video GMSG: ".concat(str8));
                return;
            }
        }
        if (str.equals("hide")) {
            zzcauVarA2.setVisibility(4);
            return;
        }
        if (str.equals("remove")) {
            zzcauVarA2.setVisibility(8);
            return;
        }
        if (str.equals("load")) {
            zzcauVarA2.zzr(numValueOf2);
            return;
        }
        if (str.equals("loadControl")) {
            c(zzcauVarA2, map);
            return;
        }
        if (str.equals("muted")) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzcauVarA2.zzs();
                return;
            } else {
                zzcauVarA2.zzI();
                return;
            }
        }
        if (str.equals("pause")) {
            zzcauVarA2.zzu();
            return;
        }
        if (str.equals(PlayAudioData.TAG_NEED_PLAY)) {
            zzcauVarA2.zzv();
            return;
        }
        if (str.equals(PushConstants.PUSH_SERVICE_TYPE_SHOW)) {
            zzcauVarA2.setVisibility(0);
            return;
        }
        if (!str.equals("src")) {
            if (str.equals("touchMove")) {
                Context context3 = chfVar.getContext();
                zzcauVarA2.zzH(b(context3, map, "dx", 0), b(context3, map, "dy", 0));
                if (this.a) {
                    return;
                }
                chfVar.zzdg();
                this.a = true;
                return;
            }
            if (!str.equals("volume")) {
                if (str.equals("watermark")) {
                    zzcauVarA2.zzp();
                    return;
                } else {
                    zzo.zzj("Unknown video action: ".concat(str));
                    return;
                }
            }
            String str9 = (String) map.get("volume");
            if (str9 == null) {
                zzo.zzj("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzcauVarA2.zzG(Float.parseFloat(str9));
                return;
            } catch (NumberFormatException unused6) {
                zzo.zzj("Could not parse volume parameter from volume video GMSG: ".concat(str9));
                return;
            }
        }
        String str10 = (String) map.get("src");
        if (((Boolean) zzbd.zzc().b(cye.n2)).booleanValue() && TextUtils.isEmpty(str10)) {
            zzo.zzj("Src parameter missing from src video GMSG.");
            return;
        }
        if (map.containsKey("periodicReportIntervalMs")) {
            try {
                numValueOf = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
            } catch (NumberFormatException unused7) {
                zzo.zzj("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        String[] strArr = {str10};
        String str11 = (String) map.get("demuxed");
        if (str11 != null) {
            try {
                JSONArray jSONArray = new JSONArray(str11);
                ArrayList arrayList = new ArrayList();
                for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                    String string = jSONArray.getString(i6);
                    if (!((Boolean) zzbd.zzc().b(cye.n2)).booleanValue() || !TextUtils.isEmpty(string)) {
                        arrayList.add(string);
                    }
                }
                if (((Boolean) zzbd.zzc().b(cye.n2)).booleanValue() && arrayList.isEmpty()) {
                    zzo.zzj("All demuxed URLs are empty for playback: " + str11);
                    return;
                }
                strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } catch (JSONException unused8) {
                zzo.zzj("Malformed demuxed URL list for playback: ".concat(str11));
                strArr = new String[]{str10};
            }
        }
        if (numValueOf != null) {
            chfVar.zzA(numValueOf.intValue());
        }
        zzcauVarA2.zzE(str10, strArr);
    }
}
