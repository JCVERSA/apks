package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.launch.task.GlobalDownloadMangerTask;

public class nw9 {
    public boolean a;
    public boolean b;
    public boolean c;
    public String d = "StartUpProvider";

    public void a(Context context) {
        Log.e(this.d, "doInitTask: start");
        bx9.F();
        qw9.a aVar = new qw9.a();
        if (this.b) {
            aVar.a(new v86());
        }
        aVar.a(new h9());
        aVar.a(new i0());
        aVar.a(new bg(this.a, this.c));
        aVar.a(new np());
        aVar.a(new te1());
        aVar.a(new ec2());
        aVar.a(new i24());
        aVar.a(new p94());
        aVar.a(new GlobalDownloadMangerTask());
        aVar.a(new hn5());
        aVar.a(new aq5());
        aVar.a(new v06());
        aVar.a(new gf6());
        aVar.a(new fl6());
        aVar.a(new lw5());
        aVar.a(new um6());
        aVar.a(new y7());
        aVar.a(new lz6());
        aVar.a(new p88());
        aVar.a(new wg8());
        aVar.a(new zi8());
        aVar.a(new rr8());
        aVar.a(new qr8());
        aVar.a(new oxa());
        aVar.a(new nob());
        aVar.a(new chb());
        aVar.a(new oec());
        aVar.a(new ve());
        aVar.a(new zz4());
        aVar.a(new dec());
        aVar.a(new fw6());
        aVar.a(new ydb());
        aVar.a(new ys1());
        aVar.a(new jh5());
        aVar.a(new tr1());
        aVar.b(context).c().a();
        Log.e(this.d, "doInitTask: end");
    }

    public nw9 b(boolean z) {
        this.a = z;
        return this;
    }

    public nw9 c(boolean z) {
        this.b = z;
        return this;
    }

    public nw9 d(boolean z) {
        this.c = z;
        return this;
    }
}
