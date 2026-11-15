package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.transsion.push.PushConstants;
import java.util.Map;

public final class p2f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        if (TextUtils.isEmpty((CharSequence) map.get(PushConstants.PROVIDER_FIELD_APP_ID))) {
            zze.zza("Missing App Id, cannot show LMD Overlay without it");
            return;
        }
        l1i l1iVarL = m1i.l();
        l1iVarL.b((String) map.get(PushConstants.PROVIDER_FIELD_APP_ID));
        l1iVarL.h(ejfVar.getWidth());
        l1iVarL.g(ejfVar.zzF().getWindowToken());
        if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
            l1iVarL.d(Integer.parseInt((String) map.get("gravityX")) | Integer.parseInt((String) map.get("gravityY")));
        } else {
            l1iVarL.d(81);
        }
        if (map.containsKey("verticalMargin")) {
            l1iVarL.e(Float.parseFloat((String) map.get("verticalMargin")));
        } else {
            l1iVarL.e(0.02f);
        }
        if (map.containsKey("enifd")) {
            l1iVarL.a((String) map.get("enifd"));
        }
        try {
            zzv.zzk().zzj(ejfVar, l1iVarL.i());
        } catch (NullPointerException e) {
            zzv.zzp().x(e, "DefaultGmsgHandlers.ShowLMDOverlay");
            zze.zza("Missing parameters for LMD Overlay show request");
        }
    }
}
