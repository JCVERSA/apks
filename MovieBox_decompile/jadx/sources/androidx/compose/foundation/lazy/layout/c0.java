package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function1;

public final class c0 implements b {

    private final androidx.compose.runtime.collection.b f2725a = new androidx.compose.runtime.collection.b(new b.a[16], 0);

    private int f2726b;

    private b.a f2727c;

    private final void c(int i10) {
        if (i10 < 0 || i10 >= getSize()) {
            throw new IndexOutOfBoundsException("Index " + i10 + ", size " + getSize());
        }
    }

    private final boolean d(b.a aVar, int i10) {
        return i10 < aVar.b() + aVar.a() && aVar.b() <= i10;
    }

    private final b.a e(int i10) {
        b.a aVar = this.f2727c;
        if (aVar != null && d(aVar, i10)) {
            return aVar;
        }
        androidx.compose.runtime.collection.b bVar = this.f2725a;
        b.a aVar2 = (b.a) bVar.m()[c.b(bVar, i10)];
        this.f2727c = aVar2;
        return aVar2;
    }

    @Override
    public void a(int i10, int i11, Function1 function1) {
        c(i10);
        c(i11);
        if (i11 < i10) {
            throw new IllegalArgumentException(("toIndex (" + i11 + ") should be not smaller than fromIndex (" + i10 + ')').toString());
        }
        int iB = c.b(this.f2725a, i10);
        int iB2 = ((b.a) this.f2725a.m()[iB]).b();
        while (iB2 <= i11) {
            b.a aVar = (b.a) this.f2725a.m()[iB];
            function1.invoke(aVar);
            iB2 += aVar.a();
            iB++;
        }
    }

    public final void b(int i10, Object obj) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("size should be >=0, but was " + i10).toString());
        }
        if (i10 == 0) {
            return;
        }
        b.a aVar = new b.a(getSize(), i10, obj);
        this.f2726b = getSize() + i10;
        this.f2725a.b(aVar);
    }

    @Override
    public b.a get(int i10) {
        c(i10);
        return e(i10);
    }

    @Override
    public int getSize() {
        return this.f2726b;
    }
}
