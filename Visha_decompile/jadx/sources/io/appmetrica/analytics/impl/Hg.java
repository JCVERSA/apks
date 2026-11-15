package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
import java.util.Set;

public final class Hg implements Consumer {
    public final Lg a;

    public Hg(Lg lg) {
        this.a = lg;
    }

    @Override
    public final void consume(Object obj) {
        C2787pb c2787pb = (C2787pb) obj;
        Lg lg = this.a;
        String str = c2787pb.h;
        String str2 = c2787pb.e;
        Integer num = c2787pb.f;
        String str3 = c2787pb.g;
        C2581h4 c2581h4 = new C2581h4(str, str2, num, str3, c2787pb.i);
        String str4 = c2787pb.b;
        byte[] bArr = c2787pb.a;
        int i = c2787pb.c;
        HashMap map = c2787pb.d;
        String str5 = c2787pb.j;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(str);
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(bArr, str4, 5889, orCreatePublicLogger);
        c2506e4.q = map;
        c2506e4.g = i;
        c2506e4.c = str5;
        G4 g4 = new G4(new Bl(), new F4(), null);
        lg.c.a(c2581h4, g4).a(c2506e4, g4);
        lg.c.a(num.intValue(), str2, str3);
    }
}
