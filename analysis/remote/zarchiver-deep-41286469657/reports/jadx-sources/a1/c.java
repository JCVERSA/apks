package a1;

import android.view.View;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import g0.v;
import ru.zdevs.zarchiver.R;

public final class c implements SlidingUpPanelLayout.d {

    public final f f153a;

    public c(f fVar) {
        this.f153a = fVar;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b(SlidingUpPanelLayout.e eVar) {
        SlidingUpPanelLayout.e eVar2 = SlidingUpPanelLayout.e.f512b;
        f fVar = this.f153a;
        if (eVar == eVar2) {
            fVar.dismiss();
            return;
        }
        if (eVar == SlidingUpPanelLayout.e.f511a) {
            View viewFindViewById = fVar.findViewById(R.id.expand);
            if (viewFindViewById != null) {
                z0.f.e(viewFindViewById);
            }
            g gVar = fVar.f160b;
            if (gVar != null) {
                ((v) gVar).u(fVar, 3);
                return;
            }
            return;
        }
        if (eVar == SlidingUpPanelLayout.e.f513c) {
            View viewFindViewById2 = fVar.findViewById(R.id.expand);
            if (viewFindViewById2 != null) {
                z0.f.b(viewFindViewById2);
            }
            g gVar2 = fVar.f160b;
            if (gVar2 != null) {
                ((v) gVar2).u(fVar, 2);
            }
        }
    }
}
