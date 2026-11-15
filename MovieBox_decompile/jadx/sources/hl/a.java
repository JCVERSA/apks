package hl;

import com.transsion.core.pool.b;
import com.transsion.http.c;
import com.transsion.http.impl.r;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class a {

    private b f61376a = com.transsion.core.pool.a.b();

    private List f61377b = Collections.synchronizedList(new LinkedList());

    public void a(el.b bVar, r rVar) {
        c cVar = new c(bVar, rVar);
        if (bVar.c().m() != null) {
            this.f61377b.add(cVar);
        }
        this.f61376a.a(cVar);
    }
}
