package p4;

import com.airbnb.lottie.model.DocumentData;
import java.util.List;

public class o extends g {

    class a extends y4.c {

        final y4.b f69053d;

        final y4.c f69054e;

        final DocumentData f69055f;

        a(y4.b bVar, y4.c cVar, DocumentData documentData) {
            this.f69053d = bVar;
            this.f69054e = cVar;
            this.f69055f = documentData;
        }

        @Override
        public DocumentData a(y4.b bVar) {
            this.f69053d.h(bVar.f(), bVar.a(), ((DocumentData) bVar.g()).f17153a, ((DocumentData) bVar.b()).f17153a, bVar.d(), bVar.c(), bVar.e());
            String str = (String) this.f69054e.a(this.f69053d);
            DocumentData documentData = (DocumentData) (bVar.c() == 1.0f ? bVar.b() : bVar.g());
            this.f69055f.a(str, documentData.f17154b, documentData.f17155c, documentData.f17156d, documentData.f17157e, documentData.f17158f, documentData.f17159g, documentData.f17160h, documentData.f17161i, documentData.f17162j, documentData.f17163k, documentData.f17164l, documentData.f17165m);
            return this.f69055f;
        }
    }

    public o(List list) {
        super(list);
    }

    @Override
    public DocumentData i(y4.a aVar, float f10) {
        Object obj;
        y4.c cVar = this.f69005e;
        if (cVar == null) {
            return (f10 != 1.0f || (obj = aVar.f76136c) == null) ? (DocumentData) aVar.f76135b : (DocumentData) obj;
        }
        float f11 = aVar.f76140g;
        Float f12 = aVar.f76141h;
        float fFloatValue = f12 == null ? Float.MAX_VALUE : f12.floatValue();
        Object obj2 = aVar.f76135b;
        DocumentData documentData = (DocumentData) obj2;
        Object obj3 = aVar.f76136c;
        return (DocumentData) cVar.b(f11, fFloatValue, documentData, obj3 == null ? (DocumentData) obj2 : (DocumentData) obj3, f10, d(), f());
    }

    public void r(y4.c cVar) {
        super.o(new a(new y4.b(), cVar, new DocumentData()));
    }
}
