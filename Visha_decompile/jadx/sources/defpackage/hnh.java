package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import org.json.JSONObject;

public final class hnh {
    public final JSONObject a;

    public hnh(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public final String a() {
        if (c() - 1 != 1) {
            return "javascript";
        }
        return null;
    }

    public final boolean b() {
        return this.a.optBoolean((String) zzbd.zzc().b(cye.r5), true);
    }

    public final int c() {
        int iOptInt = this.a.optInt(SheetDialogParamsConstant.MEDIA_TYPE, -1);
        if (iOptInt != 0) {
            return iOptInt != 1 ? 3 : 1;
        }
        return 2;
    }
}
