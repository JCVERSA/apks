package com.yandex.div.core.dagger;

import defpackage.c74;
import defpackage.oj8;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class DivKitHistogramsModule$provideDivParsingHistogramReporter$2 extends FunctionReferenceImpl implements c74 {
    public DivKitHistogramsModule$provideDivParsingHistogramReporter$2(Object obj) {
        super(0, obj, oj8.class, "get", "get()Ljava/lang/Object;", 0);
    }

    @Override
    public final Executor invoke() {
        return (Executor) ((oj8) this.receiver).get();
    }
}
