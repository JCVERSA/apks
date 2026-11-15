package com.yandex.div.state;

import com.transsion.livecaption.constant.ICode;
import defpackage.abb;
import defpackage.d81;
import defpackage.e74;
import defpackage.lq2;
import defpackage.y45;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;

public final class InMemoryDivStateCache implements lq2 {
    public final Map a = Collections.synchronizedMap(new LinkedHashMap());
    public final Map b = Collections.synchronizedMap(new LinkedHashMap());

    @Override
    public String a(String str, String str2) {
        y45.j(str, "cardId");
        y45.j(str2, "path");
        return (String) this.a.get(abb.a(str, str2));
    }

    @Override
    public void b(final String str) {
        y45.j(str, "cardId");
        this.b.remove(str);
        d81.H(this.a.keySet(), new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Pair<String, String> pair) {
                return Boolean.valueOf(y45.e(pair.getFirst(), str));
            }
        });
    }

    @Override
    public void c(String str, String str2, String str3) {
        y45.j(str, "cardId");
        y45.j(str2, "path");
        y45.j(str3, ICode.CALL.CALL_KEY_STATE);
        Map map = this.a;
        y45.i(map, "states");
        map.put(abb.a(str, str2), str3);
    }

    @Override
    public void clear() {
        this.a.clear();
        this.b.clear();
    }

    @Override
    public String d(String str) {
        y45.j(str, "cardId");
        return (String) this.b.get(str);
    }

    @Override
    public void e(String str, String str2) {
        y45.j(str, "cardId");
        y45.j(str2, ICode.CALL.CALL_KEY_STATE);
        Map map = this.b;
        y45.i(map, "rootStates");
        map.put(str, str2);
    }
}
