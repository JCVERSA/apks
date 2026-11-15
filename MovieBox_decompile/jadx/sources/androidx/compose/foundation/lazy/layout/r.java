package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.o0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;

public final class r implements q, androidx.compose.ui.layout.x {

    private final LazyLayoutItemContentFactory f2759a;

    private final o0 f2760b;

    private final m f2761c;

    private final HashMap f2762d = new HashMap();

    public r(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, o0 o0Var) {
        this.f2759a = lazyLayoutItemContentFactory;
        this.f2760b = o0Var;
        this.f2761c = (m) lazyLayoutItemContentFactory.d().invoke();
    }

    @Override
    public float B0() {
        return this.f2760b.B0();
    }

    @Override
    public float D0(float f10) {
        return this.f2760b.D0(f10);
    }

    @Override
    public long H(float f10) {
        return this.f2760b.H(f10);
    }

    @Override
    public float J(long j10) {
        return this.f2760b.J(j10);
    }

    @Override
    public androidx.compose.ui.layout.v L0(int i10, int i11, Map map, Function1 function1, Function1 function2) {
        return this.f2760b.L0(i10, i11, map, function1, function2);
    }

    @Override
    public long P0(long j10) {
        return this.f2760b.P0(j10);
    }

    @Override
    public long Q(float f10) {
        return this.f2760b.Q(f10);
    }

    @Override
    public List S(int i10, long j10) {
        List list = (List) this.f2762d.get(Integer.valueOf(i10));
        if (list != null) {
            return list;
        }
        Object objB = this.f2761c.b(i10);
        List listE = this.f2760b.E(objB, this.f2759a.b(i10, objB, this.f2761c.c(i10)));
        int size = listE.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(((androidx.compose.ui.layout.s) listE.get(i11)).P(j10));
        }
        this.f2762d.put(Integer.valueOf(i10), arrayList);
        return arrayList;
    }

    @Override
    public boolean W() {
        return this.f2760b.W();
    }

    @Override
    public int c0(float f10) {
        return this.f2760b.c0(f10);
    }

    @Override
    public float getDensity() {
        return this.f2760b.getDensity();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return this.f2760b.getLayoutDirection();
    }

    @Override
    public float h0(long j10) {
        return this.f2760b.h0(j10);
    }

    @Override
    public androidx.compose.ui.layout.v p0(int i10, int i11, Map map, Function1 function1) {
        return this.f2760b.p0(i10, i11, map, function1);
    }

    @Override
    public float x0(float f10) {
        return this.f2760b.x0(f10);
    }
}
