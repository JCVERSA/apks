package com.doman.core.b.a.a;

import android.text.TextUtils;
import com.android.net.e;
import com.android.net.n;
import com.android.net.p;
import com.android.net.toolbox.o;
import com.lzy.okgo.model.Progress;
import java.util.HashMap;
import java.util.Map;

public final class a extends o {
    private String l;
    private String m;

    public a(String str, String str2, String str3) {
        super(0, str, new p.b<String>() {
            @Override
            public final void a(String str4) {
            }
        }, null);
        this.l = str2;
        this.m = str3;
        this.j = new e(5000, 1, 1.0f);
    }

    @Override
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(this.l)) {
            map.put("User-Agent", this.l);
        }
        if (!TextUtils.isEmpty(this.m)) {
            map.put(Progress.REFERER, this.m);
        }
        return map;
    }

    @Override
    public final n.b i() {
        return n.b.IMMEDIATE;
    }
}
