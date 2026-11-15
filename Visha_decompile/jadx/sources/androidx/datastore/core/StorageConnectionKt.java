package androidx.datastore.core;

import defpackage.nt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@¢\u0006\u0004\b\u0002\u0010\u0003\u001a(\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0086@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"T", "Landroidx/datastore/core/StorageConnection;", "readData", "(Landroidx/datastore/core/StorageConnection;Lwh1;)Ljava/lang/Object;", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "writeData", "(Landroidx/datastore/core/StorageConnection;Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class StorageConnectionKt {

    @Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "T", "Landroidx/datastore/core/ReadScope;", "it", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.StorageConnectionKt$readData$2", f = "StorageConnection.kt", l = {74}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements u74 {
        private Object L$0;
        int label;

        public AnonymousClass2(wh1<? super AnonymousClass2> wh1Var) {
            super(3, wh1Var);
        }

        public final Object invoke(ReadScope<T> readScope, boolean z, wh1<? super T> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(wh1Var);
            anonymousClass2.L$0 = readScope;
            return anonymousClass2.invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                ReadScope readScope = (ReadScope) this.L$0;
                this.label = 1;
                obj = readScope.readData(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return obj;
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((ReadScope) obj, ((Boolean) obj2).booleanValue(), (wh1) obj3);
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Landroidx/datastore/core/WriteScope;", "Lzfb;", "<anonymous>", "(Landroidx/datastore/core/WriteScope;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.StorageConnectionKt$writeData$2", f = "StorageConnection.kt", l = {77}, m = "invokeSuspend")
    public static final class C04952 extends SuspendLambda implements s74 {
        final T $value;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04952(T t, wh1<? super C04952> wh1Var) {
            super(2, wh1Var);
            this.$value = t;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            C04952 c04952 = new C04952(this.$value, wh1Var);
            c04952.L$0 = obj;
            return c04952;
        }

        @Override
        public final Object invoke(WriteScope<T> writeScope, wh1<? super zfb> wh1Var) {
            return ((C04952) create(writeScope, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                WriteScope writeScope = (WriteScope) this.L$0;
                T t = this.$value;
                this.label = 1;
                if (writeScope.writeData(t, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Object readData(StorageConnection<T> storageConnection, wh1<? super T> wh1Var) {
        return storageConnection.readScope(new AnonymousClass2(null), wh1Var);
    }

    public static final <T> Object writeData(StorageConnection<T> storageConnection, T t, wh1<? super zfb> wh1Var) {
        Object objWriteScope = storageConnection.writeScope(new C04952(t, null), wh1Var);
        return objWriteScope == z45.f() ? objWriteScope : zfb.a;
    }
}
