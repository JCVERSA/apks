package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;
import java.util.regex.Pattern;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.mozilla.javascript.ES6Iterator;

public final class a2f implements n3f {
    public static final Pattern a = Pattern.compile("^[a-zA-Z]([a-zA-Z0-9]|:|-|_)*$");
    public static final Pattern b = Pattern.compile("^[0-9]*(,[0-9]*)*$");

    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get(AnnotatedPrivateKey.LABEL);
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                int i = zze.zza;
                zzo.zzj("No label given for CSI tick.");
                return;
            }
            qxe qxeVar = cye.m2;
            if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && !a.matcher(str2).matches()) {
                int i2 = zze.zza;
                zzo.zze("Invalid label given for CSI tick. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                int i3 = zze.zza;
                zzo.zzj("No timestamp given for CSI tick.");
                return;
            }
            try {
                long jElapsedRealtime = zzv.zzC().elapsedRealtime() + (Long.parseLong(str4) - zzv.zzC().currentTimeMillis());
                if (true == TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                if (!((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() || a.matcher(str3).matches()) {
                    ejfVar.zzl().c(str2, str3, jElapsedRealtime);
                    return;
                } else {
                    int i4 = zze.zza;
                    zzo.zze("Invalid start label given for CSI tick. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
                    return;
                }
            } catch (NumberFormatException e) {
                int i5 = zze.zza;
                zzo.zzk("Malformed timestamp for CSI tick.", e);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get(ES6Iterator.VALUE_PROPERTY);
            if (TextUtils.isEmpty(str5)) {
                int i6 = zze.zza;
                zzo.zzj("No value given for CSI experiment.");
                return;
            }
            if (!((Boolean) zzbd.zzc().b(cye.m2)).booleanValue() || b.matcher(str5).matches()) {
                ejfVar.zzl().a().d("e", str5);
                return;
            } else {
                int i7 = zze.zza;
                zzo.zze("Invalid value given for CSI experiment. Should be a comma separated list of numbers.");
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get(ES6Iterator.VALUE_PROPERTY);
            if (TextUtils.isEmpty(str7)) {
                int i8 = zze.zza;
                zzo.zzj("No value given for CSI extra.");
                return;
            }
            if (TextUtils.isEmpty(str6)) {
                int i9 = zze.zza;
                zzo.zzj("No name given for CSI extra.");
                return;
            }
            if (!((Boolean) zzbd.zzc().b(cye.m2)).booleanValue() || a.matcher(str6).matches()) {
                ejfVar.zzl().a().d(str6, str7);
            } else {
                int i10 = zze.zza;
                zzo.zze("Invalid name given for CSI extra. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
            }
        }
    }
}
