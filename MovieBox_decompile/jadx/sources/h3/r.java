package h3;

import com.google.common.collect.ImmutableList;
import java.util.Objects;

public abstract class r {
    public static k a(s sVar, byte[] bArr, int i10, int i11) {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        s.b bVar = s.b.f61265c;
        Objects.requireNonNull(aVarBuilder);
        sVar.b(bArr, i10, i11, bVar, new androidx.media3.common.util.m() {
            @Override
            public final void accept(Object obj) {
                aVarBuilder.a((e) obj);
            }
        });
        return new g(aVarBuilder.e());
    }

    public static void b(s sVar) {
    }
}
