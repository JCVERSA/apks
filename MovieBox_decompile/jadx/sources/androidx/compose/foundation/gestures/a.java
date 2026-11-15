package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.w;
import java.util.List;

final class a implements j {

    public static final a f2406a = new a();

    private a() {
    }

    @Override
    public long a(o0.e eVar, androidx.compose.ui.input.pointer.o oVar, long j10) {
        List listB = oVar.b();
        y.g gVarD = y.g.d(y.g.f75999b.c());
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            gVarD = y.g.d(y.g.r(gVarD.v(), ((w) listB.get(i10)).m()));
        }
        return y.g.s(gVarD.v(), -eVar.D0(o0.i.g(64)));
    }
}
