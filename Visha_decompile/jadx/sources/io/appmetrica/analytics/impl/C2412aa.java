package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import org.apache.commons.lang3.BooleanUtils;

public final class C2412aa {
    public final C2946vl a = new C2946vl();
    public C2462ca b = new C2462ca();

    public final synchronized void a(C2462ca c2462ca) {
        this.b = c2462ca;
    }

    public final synchronized void a(List list, HashMap map) {
        Boolean bool;
        String str;
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (y45.e((String) it.next(), "appmetrica_lib_ssl_enabled") && (bool = this.b.a) != null) {
                    boolean zBooleanValue = bool.booleanValue();
                    C2462ca c2462ca = this.b;
                    IdentifierStatus identifierStatus = c2462ca.b;
                    String str2 = c2462ca.c;
                    if (zBooleanValue) {
                        str = BooleanUtils.TRUE;
                    } else {
                        if (zBooleanValue) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str = BooleanUtils.FALSE;
                    }
                    map.put("appmetrica_lib_ssl_enabled", this.a.a(new IdentifiersResult(str, identifierStatus, str2)));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
