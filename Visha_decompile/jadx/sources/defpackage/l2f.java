package defpackage;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.HashMap;
import java.util.Map;

public final class l2f implements n3f {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        WindowManager windowManager = (WindowManager) ejfVar.getContext().getSystemService("window");
        zzv.zzq();
        DisplayMetrics displayMetricsZzu = zzs.zzu(windowManager);
        int i = displayMetricsZzu.widthPixels;
        int i2 = displayMetricsZzu.heightPixels;
        int[] iArr = new int[2];
        HashMap map2 = new HashMap();
        ((View) ejfVar).getLocationInWindow(iArr);
        map2.put("xInPixels", Integer.valueOf(iArr[0]));
        map2.put("yInPixels", Integer.valueOf(iArr[1]));
        map2.put("windowWidthInPixels", Integer.valueOf(i));
        map2.put("windowHeightInPixels", Integer.valueOf(i2));
        ejfVar.zzd("locationReady", map2);
        int i3 = zze.zza;
        zzo.zzj("GET LOCATION COMPILED");
    }
}
