package com.yandex.div.storage;

import com.yandex.div.storage.analytics.CardErrorLoggerFactory;
import com.yandex.div.storage.templates.TemplatesContainer;
import defpackage.nq4;
import defpackage.oj8;
import defpackage.pq4;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class a implements DivDataRepository {
    public final b a;
    public final TemplatesContainer b;
    public final pq4 c;
    public final oj8 d;
    public final CardErrorLoggerFactory e;
    public final Map f;
    public Map g;

    public a(b bVar, TemplatesContainer templatesContainer, pq4 pq4Var, nq4 nq4Var, oj8 oj8Var, CardErrorLoggerFactory cardErrorLoggerFactory) {
        y45.j(bVar, "divStorage");
        y45.j(templatesContainer, "templateContainer");
        y45.j(pq4Var, "histogramRecorder");
        y45.j(oj8Var, "divParsingHistogramProxy");
        y45.j(cardErrorLoggerFactory, "cardErrorFactory");
        this.a = bVar;
        this.b = templatesContainer;
        this.c = pq4Var;
        this.d = oj8Var;
        this.e = cardErrorLoggerFactory;
        this.f = new LinkedHashMap();
        this.g = kotlin.collections.a.l();
    }
}
