package defpackage;

import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkd;
import com.google.android.gms.internal.ads.zzfkh;
import org.json.JSONObject;

public final class quh {
    public final zzfkh a;
    public final zzfkh b;
    public final boolean c;
    public final zzfka d;
    public final zzfkd e;

    public quh(zzfka zzfkaVar, zzfkd zzfkdVar, zzfkh zzfkhVar, zzfkh zzfkhVar2, boolean z) {
        this.d = zzfkaVar;
        this.e = zzfkdVar;
        this.a = zzfkhVar;
        if (zzfkhVar2 == null) {
            this.b = zzfkh.NONE;
        } else {
            this.b = zzfkhVar2;
        }
        this.c = z;
    }

    public static quh a(zzfka zzfkaVar, zzfkd zzfkdVar, zzfkh zzfkhVar, zzfkh zzfkhVar2, boolean z) {
        zvh.c(zzfkaVar, "CreativeType is null");
        zvh.c(zzfkdVar, "ImpressionType is null");
        zvh.c(zzfkhVar, "Impression owner is null");
        if (zzfkhVar == zzfkh.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (zzfkaVar == zzfka.DEFINED_BY_JAVASCRIPT && zzfkhVar == zzfkh.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (zzfkdVar == zzfkd.DEFINED_BY_JAVASCRIPT && zzfkhVar == zzfkh.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        return new quh(zzfkaVar, zzfkdVar, zzfkhVar, zzfkhVar2, z);
    }

    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        vvh.e(jSONObject, "impressionOwner", this.a);
        vvh.e(jSONObject, "mediaEventsOwner", this.b);
        vvh.e(jSONObject, "creativeType", this.d);
        vvh.e(jSONObject, "impressionType", this.e);
        vvh.e(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.c));
        return jSONObject;
    }
}
