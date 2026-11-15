package el;

import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.transsion.http.impl.r;
import fl.h;
import il.f;

public class b {

    private hl.a f59723a = new hl.a();

    private h f59724b;

    private final il.e f59725c;

    public b(il.c cVar) {
        this.f59725c = cVar.c();
    }

    public void a(r rVar) {
        this.f59723a.a(this, rVar);
    }

    public h b() {
        if (this.f59725c.e() != null) {
            fl.c cVar = new fl.c(this.f59725c.e());
            int i10 = a.f59722b;
            long j10 = i10 <= 0 ? 104857600L : i10 * 1048576;
            int i11 = a.f59721a;
            this.f59724b = cVar.a(j10, i11 <= 0 ? 864000000L : i11 * TimeConstants.HOUR);
        }
        return this.f59724b;
    }

    public il.e c() {
        return this.f59725c;
    }

    public f d() {
        return new f(this.f59725c);
    }
}
