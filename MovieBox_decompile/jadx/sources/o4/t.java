package o4;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.p0;

public class t extends a {

    private final com.airbnb.lottie.model.layer.a f67594r;

    private final String f67595s;

    private final boolean f67596t;

    private final p4.a f67597u;

    private p4.a f67598v;

    public t(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, ShapeStroke shapeStroke) {
        super(lottieDrawable, aVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.f67594r = aVar;
        this.f67595s = shapeStroke.h();
        this.f67596t = shapeStroke.k();
        p4.a aVarA = shapeStroke.c().a();
        this.f67597u = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        super.d(obj, cVar);
        if (obj == p0.f17287b) {
            this.f67597u.o(cVar);
            return;
        }
        if (obj == p0.K) {
            p4.a aVar = this.f67598v;
            if (aVar != null) {
                this.f67594r.H(aVar);
            }
            if (cVar == null) {
                this.f67598v = null;
                return;
            }
            p4.q qVar = new p4.q(cVar);
            this.f67598v = qVar;
            qVar.a(this);
            this.f67594r.i(this.f67597u);
        }
    }

    @Override
    public String getName() {
        return this.f67595s;
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        if (this.f67596t) {
            return;
        }
        this.f67462i.setColor(((p4.b) this.f67597u).q());
        p4.a aVar = this.f67598v;
        if (aVar != null) {
            this.f67462i.setColorFilter((ColorFilter) aVar.h());
        }
        super.h(canvas, matrix, i10);
    }
}
