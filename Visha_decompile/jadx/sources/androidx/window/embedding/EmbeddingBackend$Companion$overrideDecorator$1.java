package androidx.window.embedding;

import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class EmbeddingBackend$Companion$overrideDecorator$1 extends FunctionReferenceImpl implements e74 {
    public EmbeddingBackend$Companion$overrideDecorator$1(Object obj) {
        super(1, obj, EmbeddingBackendDecorator.class, "decorate", "decorate(Landroidx/window/embedding/EmbeddingBackend;)Landroidx/window/embedding/EmbeddingBackend;", 0);
    }

    @Override
    public final EmbeddingBackend invoke(EmbeddingBackend embeddingBackend) {
        y45.j(embeddingBackend, "p0");
        return ((EmbeddingBackendDecorator) this.receiver).decorate(embeddingBackend);
    }
}
