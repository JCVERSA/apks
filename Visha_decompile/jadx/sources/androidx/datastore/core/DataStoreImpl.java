package androidx.datastore.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.media3.exoplayer.RendererCapabilities;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.abb;
import defpackage.c74;
import defpackage.cl0;
import defpackage.e74;
import defpackage.el0;
import defpackage.i81;
import defpackage.ib1;
import defpackage.kb1;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sw6;
import defpackage.sz3;
import defpackage.ue3;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.concurrent.CancellationException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.b;
import kotlin.c;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 ]*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002]^Ba\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u00120\b\u0002\u0010\u000b\u001a*\u0012&\u0012$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00060\u0005\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\tH\u0082@¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\tH\u0082@¢\u0006\u0004\b\u0014\u0010\u0013J\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@¢\u0006\u0004\b\u0018\u0010\u0019J\u001e\u0010\u001c\u001a\u00020\t2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0082@¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\tH\u0082@¢\u0006\u0004\b\u001e\u0010\u0013J\u001e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@¢\u0006\u0004\b\u001f\u0010\u0019J\u0010\u0010 \u001a\u00028\u0000H\u0082@¢\u0006\u0004\b \u0010\u0013J<\u0010$\u001a\u00028\u00002\"\u0010!\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00062\u0006\u0010#\u001a\u00020\"H\u0082@¢\u0006\u0004\b$\u0010%J\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000'2\u0006\u0010&\u001a\u00020\u0015H\u0082@¢\u0006\u0004\b(\u0010\u0019JI\u0010,\u001a\u00028\u0001\"\u0004\b\u0001\u0010)2\u0006\u0010&\u001a\u00020\u00152\u001c\u0010+\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\n0*H\u0082@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b,\u0010-J4\u0010.\u001a\u00028\u00002\"\u0010!\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0006H\u0096@¢\u0006\u0004\b.\u0010/J \u00105\u001a\u0002022\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u0015H\u0080@¢\u0006\u0004\b3\u00104R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u00106R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u00107R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u00108R \u0010:\u001a\b\u0012\u0004\u0012\u00028\u0000098\u0016X\u0096\u0004¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010?\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001a\u0010G\u001a\b\u0012\u0004\u0012\u00028\u00000F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u001e\u0010J\u001a\f0IR\b\u0012\u0004\u0012\u00028\u00000\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR \u0010N\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000M0L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u001b\u0010T\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010O\u001a\u0004\bR\u0010SR \u0010V\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR!\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000M8@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\bX\u0010Y*\u0004\bZ\u0010[¨\u0006_"}, d2 = {"Landroidx/datastore/core/DataStoreImpl;", "T", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/core/Storage;", "storage", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lwh1;", "Lzfb;", "", "initTasksList", "Landroidx/datastore/core/CorruptionHandler;", "corruptionHandler", "Lnk1;", "scope", MethodDecl.initName, "(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lnk1;)V", "incrementCollector", "(Lwh1;)Ljava/lang/Object;", "decrementCollector", "", "requireLock", "Landroidx/datastore/core/State;", "readState", "(ZLwh1;)Ljava/lang/Object;", "Landroidx/datastore/core/Message$Update;", "update", "handleUpdate", "(Landroidx/datastore/core/Message$Update;Lwh1;)Ljava/lang/Object;", "readAndInitOrPropagateAndThrowFailure", "readDataAndUpdateCache", "readDataFromFileOrDefault", "transform", "Lkotlin/coroutines/d;", "callerContext", "transformAndWrite", "(Ls74;Lkotlin/coroutines/d;Lwh1;)Ljava/lang/Object;", "hasWriteFileLock", "Landroidx/datastore/core/Data;", "readDataOrHandleCorruption", "R", "Lkotlin/Function1;", "block", "doWithWriteFileLock", "(ZLe74;Lwh1;)Ljava/lang/Object;", "updateData", "(Ls74;Lwh1;)Ljava/lang/Object;", "newData", "updateCache", "", "writeData$datastore_core_release", "(Ljava/lang/Object;ZLwh1;)Ljava/lang/Object;", "writeData", "Landroidx/datastore/core/Storage;", "Landroidx/datastore/core/CorruptionHandler;", "Lnk1;", "Lnz3;", "data", "Lnz3;", "getData", "()Lnz3;", "Lnw6;", "collectorMutex", "Lnw6;", "collectorCounter", "I", "Lkotlinx/coroutines/j;", "collectorJob", "Lkotlinx/coroutines/j;", "Landroidx/datastore/core/DataStoreInMemoryCache;", "inMemoryCache", "Landroidx/datastore/core/DataStoreInMemoryCache;", "Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "readAndInit", "Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "Lyi5;", "Landroidx/datastore/core/StorageConnection;", "storageConnectionDelegate", "Lyi5;", "Landroidx/datastore/core/InterProcessCoordinator;", "coordinator$delegate", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "coordinator", "Landroidx/datastore/core/SimpleActor;", "writeActor", "Landroidx/datastore/core/SimpleActor;", "getStorageConnection$datastore_core_release", "()Landroidx/datastore/core/StorageConnection;", "getStorageConnection$datastore_core_release$delegate", "(Landroidx/datastore/core/DataStoreImpl;)Ljava/lang/Object;", "storageConnection", "Companion", "InitDataStore", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreImpl<T> implements DataStore<T> {
    private static final String BUG_MESSAGE = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542";
    private int collectorCounter;
    private j collectorJob;
    private final nw6 collectorMutex;

    private final yi5 coordinator;
    private final CorruptionHandler<T> corruptionHandler;
    private final nz3 data;
    private final DataStoreInMemoryCache<T> inMemoryCache;
    private final DataStoreImpl<T>.InitDataStore readAndInit;
    private final nk1 scope;
    private final Storage<T> storage;
    private final yi5 storageConnectionDelegate;
    private final SimpleActor<Message.Update<T>> writeActor;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u00020\u0001B7\u0012.\u0010\b\u001a*\u0012&\u0012$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00030\u0002¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0006H\u0094@¢\u0006\u0004\b\u000b\u0010\fR@\u0010\r\u001a,\u0012&\u0012$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "Landroidx/datastore/core/RunOnce;", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lwh1;", "Lzfb;", "", "initTasksList", MethodDecl.initName, "(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V", "doRun", "(Lwh1;)Ljava/lang/Object;", "initTasks", "Ljava/util/List;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class InitDataStore extends RunOnce {
        private List<? extends s74> initTasks;
        final DataStoreImpl<T> this$0;

        public InitDataStore(DataStoreImpl dataStoreImpl, List<? extends s74> list) {
            y45.j(list, "initTasksList");
            this.this$0 = dataStoreImpl;
            this.initTasks = i81.b1(list);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public Object doRun(wh1<? super zfb> wh1Var) throws CorruptionException, IllegalAccessException, InvocationTargetException {
            DataStoreImpl$InitDataStore$doRun$1 dataStoreImpl$InitDataStore$doRun$1;
            Data data;
            if (wh1Var instanceof DataStoreImpl$InitDataStore$doRun$1) {
                dataStoreImpl$InitDataStore$doRun$1 = (DataStoreImpl$InitDataStore$doRun$1) wh1Var;
                int i = dataStoreImpl$InitDataStore$doRun$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$1.label = i - Integer.MIN_VALUE;
                } else {
                    dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, wh1Var);
                }
            } else {
                dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, wh1Var);
            }
            Object dataOrHandleCorruption = dataStoreImpl$InitDataStore$doRun$1.result;
            Object objF = z45.f();
            int i2 = dataStoreImpl$InitDataStore$doRun$1.label;
            if (i2 == 0) {
                c.b(dataOrHandleCorruption);
                List<? extends s74> list = this.initTasks;
                if (list != null) {
                    y45.g(list);
                    if (!list.isEmpty()) {
                        InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                        DataStoreImpl$InitDataStore$doRun$initData$1 dataStoreImpl$InitDataStore$doRun$initData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this, null);
                        dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                        dataStoreImpl$InitDataStore$doRun$1.label = 2;
                        dataOrHandleCorruption = coordinator.lock(dataStoreImpl$InitDataStore$doRun$initData$1, dataStoreImpl$InitDataStore$doRun$1);
                        if (dataOrHandleCorruption == objF) {
                            return objF;
                        }
                        data = (Data) dataOrHandleCorruption;
                    }
                }
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                dataStoreImpl$InitDataStore$doRun$1.label = 1;
                dataOrHandleCorruption = dataStoreImpl.readDataOrHandleCorruption(false, dataStoreImpl$InitDataStore$doRun$1);
                if (dataOrHandleCorruption == objF) {
                    return objF;
                }
                data = (Data) dataOrHandleCorruption;
            } else if (i2 == 1) {
                this = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                c.b(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                c.b(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            }
            ((DataStoreImpl) this.this$0).inMemoryCache.tryUpdate(data);
            return zfb.a;
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {544}, m = "decrementCollector")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DataStoreImpl<T> dataStoreImpl, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.decrementCollector(this);
        }
    }

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "R", "T"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3", f = "DataStoreImpl.kt", l = {TypedValues.CycleType.TYPE_PATH_ROTATE}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements e74 {
        final e74 $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(e74 e74Var, wh1<? super AnonymousClass3> wh1Var) {
            super(1, wh1Var);
            this.$block = e74Var;
        }

        @Override
        public final wh1<zfb> create(wh1<?> wh1Var) {
            return new AnonymousClass3(this.$block, wh1Var);
        }

        @Override
        public final Object invoke(wh1<? super R> wh1Var) {
            return ((AnonymousClass3) create(wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                e74 e74Var = this.$block;
                this.label = 1;
                obj = e74Var.invoke(this);
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
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {237, 243, 246}, m = "handleUpdate")
    public static final class C04821 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04821(DataStoreImpl<T> dataStoreImpl, wh1<? super C04821> wh1Var) {
            super(wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.handleUpdate(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {544}, m = "incrementCollector")
    public static final class C04831 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04831(DataStoreImpl<T> dataStoreImpl, wh1<? super C04831> wh1Var) {
            super(wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.incrementCollector(this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {264, 266}, m = "readAndInitOrPropagateAndThrowFailure")
    public static final class C04841 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04841(DataStoreImpl<T> dataStoreImpl, wh1<? super C04841> wh1Var) {
            super(wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readAndInitOrPropagateAndThrowFailure(this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {MediaPlayer.Event.VideoSize, MediaPlayer.Event.SubtitleType, 304}, m = "readDataAndUpdateCache")
    public static final class C04851 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04851(DataStoreImpl<T> dataStoreImpl, wh1<? super C04851> wh1Var) {
            super(wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataAndUpdateCache(false, this);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {MediaPlayer.Event.VideoFPS, 300}, m = "invokeSuspend")
    public static final class C04863 extends SuspendLambda implements e74 {
        Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04863(DataStoreImpl<T> dataStoreImpl, wh1<? super C04863> wh1Var) {
            super(1, wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final wh1<zfb> create(wh1<?> wh1Var) {
            return new C04863(this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(wh1<? super Pair<? extends State<T>, Boolean>> wh1Var) {
            return ((C04863) create(wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            State readException;
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i == 0) {
                    c.b(obj);
                    DataStoreImpl<T> dataStoreImpl = this.this$0;
                    this.label = 1;
                    obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        th = (Throwable) this.L$0;
                        c.b(obj);
                        readException = new ReadException(th, ((Number) obj).intValue());
                        return abb.a(readException, mk0.a(true));
                    }
                    c.b(obj);
                }
                readException = (State) obj;
            } catch (Throwable th2) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = th2;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version == objF) {
                    return objF;
                }
                obj = version;
                th = th2;
            }
            return abb.a(readException, mk0.a(true));
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", "", "locked"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, 309}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements s74 {
        final int $cachedVersion;
        Object L$0;
        boolean Z$0;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(DataStoreImpl<T> dataStoreImpl, int i, wh1<? super AnonymousClass4> wh1Var) {
            super(2, wh1Var);
            this.this$0 = dataStoreImpl;
            this.$cachedVersion = i;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.this$0, this.$cachedVersion, wh1Var);
            anonymousClass4.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass4;
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke(((Boolean) obj).booleanValue(), (wh1) obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v9 */
        @Override
        public final Object invokeSuspend(Object obj) {
            int iIntValue;
            Throwable th;
            boolean z;
            State readException;
            ?? r1;
            ?? r2;
            Object objF = z45.f();
            ?? r3 = this.label;
            try {
                if (r3 == 0) {
                    c.b(obj);
                    boolean z2 = this.Z$0;
                    DataStoreImpl<T> dataStoreImpl = this.this$0;
                    this.Z$0 = z2;
                    this.label = 1;
                    obj = dataStoreImpl.readDataOrHandleCorruption(z2, this);
                    r3 = z2;
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (r3 != 1) {
                        if (r3 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z = this.Z$0;
                        th = (Throwable) this.L$0;
                        c.b(obj);
                        iIntValue = ((Number) obj).intValue();
                        r2 = z;
                        readException = new ReadException(th, iIntValue);
                        r1 = r2;
                        return abb.a(readException, mk0.a(r1));
                    }
                    boolean z3 = this.Z$0;
                    c.b(obj);
                    r3 = z3;
                }
                readException = (State) obj;
                r1 = r3;
            } catch (Throwable th2) {
                if (r3 != 0) {
                    InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                    this.L$0 = th2;
                    this.Z$0 = r3;
                    this.label = 2;
                    Object version = coordinator.getVersion(this);
                    if (version == objF) {
                        return objF;
                    }
                    z = r3 == true ? 1 : 0;
                    obj = version;
                    th = th2;
                } else {
                    iIntValue = this.$cachedVersion;
                    th = th2;
                    r2 = r3;
                }
                readException = new ReadException(th, iIntValue);
                r1 = r2;
                return abb.a(readException, mk0.a(r1));
            }
            return abb.a(readException, mk0.a(r1));
        }

        public final Object invoke(boolean z, wh1<? super Pair<? extends State<T>, Boolean>> wh1Var) {
            return ((AnonymousClass4) create(Boolean.valueOf(z), wh1Var)).invokeSuspend(zfb.a);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 366, 368, 369, 380, RendererCapabilities.DECODER_SUPPORT_MASK}, m = "readDataOrHandleCorruption")
    public static final class C04871 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04871(DataStoreImpl<T> dataStoreImpl, wh1<? super C04871> wh1Var) {
            super(wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataOrHandleCorruption(false, this);
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", "T", "locked", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", l = {370, 371}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final int $preLockVersion;
        Object L$0;
        boolean Z$0;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(DataStoreImpl<T> dataStoreImpl, int i, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.this$0 = dataStoreImpl;
            this.$preLockVersion = i;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$preLockVersion, wh1Var);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke(((Boolean) obj).booleanValue(), (wh1) obj2);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x005a  */
        /* JADX WARN: Code duplicated, block: B:23:0x005f  */
        @Override
        public final Object invokeSuspend(Object obj) {
            boolean z;
            int iIntValue;
            Object obj2;
            int iHashCode;
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    z = this.Z$0;
                    c.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj2 = this.L$0;
                    c.b(obj);
                }
                iIntValue = ((Number) obj).intValue();
                if (obj2 != null) {
                    iHashCode = obj2.hashCode();
                } else {
                    iHashCode = 0;
                }
                return new Data(obj2, iHashCode, iIntValue);
            }
            c.b(obj);
            z = this.Z$0;
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            this.Z$0 = z;
            this.label = 1;
            obj = dataStoreImpl.readDataFromFileOrDefault(this);
            if (obj == objF) {
                return objF;
            }
            if (z) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = obj;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version == objF) {
                    return objF;
                }
                Object obj3 = obj;
                obj = version;
                obj2 = obj3;
                iIntValue = ((Number) obj).intValue();
            } else {
                Object obj4 = obj;
                iIntValue = this.$preLockVersion;
                obj2 = obj4;
            }
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            return new Data(obj2, iHashCode, iIntValue);
        }

        public final Object invoke(boolean z, wh1<? super Data<T>> wh1Var) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), wh1Var)).invokeSuspend(zfb.a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"T", "Lzfb;", "<anonymous>", "()V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", l = {387, 388, 390}, m = "invokeSuspend")
    public static final class C04883 extends SuspendLambda implements e74 {
        final Ref$ObjectRef<T> $newData;
        final Ref$IntRef $version;
        Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04883(Ref$ObjectRef<T> ref$ObjectRef, DataStoreImpl<T> dataStoreImpl, Ref$IntRef ref$IntRef, wh1<? super C04883> wh1Var) {
            super(1, wh1Var);
            this.$newData = ref$ObjectRef;
            this.this$0 = dataStoreImpl;
            this.$version = ref$IntRef;
        }

        @Override
        public final wh1<zfb> create(wh1<?> wh1Var) {
            return new C04883(this.$newData, this.this$0, this.$version, wh1Var);
        }

        @Override
        public final Object invoke(wh1<? super zfb> wh1Var) {
            return ((C04883) create(wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Ref$IntRef ref$IntRef;
            Ref$ObjectRef<T> ref$ObjectRef;
            Ref$IntRef ref$IntRef2;
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i != 0) {
                    if (i == 1) {
                        ref$ObjectRef = (Ref$ObjectRef) this.L$0;
                        c.b(obj);
                    } else {
                        if (i != 2) {
                            if (i != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ref$IntRef = (Ref$IntRef) this.L$0;
                            c.b(obj);
                            ref$IntRef.element = ((Number) obj).intValue();
                            return zfb.a;
                        }
                        ref$IntRef2 = (Ref$IntRef) this.L$0;
                        c.b(obj);
                    }
                    ref$IntRef2.element = ((Number) obj).intValue();
                    return zfb.a;
                }
                c.b(obj);
                ref$ObjectRef = this.$newData;
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.L$0 = ref$ObjectRef;
                this.label = 1;
                obj = (T) dataStoreImpl.readDataFromFileOrDefault(this);
                if (obj == objF) {
                    return objF;
                }
                ref$ObjectRef.element = (T) obj;
                ref$IntRef2 = this.$version;
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = ref$IntRef2;
                this.label = 2;
                obj = (T) coordinator.getVersion(this);
                if (obj == objF) {
                    return objF;
                }
                ref$IntRef2.element = ((Number) obj).intValue();
            } catch (CorruptionException unused) {
                Ref$IntRef ref$IntRef3 = this.$version;
                DataStoreImpl<T> dataStoreImpl2 = this.this$0;
                T t = this.$newData.element;
                this.L$0 = ref$IntRef3;
                this.label = 3;
                Object objWriteData$datastore_core_release = dataStoreImpl2.writeData$datastore_core_release(t, true, this);
                if (objWriteData$datastore_core_release == objF) {
                    return objF;
                }
                obj = (T) objWriteData$datastore_core_release;
                ref$IntRef = ref$IntRef3;
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lnk1;", "Landroidx/datastore/core/State;", "<anonymous>", "(Lnk1;)Landroidx/datastore/core/State;"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.DataStoreImpl$readState$2", f = "DataStoreImpl.kt", l = {IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK}, m = "invokeSuspend")
    public static final class C04892 extends SuspendLambda implements s74 {
        final boolean $requireLock;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04892(DataStoreImpl<T> dataStoreImpl, boolean z, wh1<? super C04892> wh1Var) {
            super(2, wh1Var);
            this.this$0 = dataStoreImpl;
            this.$requireLock = z;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new C04892(this.this$0, this.$requireLock, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super State<T>> wh1Var) {
            return ((C04892) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i != 0) {
                    if (i == 1) {
                        c.b(obj);
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        c.b(obj);
                    }
                    return (State) obj;
                }
                c.b(obj);
                if (((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState() instanceof Final) {
                    return ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState();
                }
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.readAndInitOrPropagateAndThrowFailure(this) == objF) {
                    return objF;
                }
                DataStoreImpl<T> dataStoreImpl2 = this.this$0;
                boolean z = this.$requireLock;
                this.label = 2;
                obj = dataStoreImpl2.readDataAndUpdateCache(z, this);
                if (obj == objF) {
                    return objF;
                }
                return (State) obj;
            } catch (Throwable th) {
                return new ReadException(th, -1);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\u008a@"}, d2 = {"<anonymous>", "T"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", f = "DataStoreImpl.kt", l = {330, 331, 337}, m = "invokeSuspend")
    public static final class C04902 extends SuspendLambda implements e74 {
        final d $callerContext;
        final s74 $transform;
        Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04902(DataStoreImpl<T> dataStoreImpl, d dVar, s74 s74Var, wh1<? super C04902> wh1Var) {
            super(1, wh1Var);
            this.this$0 = dataStoreImpl;
            this.$callerContext = dVar;
            this.$transform = s74Var;
        }

        @Override
        public final wh1<zfb> create(wh1<?> wh1Var) {
            return new C04902(this.this$0, this.$callerContext, this.$transform, wh1Var);
        }

        @Override
        public final Object invoke(wh1<? super T> wh1Var) {
            return ((C04902) create(wh1Var)).invokeSuspend(zfb.a);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type wh1 to androidx.datastore.core.DataStoreImpl$transformAndWrite$2 for r8v6 'this'  wh1
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = defpackage.z45.f()
                int r1 = r8.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2b
                if (r1 == r4) goto L27
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r8 = r8.L$0
                kotlin.c.b(r9)
                goto L6c
            L17:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L1f:
                java.lang.Object r1 = r8.L$0
                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                kotlin.c.b(r9)
                goto L51
            L27:
                kotlin.c.b(r9)
                goto L39
            L2b:
                kotlin.c.b(r9)
                androidx.datastore.core.DataStoreImpl<T> r9 = r8.this$0
                r8.label = r4
                java.lang.Object r9 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r9, r4, r8)
                if (r9 != r0) goto L39
                return r0
            L39:
                r1 = r9
                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                kotlin.coroutines.d r9 = r8.$callerContext
                androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1 r5 = new androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1
                s74 r6 = r8.$transform
                r7 = 0
                r5.<init>(r6, r1, r7)
                r8.L$0 = r1
                r8.label = r3
                java.lang.Object r9 = defpackage.cl0.g(r9, r5, r8)
                if (r9 != r0) goto L51
                return r0
            L51:
                r1.checkHashCode()
                java.lang.Object r1 = r1.getValue()
                boolean r1 = defpackage.y45.e(r1, r9)
                if (r1 != 0) goto L6d
                androidx.datastore.core.DataStoreImpl<T> r1 = r8.this$0
                r8.L$0 = r9
                r8.label = r2
                java.lang.Object r8 = r1.writeData$datastore_core_release(r9, r4, r8)
                if (r8 != r0) goto L6b
                return r0
            L6b:
                r8 = r9
            L6c:
                r9 = r8
            L6d:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.C04902.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lnk1;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", l = {169}, m = "invokeSuspend")
    public static final class C04912 extends SuspendLambda implements s74 {
        final s74 $transform;
        private Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04912(DataStoreImpl<T> dataStoreImpl, s74 s74Var, wh1<? super C04912> wh1Var) {
            super(2, wh1Var);
            this.this$0 = dataStoreImpl;
            this.$transform = s74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            C04912 c04912 = new C04912(this.this$0, this.$transform, wh1Var);
            c04912.L$0 = obj;
            return c04912;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super T> wh1Var) {
            return ((C04912) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                nk1 nk1Var = (nk1) this.L$0;
                ib1 ib1VarC = kb1.c(null, 1, null);
                ((DataStoreImpl) this.this$0).writeActor.offer(new Message.Update(this.$transform, ib1VarC, ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState(), nk1Var.getCoroutineContext()));
                this.label = 1;
                obj = ib1VarC.o(this);
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
    }

    public DataStoreImpl(Storage<T> storage, List<? extends s74> list, CorruptionHandler<T> corruptionHandler, nk1 nk1Var) {
        y45.j(storage, "storage");
        y45.j(list, "initTasksList");
        y45.j(corruptionHandler, "corruptionHandler");
        y45.j(nk1Var, "scope");
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = nk1Var;
        this.data = sz3.r(new DataStoreImpl$data$1(this, null));
        this.collectorMutex = sw6.b(false, 1, null);
        this.inMemoryCache = new DataStoreInMemoryCache<>();
        this.readAndInit = new InitDataStore(this, list);
        this.storageConnectionDelegate = b.a(new c74(this) {
            final DataStoreImpl<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public final StorageConnection<T> invoke() {
                return ((DataStoreImpl) this.this$0).storage.createConnection();
            }
        });
        this.coordinator = b.a(new c74(this) {
            final DataStoreImpl<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public final InterProcessCoordinator invoke() {
                return this.this$0.getStorageConnection$datastore_core_release().getCoordinator();
            }
        });
        this.writeActor = new SimpleActor<>(nk1Var, new e74(this) {
            final DataStoreImpl<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return zfb.a;
            }

            public final void invoke(Throwable th) {
                if (th != null) {
                    ((DataStoreImpl) this.this$0).inMemoryCache.tryUpdate(new Final(th));
                }
                if (((DataStoreImpl) this.this$0).storageConnectionDelegate.isInitialized()) {
                    this.this$0.getStorageConnection$datastore_core_release().close();
                }
            }
        }, new s74() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((Message.Update) obj, (Throwable) obj2);
                return zfb.a;
            }

            public final void invoke(Message.Update<T> update, Throwable th) {
                y45.j(update, NotificationCompat.CATEGORY_MESSAGE);
                ib1 ack = update.getAck();
                if (th == null) {
                    th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                ack.g(th);
            }
        }, new DataStoreImpl$writeActor$3(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object decrementCollector(wh1<? super zfb> wh1Var) {
        AnonymousClass1 anonymousClass1;
        nw6 nw6Var;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            c.b(obj);
            nw6Var = this.collectorMutex;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = nw6Var;
            anonymousClass1.label = 1;
            if (nw6Var.c(null, anonymousClass1) == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nw6 nw6Var2 = (nw6) anonymousClass1.L$1;
            DataStoreImpl<T> dataStoreImpl = (DataStoreImpl) anonymousClass1.L$0;
            c.b(obj);
            nw6Var = nw6Var2;
            this = dataStoreImpl;
        }
        try {
            int i3 = this.collectorCounter - 1;
            this.collectorCounter = i3;
            if (i3 == 0) {
                j jVar = this.collectorJob;
                if (jVar != null) {
                    j.a.b(jVar, null, 1, null);
                }
                this.collectorJob = null;
            }
            zfb zfbVar = zfb.a;
            return zfb.a;
        } finally {
            nw6Var.b(null);
        }
    }

    public final <R> Object doWithWriteFileLock(boolean z, e74 e74Var, wh1<? super R> wh1Var) {
        return z ? e74Var.invoke(wh1Var) : getCoordinator().lock(new AnonymousClass3(e74Var, null), wh1Var);
    }

    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.datastore.core.DataStoreImpl, androidx.datastore.core.DataStoreImpl<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [androidx.datastore.core.DataStoreImpl] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [ib1] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v5 */
    public final Object handleUpdate(Message.Update<T> update, wh1<? super zfb> wh1Var) {
        C04821 c04821;
        Object objM279constructorimpl;
        ?? r8;
        ib1 ack;
        Object objTransformAndWrite;
        ?? r9;
        ib1 ib1Var;
        if (wh1Var instanceof C04821) {
            c04821 = (C04821) wh1Var;
            int i = c04821.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04821.label = i - Integer.MIN_VALUE;
            } else {
                c04821 = new C04821(this, wh1Var);
            }
        } else {
            c04821 = new C04821(this, wh1Var);
        }
        Object obj = c04821.result;
        Object objF = z45.f();
        int i2 = c04821.label;
        boolean z = true;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    ib1Var = (ib1) c04821.L$0;
                } else if (i2 == 2) {
                    ib1 ib1Var2 = (ib1) c04821.L$2;
                    DataStoreImpl dataStoreImpl = (DataStoreImpl) c04821.L$1;
                    Message.Update<T> update2 = (Message.Update) c04821.L$0;
                    c.b(obj);
                    ack = ib1Var2;
                    boolean z2 = (DataStoreImpl<T>) dataStoreImpl;
                    update = update2;
                    r9 = z2;
                } else {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ib1Var = (DataStoreImpl<T>) ((ib1) c04821.L$0);
                }
                c.b(obj);
                this = ib1Var;
                objM279constructorimpl = Result.m279constructorimpl(obj);
                r8 = this;
                kb1.d(r8, objM279constructorimpl);
                return zfb.a;
            }
            c.b(obj);
            ack = update.getAck();
            try {
                Result.Companion companion = Result.INSTANCE;
                State<T> currentState = this.inMemoryCache.getCurrentState();
                if (currentState instanceof Data) {
                    s74 transform = update.getTransform();
                    d callerContext = update.getCallerContext();
                    c04821.L$0 = ack;
                    c04821.label = 1;
                    objTransformAndWrite = transformAndWrite(transform, callerContext, c04821);
                    if (objTransformAndWrite == objF) {
                        return objF;
                    }
                } else {
                    if (!(currentState instanceof ReadException)) {
                        z = currentState instanceof UnInitialized;
                    }
                    if (!z) {
                        if (currentState instanceof Final) {
                            throw ((Final) currentState).getFinalException();
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    if (currentState != update.getLastState()) {
                        y45.h(currentState, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>");
                        throw ((ReadException) currentState).getReadException();
                    }
                    c04821.L$0 = update;
                    c04821.L$1 = this;
                    c04821.L$2 = ack;
                    c04821.label = 2;
                    if (readAndInitOrPropagateAndThrowFailure(c04821) == objF) {
                        this = this;
                        return objF;
                    }
                }
                ib1 ib1Var3 = ack;
                obj = objTransformAndWrite;
                this = ib1Var3;
                objM279constructorimpl = Result.m279constructorimpl(obj);
                r8 = this;
            } catch (Throwable th) {
                th = th;
                this = ack;
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
                r8 = this;
            }
            kb1.d(r8, objM279constructorimpl);
            return zfb.a;
            this = this;
            s74 transform2 = update.getTransform();
            d callerContext2 = update.getCallerContext();
            c04821.L$0 = ack;
            c04821.L$1 = null;
            c04821.L$2 = null;
            c04821.label = 3;
            objTransformAndWrite = r9.transformAndWrite(transform2, callerContext2, c04821);
            if (objTransformAndWrite == objF) {
                return objF;
            }
            ib1 ib1Var4 = ack;
            obj = objTransformAndWrite;
            this = ib1Var4;
            objM279constructorimpl = Result.m279constructorimpl(obj);
            r8 = this;
        } catch (Throwable th2) {
            th = th2;
        }
        kb1.d(r8, objM279constructorimpl);
        return zfb.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object incrementCollector(wh1<? super zfb> wh1Var) {
        C04831 c04831;
        nw6 nw6Var;
        if (wh1Var instanceof C04831) {
            c04831 = (C04831) wh1Var;
            int i = c04831.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04831.label = i - Integer.MIN_VALUE;
            } else {
                c04831 = new C04831(this, wh1Var);
            }
        } else {
            c04831 = new C04831(this, wh1Var);
        }
        Object obj = c04831.result;
        Object objF = z45.f();
        int i2 = c04831.label;
        if (i2 == 0) {
            c.b(obj);
            nw6Var = this.collectorMutex;
            c04831.L$0 = this;
            c04831.L$1 = nw6Var;
            c04831.label = 1;
            if (nw6Var.c(null, c04831) == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nw6 nw6Var2 = (nw6) c04831.L$1;
            DataStoreImpl<T> dataStoreImpl = (DataStoreImpl) c04831.L$0;
            c.b(obj);
            nw6Var = nw6Var2;
            this = dataStoreImpl;
        }
        try {
            int i3 = this.collectorCounter + 1;
            this.collectorCounter = i3;
            if (i3 == 1) {
                this.collectorJob = el0.d(this.scope, null, null, new DataStoreImpl$incrementCollector$2$1(this, null), 3, null);
            }
            zfb zfbVar = zfb.a;
            return zfb.a;
        } finally {
            nw6Var.b(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object readAndInitOrPropagateAndThrowFailure(wh1<? super zfb> wh1Var) throws Throwable {
        C04841 c04841;
        int iIntValue;
        DataStoreImpl<T> dataStoreImpl;
        int i;
        Throwable th;
        if (wh1Var instanceof C04841) {
            c04841 = (C04841) wh1Var;
            int i2 = c04841.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c04841.label = i2 - Integer.MIN_VALUE;
            } else {
                c04841 = new C04841(this, wh1Var);
            }
        } else {
            c04841 = new C04841(this, wh1Var);
        }
        Object version = c04841.result;
        Object objF = z45.f();
        int i3 = c04841.label;
        try {
            if (i3 == 0) {
                c.b(version);
                InterProcessCoordinator coordinator = getCoordinator();
                c04841.L$0 = this;
                c04841.label = 1;
                version = coordinator.getVersion(c04841);
                if (version == objF) {
                    return objF;
                }
            } else {
                if (i3 != 1) {
                    if (i3 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i = c04841.I$0;
                    dataStoreImpl = (DataStoreImpl) c04841.L$0;
                    try {
                        c.b(version);
                        return zfb.a;
                    } catch (Throwable th2) {
                        th = th2;
                        dataStoreImpl.inMemoryCache.tryUpdate(new ReadException(th, i));
                        throw th;
                    }
                }
                this = (DataStoreImpl) c04841.L$0;
                c.b(version);
            }
            DataStoreImpl<T>.InitDataStore initDataStore = this.readAndInit;
            c04841.L$0 = this;
            c04841.I$0 = iIntValue;
            c04841.label = 2;
            if (initDataStore.runIfNeeded(c04841) == objF) {
                return objF;
            }
            return zfb.a;
        } catch (Throwable th3) {
            dataStoreImpl = this;
            i = iIntValue;
            th = th3;
            dataStoreImpl.inMemoryCache.tryUpdate(new ReadException(th, i));
            throw th;
        }
        iIntValue = ((Number) version).intValue();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object readDataAndUpdateCache(boolean z, wh1<? super State<T>> wh1Var) {
        C04851 c04851;
        DataStoreImpl<T> dataStoreImpl;
        State<T> state;
        DataStoreImpl<T> dataStoreImpl2;
        Pair pair;
        State<T> state2;
        if (wh1Var instanceof C04851) {
            c04851 = (C04851) wh1Var;
            int i = c04851.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04851.label = i - Integer.MIN_VALUE;
            } else {
                c04851 = new C04851(this, wh1Var);
            }
        } else {
            c04851 = new C04851(this, wh1Var);
        }
        Object objTryLock = c04851.result;
        Object objF = z45.f();
        int i2 = c04851.label;
        if (i2 == 0) {
            c.b(objTryLock);
            State<T> currentState = this.inMemoryCache.getCurrentState();
            if (currentState instanceof UnInitialized) {
                throw new IllegalStateException(BUG_MESSAGE);
            }
            InterProcessCoordinator coordinator = getCoordinator();
            c04851.L$0 = this;
            c04851.L$1 = currentState;
            c04851.Z$0 = z;
            c04851.label = 1;
            Object version = coordinator.getVersion(c04851);
            if (version == objF) {
                return objF;
            }
            dataStoreImpl = this;
            state = currentState;
            objTryLock = version;
        } else {
            if (i2 != 1) {
                if (i2 == 2) {
                    dataStoreImpl2 = (DataStoreImpl) c04851.L$0;
                    c.b(objTryLock);
                    pair = (Pair) objTryLock;
                    state2 = (State) pair.component1();
                    if (((Boolean) pair.component2()).booleanValue()) {
                        dataStoreImpl2.inMemoryCache.tryUpdate(state2);
                    }
                    return state2;
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dataStoreImpl2 = (DataStoreImpl) c04851.L$0;
                c.b(objTryLock);
                pair = (Pair) objTryLock;
                state2 = (State) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                    dataStoreImpl2.inMemoryCache.tryUpdate(state2);
                }
                return state2;
            }
            z = c04851.Z$0;
            state = (State) c04851.L$1;
            dataStoreImpl = (DataStoreImpl) c04851.L$0;
            c.b(objTryLock);
        }
        int iIntValue = ((Number) objTryLock).intValue();
        boolean z2 = state instanceof Data;
        int version2 = z2 ? state.getVersion() : -1;
        if (z2 && iIntValue == version2) {
            return state;
        }
        if (z) {
            InterProcessCoordinator coordinator2 = dataStoreImpl.getCoordinator();
            C04863 c04863 = new C04863(dataStoreImpl, null);
            c04851.L$0 = dataStoreImpl;
            c04851.L$1 = null;
            c04851.label = 2;
            objTryLock = coordinator2.lock(c04863, c04851);
            if (objTryLock == objF) {
                return objF;
            }
            dataStoreImpl2 = dataStoreImpl;
            pair = (Pair) objTryLock;
            state2 = (State) pair.component1();
            if (((Boolean) pair.component2()).booleanValue()) {
                dataStoreImpl2.inMemoryCache.tryUpdate(state2);
            }
            return state2;
        }
        InterProcessCoordinator coordinator3 = dataStoreImpl.getCoordinator();
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(dataStoreImpl, version2, null);
        c04851.L$0 = dataStoreImpl;
        c04851.L$1 = null;
        c04851.label = 3;
        objTryLock = coordinator3.tryLock(anonymousClass4, c04851);
        if (objTryLock == objF) {
            return objF;
        }
        dataStoreImpl2 = dataStoreImpl;
        pair = (Pair) objTryLock;
        state2 = (State) pair.component1();
        if (((Boolean) pair.component2()).booleanValue()) {
            dataStoreImpl2.inMemoryCache.tryUpdate(state2);
        }
        return state2;
    }

    public final Object readDataFromFileOrDefault(wh1<? super T> wh1Var) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a2 A[Catch: CorruptionException -> 0x0064, TryCatch #1 {CorruptionException -> 0x0064, blocks: (B:19:0x005f, B:54:0x00fe, B:24:0x006d, B:51:0x00e1, B:32:0x008a, B:40:0x00a2, B:42:0x00a8, B:36:0x0093, B:48:0x00cf), top: B:76:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00be  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:63:0x0140 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0141  */
    /* JADX WARN: Code duplicated, block: B:67:0x0149  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object readDataOrHandleCorruption(boolean z, wh1<? super Data<T>> wh1Var) throws CorruptionException, IllegalAccessException, InvocationTargetException {
        C04871 c04871;
        Ref$ObjectRef ref$ObjectRef;
        DataStoreImpl<T> dataStoreImpl;
        boolean z2;
        Ref$ObjectRef ref$ObjectRef2;
        CorruptionException corruptionException;
        Ref$IntRef ref$IntRef;
        CorruptionException corruptionException2;
        C04883 c04883;
        Ref$IntRef ref$IntRef2;
        Ref$ObjectRef ref$ObjectRef3;
        int iHashCode;
        Object version;
        DataStoreImpl<T> dataStoreImpl2;
        int i;
        Object obj;
        if (wh1Var instanceof C04871) {
            c04871 = (C04871) wh1Var;
            int i2 = c04871.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c04871.label = i2 - Integer.MIN_VALUE;
            } else {
                c04871 = new C04871(this, wh1Var);
            }
        } else {
            c04871 = new C04871(this, wh1Var);
        }
        Object obj2 = (T) c04871.result;
        Object objF = z45.f();
        try {
            switch (c04871.label) {
                case 0:
                    c.b(obj2);
                    if (!z) {
                        InterProcessCoordinator coordinator = getCoordinator();
                        c04871.L$0 = this;
                        c04871.Z$0 = z;
                        c04871.label = 3;
                        obj2 = (T) coordinator.getVersion(c04871);
                        if (obj2 == objF) {
                            return objF;
                        }
                        int iIntValue = ((Number) obj2).intValue();
                        InterProcessCoordinator coordinator2 = this.getCoordinator();
                        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, iIntValue, null);
                        c04871.L$0 = this;
                        c04871.Z$0 = z;
                        c04871.label = 4;
                        obj2 = (T) coordinator2.tryLock(anonymousClass2, c04871);
                        if (obj2 == objF) {
                            return objF;
                        }
                        return (Data) obj2;
                    }
                    c04871.L$0 = this;
                    c04871.Z$0 = z;
                    c04871.label = 1;
                    obj2 = (T) readDataFromFileOrDefault(c04871);
                    if (obj2 == objF) {
                        return objF;
                    }
                    if (obj2 != null) {
                        iHashCode = obj2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator coordinator3 = this.getCoordinator();
                    c04871.L$0 = this;
                    c04871.L$1 = obj2;
                    c04871.Z$0 = z;
                    c04871.I$0 = iHashCode;
                    c04871.label = 2;
                    version = coordinator3.getVersion(c04871);
                    if (version == objF) {
                        return objF;
                    }
                    dataStoreImpl2 = this;
                    i = iHashCode;
                    obj = obj2;
                    obj2 = (T) version;
                    return new Data(obj, i, ((Number) obj2).intValue());
                case 1:
                    z = c04871.Z$0;
                    this = (DataStoreImpl) c04871.L$0;
                    c.b(obj2);
                    if (obj2 != null) {
                        iHashCode = obj2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator coordinator4 = this.getCoordinator();
                    c04871.L$0 = this;
                    c04871.L$1 = obj2;
                    c04871.Z$0 = z;
                    c04871.I$0 = iHashCode;
                    c04871.label = 2;
                    version = coordinator4.getVersion(c04871);
                    if (version == objF) {
                        return objF;
                    }
                    dataStoreImpl2 = this;
                    i = iHashCode;
                    obj = obj2;
                    obj2 = (T) version;
                    return new Data(obj, i, ((Number) obj2).intValue());
                case 2:
                    i = c04871.I$0;
                    z = c04871.Z$0;
                    obj = c04871.L$1;
                    dataStoreImpl2 = (DataStoreImpl) c04871.L$0;
                    try {
                        c.b(obj2);
                        return new Data(obj, i, ((Number) obj2).intValue());
                    } catch (CorruptionException e) {
                        e = e;
                        this = dataStoreImpl2;
                        ref$ObjectRef = new Ref$ObjectRef();
                        CorruptionHandler<T> corruptionHandler = this.corruptionHandler;
                        c04871.L$0 = this;
                        c04871.L$1 = e;
                        c04871.L$2 = ref$ObjectRef;
                        c04871.L$3 = ref$ObjectRef;
                        c04871.Z$0 = z;
                        c04871.label = 5;
                        Object objHandleCorruption = corruptionHandler.handleCorruption(e, c04871);
                        if (objHandleCorruption == objF) {
                            return objF;
                        }
                        dataStoreImpl = this;
                        z2 = z;
                        ref$ObjectRef2 = ref$ObjectRef;
                        corruptionException = e;
                        obj2 = (T) objHandleCorruption;
                        ref$ObjectRef2.element = (T) obj2;
                        ref$IntRef = new Ref$IntRef();
                        try {
                            c04883 = new C04883(ref$ObjectRef, dataStoreImpl, ref$IntRef, null);
                            c04871.L$0 = corruptionException;
                            c04871.L$1 = ref$ObjectRef;
                            c04871.L$2 = ref$IntRef;
                            c04871.L$3 = null;
                            c04871.label = 6;
                            if (dataStoreImpl.doWithWriteFileLock(z2, c04883, c04871) == objF) {
                                return objF;
                            }
                            ref$IntRef2 = ref$IntRef;
                            ref$ObjectRef3 = ref$ObjectRef;
                            T t = ref$ObjectRef3.element;
                            return new Data(t, t != null ? t.hashCode() : 0, ref$IntRef2.element);
                        } catch (Throwable th) {
                            th = th;
                            corruptionException2 = corruptionException;
                            ue3.a(corruptionException2, th);
                            throw corruptionException2;
                        }
                    }
                case 3:
                    z = c04871.Z$0;
                    this = (DataStoreImpl) c04871.L$0;
                    c.b(obj2);
                    int iIntValue2 = ((Number) obj2).intValue();
                    InterProcessCoordinator coordinator5 = this.getCoordinator();
                    AnonymousClass2 anonymousClass3 = new AnonymousClass2(this, iIntValue2, null);
                    c04871.L$0 = this;
                    c04871.Z$0 = z;
                    c04871.label = 4;
                    obj2 = (T) coordinator5.tryLock(anonymousClass3, c04871);
                    if (obj2 == objF) {
                        return objF;
                    }
                    return (Data) obj2;
                case 4:
                    boolean z3 = c04871.Z$0;
                    c.b(obj2);
                    return (Data) obj2;
                case 5:
                    z2 = c04871.Z$0;
                    ref$ObjectRef2 = (Ref$ObjectRef) c04871.L$3;
                    ref$ObjectRef = (Ref$ObjectRef) c04871.L$2;
                    corruptionException = (CorruptionException) c04871.L$1;
                    dataStoreImpl = (DataStoreImpl) c04871.L$0;
                    c.b(obj2);
                    ref$ObjectRef2.element = (T) obj2;
                    ref$IntRef = new Ref$IntRef();
                    c04883 = new C04883(ref$ObjectRef, dataStoreImpl, ref$IntRef, null);
                    c04871.L$0 = corruptionException;
                    c04871.L$1 = ref$ObjectRef;
                    c04871.L$2 = ref$IntRef;
                    c04871.L$3 = null;
                    c04871.label = 6;
                    if (dataStoreImpl.doWithWriteFileLock(z2, c04883, c04871) == objF) {
                        return objF;
                    }
                    ref$IntRef2 = ref$IntRef;
                    ref$ObjectRef3 = ref$ObjectRef;
                    T t2 = ref$ObjectRef3.element;
                    return new Data(t2, t2 != null ? t2.hashCode() : 0, ref$IntRef2.element);
                case 6:
                    ref$IntRef2 = (Ref$IntRef) c04871.L$2;
                    ref$ObjectRef3 = (Ref$ObjectRef) c04871.L$1;
                    corruptionException2 = (CorruptionException) c04871.L$0;
                    try {
                        c.b(obj2);
                        T t3 = ref$ObjectRef3.element;
                        return new Data(t3, t3 != null ? t3.hashCode() : 0, ref$IntRef2.element);
                    } catch (Throwable th2) {
                        th = th2;
                        ue3.a(corruptionException2, th);
                        throw corruptionException2;
                    }
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (CorruptionException e2) {
            e = e2;
        }
    }

    public final Object readState(boolean z, wh1<? super State<T>> wh1Var) {
        return cl0.g(this.scope.getCoroutineContext(), new C04892(this, z, null), wh1Var);
    }

    public final Object transformAndWrite(s74 s74Var, d dVar, wh1<? super T> wh1Var) {
        return getCoordinator().lock(new C04902(this, dVar, s74Var, null), wh1Var);
    }

    @Override
    public nz3 getData() {
        return this.data;
    }

    public final StorageConnection<T> getStorageConnection$datastore_core_release() {
        return (StorageConnection) this.storageConnectionDelegate.getValue();
    }

    @Override
    public Object updateData(s74 s74Var, wh1<? super T> wh1Var) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) wh1Var.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return cl0.g(new UpdatingDataContextElement(updatingDataContextElement, this), new C04912(this, s74Var, null), wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object writeData$datastore_core_release(T t, boolean z, wh1<? super Integer> wh1Var) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        Ref$IntRef ref$IntRef;
        if (wh1Var instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) wh1Var;
            int i = dataStoreImpl$writeData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, wh1Var);
            }
        } else {
            dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, wh1Var);
        }
        Object obj = dataStoreImpl$writeData$1.result;
        Object objF = z45.f();
        int i2 = dataStoreImpl$writeData$1.label;
        if (i2 == 0) {
            c.b(obj);
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            StorageConnection<T> storageConnection$datastore_core_release = getStorageConnection$datastore_core_release();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(ref$IntRef2, this, t, z, null);
            dataStoreImpl$writeData$1.L$0 = ref$IntRef2;
            dataStoreImpl$writeData$1.label = 1;
            if (storageConnection$datastore_core_release.writeScope(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == objF) {
                return objF;
            }
            ref$IntRef = ref$IntRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$IntRef = (Ref$IntRef) dataStoreImpl$writeData$1.L$0;
            c.b(obj);
        }
        return mk0.b(ref$IntRef.element);
    }

    public DataStoreImpl(Storage storage, List list, CorruptionHandler corruptionHandler, nk1 nk1Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, (i & 2) != 0 ? y71.k() : list, (i & 4) != 0 ? new NoOpCorruptionHandler() : corruptionHandler, (i & 8) != 0 ? kotlinx.coroutines.d.a(Actual_jvmKt.ioDispatcher().plus(v6a.b(null, 1, null))) : nk1Var);
    }
}
