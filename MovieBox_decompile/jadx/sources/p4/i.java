package p4;

import android.graphics.Path;
import android.graphics.PointF;

public class i extends y4.a {

    private Path f69033q;

    private final y4.a f69034r;

    public i(com.airbnb.lottie.h hVar, y4.a aVar) {
        super(hVar, (PointF) aVar.f76135b, (PointF) aVar.f76136c, aVar.f76137d, aVar.f76138e, aVar.f76139f, aVar.f76140g, aVar.f76141h);
        this.f69034r = aVar;
        j();
    }

    public void j() {
        Object obj;
        Object obj2;
        Object obj3 = this.f76136c;
        boolean z10 = (obj3 == null || (obj2 = this.f76135b) == null || !((PointF) obj2).equals(((PointF) obj3).x, ((PointF) obj3).y)) ? false : true;
        Object obj4 = this.f76135b;
        if (obj4 == null || (obj = this.f76136c) == null || z10) {
            return;
        }
        y4.a aVar = this.f69034r;
        this.f69033q = x4.l.d((PointF) obj4, (PointF) obj, aVar.f76148o, aVar.f76149p);
    }

    Path k() {
        return this.f69033q;
    }
}
