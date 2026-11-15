package com.transsion.athena.hatnea;

import com.transsion.ga.AthenaAnalytics;
import org.json.JSONObject;

public class athaen extends anateh {

    private final com.transsion.athena.config.data.model.athena f41641c;

    private long f41642d;

    private final int f41643e;

    private final com.transsion.athena.aethna.aethna f41644f;

    public athaen(com.transsion.athena.config.data.model.athena athenaVar, long j10, com.transsion.athena.aethna.aethna aethnaVar) {
        int iB = com.transsion.athena.config.data.model.anehat.b(AthenaAnalytics.J());
        this.f41643e = iB;
        if (athenaVar.k() > 0 && iB != athenaVar.d()) {
            com.transsion.athena.taaneh.aethna.c("dimensionChanged, so set appConfig version to 0");
            athenaVar.c(0L);
        }
        this.f41641c = athenaVar;
        this.f41642d = j10;
        this.f41644f = aethnaVar;
    }

    @Override
    protected void a() throws Throwable {
        String string;
        boolean z10 = false;
        try {
            JSONObject jSONObjectA = com.transsion.athena.config.data.model.anehat.a(AthenaAnalytics.J());
            jSONObjectA.put("sname", String.valueOf(this.f41641c.b()));
            jSONObjectA.put("sdkver", com.transsion.athena.config.data.model.ehanat.a(this.f41641c.b()));
            string = jSONObjectA.toString();
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(e10.getMessage());
            string = "";
        }
        ehanat<String> ehanatVarA = anehat.a(com.transsion.athena.config.data.model.ehanat.a(this.f41641c.c()), string, this.f41641c.k(), this.f41641c.b());
        int i10 = ehanatVarA.f41651a;
        if (i10 == 0) {
            String str = ehanatVarA.f41652b;
            com.transsion.athena.taaneh.aethna.c("<-- appIdConfig:%s", str);
            com.transsion.athena.aethna.athena.c().a(this.f41641c, str);
            this.f41641c.b(this.f41643e);
            if (this.f41641c.e() > 0) {
                this.f41642d = ((long) this.f41641c.e()) * 3600000;
            }
            this.f41641c.b(System.currentTimeMillis() + this.f41642d);
            z10 = true;
        } else if (i10 != 1) {
            com.transsion.athena.config.data.model.athena athenaVar = this.f41641c;
            athenaVar.e(athenaVar.g() + 1);
        } else {
            com.transsion.athena.taaneh.aethna.c("<-- appIdConfig:%s", "NOT_MODIFIED");
            this.f41641c.b(this.f41643e);
            this.f41641c.b(System.currentTimeMillis() + this.f41642d);
        }
        com.transsion.athena.aethna.aethna aethnaVar = this.f41644f;
        if (aethnaVar != null) {
            aethnaVar.a(this.f41641c.b(), z10);
        }
    }

    @Override
    protected String c() {
        return "Retrieve-" + this.f41641c.b() + "-Config";
    }
}
