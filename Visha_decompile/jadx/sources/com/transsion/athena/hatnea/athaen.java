package com.transsion.athena.hatnea;

import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.athena;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.ga.AthenaAnalytics;
import defpackage.c4d;
import defpackage.e5d;
import defpackage.rbd;
import defpackage.y3d;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONObject;

public class athaen extends anateh {
    private final athena c;
    private long d;
    private final int e;
    private final y3d f;

    public athaen(athena athenaVar, long j, y3d y3dVar) {
        int iB = anehat.b(AthenaAnalytics.I());
        this.e = iB;
        if (athenaVar.k() > 0 && iB != athenaVar.d()) {
            c4d.f("dimensionChanged, so set appConfig version to 0");
            athenaVar.c(0L);
        }
        this.c = athenaVar;
        this.d = j;
        this.f = y3dVar;
    }

    @Override
    public void a() throws Throwable {
        String string;
        try {
            JSONObject jSONObjectA = anehat.a(AthenaAnalytics.I());
            jSONObjectA.put("sname", String.valueOf(this.c.b()));
            jSONObjectA.put("sdkver", ehanat.a(this.c.b()));
            string = jSONObjectA.toString();
        } catch (Exception e) {
            c4d.d(e.getMessage());
            string = "";
        }
        rbd rbdVarE = b.e(ehanat.a(this.c.c()), string, this.c.k(), this.c.b());
        int i = rbdVarE.a;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                athena athenaVar = this.c;
                athenaVar.e(athenaVar.g() + 1);
            } else {
                c4d.g("<-- appIdConfig:%s", "NOT_MODIFIED");
                this.c.b(this.e);
                this.c.b(System.currentTimeMillis() + this.d);
            }
            z = false;
        } else {
            String str = (String) rbdVarE.b;
            c4d.g("<-- appIdConfig:%s", str);
            e5d.o().h(this.c, str);
            this.c.b(this.e);
            if (this.c.e() > 0) {
                this.d = ((long) this.c.e()) * DateUtils.MILLIS_PER_HOUR;
            }
            this.c.b(System.currentTimeMillis() + this.d);
        }
        y3d y3dVar = this.f;
        if (y3dVar != null) {
            y3dVar.a(this.c.b(), z);
        }
    }

    @Override
    public String c() {
        return "Retrieve-" + this.c.b() + "-Config";
    }
}
