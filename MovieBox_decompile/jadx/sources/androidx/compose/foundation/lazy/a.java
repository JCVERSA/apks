package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.d0;
import androidx.compose.foundation.lazy.layout.i0;
import androidx.compose.foundation.lazy.layout.x;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class a implements r {

    private final int f2630a;

    private int f2631b;

    private x.b f2632c;

    private boolean f2633d;

    public a() {
        this(0, 1, null);
    }

    @Override
    public void a(d0 d0Var, int i10) {
        int i11 = this.f2630a;
        for (int i12 = 0; i12 < i11; i12++) {
            d0Var.a(i10 + i12);
        }
    }

    @Override
    public void b(p pVar, float f10, l lVar) {
        x.b bVar;
        x.b bVar2;
        x.b bVar3;
        if (lVar.h().isEmpty()) {
            return;
        }
        boolean z10 = f10 < 0.0f;
        int index = z10 ? ((j) CollectionsKt.u0(lVar.h())).getIndex() + 1 : ((j) CollectionsKt.i0(lVar.h())).getIndex() - 1;
        if (index < 0 || index >= lVar.d()) {
            return;
        }
        if (index != this.f2631b) {
            if (this.f2633d != z10 && (bVar3 = this.f2632c) != null) {
                bVar3.cancel();
            }
            this.f2633d = z10;
            this.f2631b = index;
            this.f2632c = pVar.a(index);
        }
        if (!z10) {
            if (lVar.g() - ((j) CollectionsKt.i0(lVar.h())).g() >= f10 || (bVar = this.f2632c) == null) {
                return;
            }
            bVar.a();
            return;
        }
        j jVar = (j) CollectionsKt.u0(lVar.h());
        if (((jVar.g() + jVar.getSize()) + lVar.f()) - lVar.c() >= (-f10) || (bVar2 = this.f2632c) == null) {
            return;
        }
        bVar2.a();
    }

    @Override
    public i0 c() {
        return q.a(this);
    }

    @Override
    public void d(p pVar, l lVar) {
        if (this.f2631b == -1 || lVar.h().isEmpty()) {
            return;
        }
        if (this.f2631b != (this.f2633d ? ((j) CollectionsKt.u0(lVar.h())).getIndex() + 1 : ((j) CollectionsKt.i0(lVar.h())).getIndex() - 1)) {
            this.f2631b = -1;
            x.b bVar = this.f2632c;
            if (bVar != null) {
                bVar.cancel();
            }
            this.f2632c = null;
        }
    }

    public a(int i10) {
        this.f2630a = i10;
        this.f2631b = -1;
    }

    public a(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 2 : i10);
    }
}
