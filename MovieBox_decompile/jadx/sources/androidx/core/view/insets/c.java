package androidx.core.view.insets;

import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

class c implements f.c {

    private final ArrayList f8099a = new ArrayList();

    private final f f8100b;

    private z0.c f8101c;

    private z0.c f8102d;

    private int f8103e;

    private boolean f8104f;

    c(f fVar, List list) {
        z0.c cVar = z0.c.f76464e;
        this.f8101c = cVar;
        this.f8102d = cVar;
        f(list, false);
        f(list, true);
        fVar.g(this);
        this.f8100b = fVar;
    }

    private void f(List list, boolean z10) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Protection protection = (Protection) list.get(i10);
            if (protection.occupiesCorners() == z10) {
                Object controller = protection.getController();
                if (controller != null) {
                    throw new IllegalStateException(protection + " is already controlled by " + controller);
                }
                protection.setController(this);
                this.f8099a.add(protection);
            }
        }
    }

    private void j() {
        z0.c cVarA = z0.c.f76464e;
        for (int size = this.f8099a.size() - 1; size >= 0; size--) {
            cVarA = z0.c.a(cVarA, ((Protection) this.f8099a.get(size)).dispatchInsets(this.f8101c, this.f8102d, cVarA));
        }
    }

    @Override
    public void a() {
        int i10 = this.f8103e;
        boolean z10 = i10 > 0;
        int i11 = i10 - 1;
        this.f8103e = i11;
        if (z10 && i11 == 0) {
            j();
        }
    }

    @Override
    public void b(int i10, z0.c cVar, RectF rectF) {
        z0.c cVar2 = this.f8102d;
        for (int size = this.f8099a.size() - 1; size >= 0; size--) {
            Protection protection = (Protection) this.f8099a.get(size);
            int side = protection.getSide();
            if ((side & i10) != 0) {
                protection.setSystemVisible(true);
                if (side == 1) {
                    int i11 = cVar2.f76465a;
                    if (i11 > 0) {
                        protection.setSystemInsetAmount(cVar.f76465a / i11);
                    }
                    protection.setSystemAlpha(rectF.left);
                } else if (side == 2) {
                    int i12 = cVar2.f76466b;
                    if (i12 > 0) {
                        protection.setSystemInsetAmount(cVar.f76466b / i12);
                    }
                    protection.setSystemAlpha(rectF.top);
                } else if (side == 4) {
                    int i13 = cVar2.f76467c;
                    if (i13 > 0) {
                        protection.setSystemInsetAmount(cVar.f76467c / i13);
                    }
                    protection.setSystemAlpha(rectF.right);
                } else if (side == 8) {
                    int i14 = cVar2.f76468d;
                    if (i14 > 0) {
                        protection.setSystemInsetAmount(cVar.f76468d / i14);
                    }
                    protection.setSystemAlpha(rectF.bottom);
                }
            }
        }
    }

    @Override
    public void c(z0.c cVar, z0.c cVar2) {
        this.f8101c = cVar;
        this.f8102d = cVar2;
        j();
    }

    @Override
    public void d() {
        this.f8103e++;
    }

    @Override
    public void e(int i10) {
        for (int size = this.f8099a.size() - 1; size >= 0; size--) {
            ((Protection) this.f8099a.get(size)).dispatchColorHint(i10);
        }
    }

    void g() {
        if (this.f8104f) {
            return;
        }
        this.f8104f = true;
        this.f8100b.n(this);
        for (int size = this.f8099a.size() - 1; size >= 0; size--) {
            ((Protection) this.f8099a.get(size)).setController(null);
        }
        this.f8099a.clear();
    }

    Protection h(int i10) {
        return (Protection) this.f8099a.get(i10);
    }

    int i() {
        return this.f8099a.size();
    }
}
