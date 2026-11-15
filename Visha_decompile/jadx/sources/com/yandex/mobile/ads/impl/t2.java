package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class t2 {
    private final el2 a;
    private final y70 b;
    private final l9 c;
    private final cm d;
    private final dp1 e;
    private final c52 f;
    private final n62 g;

    public t2(el2 el2Var, y70 y70Var) {
        this(el2Var, y70Var, new l9(el2Var), new cm(), new dp1(), new c52(), new n62());
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:34:0x00d3
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final com.yandex.mobile.ads.impl.p2 a(org.xmlpull.v1.XmlPullParser r11, com.yandex.mobile.ads.impl.wj r12) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException, org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.t2.a(org.xmlpull.v1.XmlPullParser, com.yandex.mobile.ads.impl.wj):com.yandex.mobile.ads.impl.p2");
    }

    public t2(el2 el2Var, y70 y70Var, l9 l9Var, cm cmVar, dp1 dp1Var, c52 c52Var, n62 n62Var) {
        y45.j(el2Var, "xmlHelper");
        y45.j(y70Var, "extensionsParser");
        y45.j(l9Var, "adSourceParser");
        y45.j(cmVar, "breakTypeParser");
        y45.j(dp1Var, "repeatAfterParser");
        y45.j(c52Var, "timeOffsetParser");
        y45.j(n62Var, "trackingEventsParser");
        this.a = el2Var;
        this.b = y70Var;
        this.c = l9Var;
        this.d = cmVar;
        this.e = dp1Var;
        this.f = c52Var;
        this.g = n62Var;
    }
}
