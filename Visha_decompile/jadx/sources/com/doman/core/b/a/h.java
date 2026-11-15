package com.doman.core.b.a;

import android.content.Context;
import com.android.net.n;
import com.android.net.p;
import com.android.net.u;
import java.util.List;
import java.util.Map;

public final class h extends d {
    protected static p.a l = new p.a() {
        @Override
        public final void a(u uVar) {
            com.doman.core.d.g.a("TrackEventRequest", "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ TrackEventRequest error" + uVar.getMessage());
        }
    };
    private com.doman.core.b.e n;

    public h(Context context, com.doman.core.b.e eVar) {
        super(eVar.a(), l);
        ((d) this).m = context;
        this.n = eVar;
    }

    @Override
    public final Object c(String str) {
        return str;
    }

    @Override
    public final Map<String, String> f() {
        com.doman.core.b.e eVar = this.n;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final n.b i() {
        return n.b.LOW;
    }

    @Override
    public final p.b<List<String>> n() {
        return null;
    }
}
