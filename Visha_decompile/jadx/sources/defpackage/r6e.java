package defpackage;

import android.content.Context;
import java.util.List;
import java.util.concurrent.Executor;

public final class r6e implements mgf {
    public final zdf a;

    public r6e(zdf zdfVar) {
        this.a = zdfVar;
    }

    @Override
    public final ihf a(Context context, h6j h6jVar, ubj ubjVar, ygf ygfVar, Executor executor, vbf vbfVar, List list, long j, boolean z) {
        try {
            ((mgf) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(zdf.class).newInstance(this.a)).a(context, h6jVar, ubjVar, ygfVar, executor, vbfVar, list, 0L, false);
            return null;
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }
}
