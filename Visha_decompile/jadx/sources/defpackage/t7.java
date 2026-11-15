package defpackage;

import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.ImpressionType;
import com.iab.omid.library.hisavana.adsession.Owner;
import org.json.JSONObject;

public class t7 {
    public final Owner a;
    public final Owner b;
    public final boolean c;
    public final CreativeType d;
    public final ImpressionType e;

    public t7(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        this.d = creativeType;
        this.e = impressionType;
        this.a = owner;
        if (owner2 == null) {
            this.b = Owner.NONE;
        } else {
            this.b = owner2;
        }
        this.c = z;
    }

    public static t7 a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        agd.d(creativeType, "CreativeType is null");
        agd.d(impressionType, "ImpressionType is null");
        agd.d(owner, "Impression owner is null");
        agd.c(owner, creativeType, impressionType);
        return new t7(creativeType, impressionType, owner, owner2, z);
    }

    public boolean b() {
        return Owner.NATIVE == this.a;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        k8d.i(jSONObject, "impressionOwner", this.a);
        k8d.i(jSONObject, "mediaEventsOwner", this.b);
        k8d.i(jSONObject, "creativeType", this.d);
        k8d.i(jSONObject, "impressionType", this.e);
        k8d.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.c));
        return jSONObject;
    }
}
