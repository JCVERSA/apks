package androidx.compose.runtime.saveable;

import androidx.compose.runtime.b2;
import java.util.Arrays;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

final class SaveableHolder implements e, b2 {

    private d f3578a;

    private b f3579b;

    private String f3580c;

    private Object f3581d;

    private Object[] f3582e;

    private b.a f3583f;

    private final Function0 f3584g = new Function0<Object>() {
        {
            super(0);
        }

        @Override
        public final Object invoke() {
            d dVar = this.this$0.f3578a;
            SaveableHolder saveableHolder = this.this$0;
            Object obj = saveableHolder.f3581d;
            if (obj != null) {
                return dVar.a(saveableHolder, obj);
            }
            throw new IllegalArgumentException("Value should be initialized");
        }
    };

    public SaveableHolder(d dVar, b bVar, String str, Object obj, Object[] objArr) {
        this.f3578a = dVar;
        this.f3579b = bVar;
        this.f3580c = str;
        this.f3581d = obj;
        this.f3582e = objArr;
    }

    private final void e() {
        b bVar = this.f3579b;
        if (this.f3583f == null) {
            if (bVar != null) {
                RememberSaveableKt.d(bVar, this.f3584g.invoke());
                this.f3583f = bVar.b(this.f3580c, this.f3584g);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("entry(" + this.f3583f + ") is not null").toString());
    }

    @Override
    public boolean a(Object obj) {
        b bVar = this.f3579b;
        return bVar == null || bVar.a(obj);
    }

    public final Object d(Object[] objArr) {
        if (Arrays.equals(objArr, this.f3582e)) {
            return this.f3581d;
        }
        return null;
    }

    public final void f(d dVar, b bVar, String str, Object obj, Object[] objArr) {
        boolean z10;
        boolean z11 = true;
        if (this.f3579b != bVar) {
            this.f3579b = bVar;
            z10 = true;
        } else {
            z10 = false;
        }
        if (Intrinsics.c(this.f3580c, str)) {
            z11 = z10;
        } else {
            this.f3580c = str;
        }
        this.f3578a = dVar;
        this.f3581d = obj;
        this.f3582e = objArr;
        b.a aVar = this.f3583f;
        if (aVar == null || !z11) {
            return;
        }
        if (aVar != null) {
            aVar.unregister();
        }
        this.f3583f = null;
        e();
    }

    @Override
    public void onAbandoned() {
        b.a aVar = this.f3583f;
        if (aVar != null) {
            aVar.unregister();
        }
    }

    @Override
    public void onForgotten() {
        b.a aVar = this.f3583f;
        if (aVar != null) {
            aVar.unregister();
        }
    }

    @Override
    public void onRemembered() {
        e();
    }
}
