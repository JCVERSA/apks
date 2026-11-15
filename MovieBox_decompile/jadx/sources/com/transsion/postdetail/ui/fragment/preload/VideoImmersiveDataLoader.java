package com.transsion.postdetail.ui.fragment.preload;

import androidx.p009lifecycle.b0;
import com.transsion.postdetail.viewmodel.ImmVideoRequestEntity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class VideoImmersiveDataLoader extends am.b {

    private ImmVideoRequestEntity f47711f;

    private final Lazy f47712g;

    /* JADX WARN: Multi-variable type inference failed */
    public VideoImmersiveDataLoader() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final ao.b n() {
        return (ao.b) this.f47712g.getValue();
    }

    public static final ao.b o() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    @Override
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new VideoImmersiveDataLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final ImmVideoRequestEntity m() {
        return this.f47711f;
    }

    public VideoImmersiveDataLoader(ImmVideoRequestEntity immVideoRequestEntity, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : immVideoRequestEntity);
    }

    public VideoImmersiveDataLoader(ImmVideoRequestEntity immVideoRequestEntity) {
        this.f47711f = immVideoRequestEntity;
        this.f47712g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoImmersiveDataLoader.o();
            }
        });
    }
}
