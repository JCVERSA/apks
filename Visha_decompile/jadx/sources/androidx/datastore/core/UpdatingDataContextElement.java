package androidx.datastore.core;

import defpackage.s74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\fR\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\rR\u0018\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Landroidx/datastore/core/UpdatingDataContextElement;", "Lkotlin/coroutines/d$b;", "parent", "Landroidx/datastore/core/DataStoreImpl;", "instance", MethodDecl.initName, "(Landroidx/datastore/core/UpdatingDataContextElement;Landroidx/datastore/core/DataStoreImpl;)V", "Landroidx/datastore/core/DataStore;", "candidate", "Lzfb;", "checkNotUpdating", "(Landroidx/datastore/core/DataStore;)V", "Landroidx/datastore/core/UpdatingDataContextElement;", "Landroidx/datastore/core/DataStoreImpl;", "Lkotlin/coroutines/d$c;", "getKey", "()Lkotlin/coroutines/d$c;", "key", "Companion", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UpdatingDataContextElement implements d.b {

    public static final Companion INSTANCE = new Companion(null);
    private static final String NESTED_UPDATE_ERROR_MESSAGE = "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.";
    private final DataStoreImpl<?> instance;
    private final UpdatingDataContextElement parent;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/datastore/core/UpdatingDataContextElement$Companion;", "", "()V", "NESTED_UPDATE_ERROR_MESSAGE", "", "getNESTED_UPDATE_ERROR_MESSAGE$datastore_core_release", "()Ljava/lang/String;", "Key", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;", "Lkotlin/coroutines/d$c;", "Landroidx/datastore/core/UpdatingDataContextElement;", MethodDecl.initName, "()V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Key implements d.c {
            public static final Key INSTANCE = new Key();

            private Key() {
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getNESTED_UPDATE_ERROR_MESSAGE$datastore_core_release() {
            return UpdatingDataContextElement.NESTED_UPDATE_ERROR_MESSAGE;
        }

        private Companion() {
        }
    }

    public UpdatingDataContextElement(UpdatingDataContextElement updatingDataContextElement, DataStoreImpl<?> dataStoreImpl) {
        y45.j(dataStoreImpl, "instance");
        this.parent = updatingDataContextElement;
        this.instance = dataStoreImpl;
    }

    public final void checkNotUpdating(DataStore<?> candidate) {
        y45.j(candidate, "candidate");
        if (this.instance == candidate) {
            throw new IllegalStateException(NESTED_UPDATE_ERROR_MESSAGE.toString());
        }
        UpdatingDataContextElement updatingDataContextElement = this.parent;
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(candidate);
        }
    }

    @Override
    public <R> R fold(R r, s74 s74Var) {
        return (R) d.b.a.a(this, r, s74Var);
    }

    @Override
    public <E extends d.b> E get(d.c cVar) {
        return (E) d.b.a.b(this, cVar);
    }

    @Override
    public d.c getKey() {
        return Companion.Key.INSTANCE;
    }

    @Override
    public d minusKey(d.c cVar) {
        return d.b.a.c(this, cVar);
    }

    @Override
    public d plus(d dVar) {
        return d.b.a.d(this, dVar);
    }
}
