package androidx.datastore.core;

import com.hunantv.media.drm.IDrmSession;
import defpackage.c74;
import defpackage.cl0;
import defpackage.e74;
import defpackage.g1a;
import defpackage.j05;
import defpackage.ly0;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sw6;
import defpackage.wh1;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.c;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 <2\u00020\u0001:\u0001<B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\r\u001a\u00020\f*\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\f*\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ<\u0010\u0016\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00102$\b\u0004\u0010\u0015\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0011H\u0082H¢\u0006\u0004\b\u0016\u0010\u0017J4\u0010\u0019\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00102\u001c\u0010\u0015\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0018H\u0096@¢\u0006\u0004\b\u0019\u0010\u001aJ:\u0010\u001c\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00102\"\u0010\u0015\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0011H\u0096@¢\u0006\u0004\b\u001c\u0010\u0017J\u0010\u0010\u001e\u001a\u00020\u001dH\u0096@¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u001dH\u0096@¢\u0006\u0004\b \u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010!R\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0005\u0010\"\u001a\u0004\b#\u0010$R \u0010&\u001a\b\u0012\u0004\u0012\u00020\f0%8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010,\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b,\u0010+R\u0014\u0010-\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b-\u0010+R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001b\u00104\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u0010$R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020\u0012058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00102R\u001b\u0010;\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b7\u00108*\u0004\b9\u0010:¨\u0006="}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator;", "Landroidx/datastore/core/InterProcessCoordinator;", "Lkotlin/coroutines/d;", "context", "Ljava/io/File;", "file", MethodDecl.initName, "(Lkotlin/coroutines/d;Ljava/io/File;)V", "", "suffix", "fileWithSuffix", "(Ljava/lang/String;)Ljava/io/File;", "Lzfb;", "createIfNotExists", "(Ljava/io/File;)V", "createParentDirectories", "T", "Lkotlin/Function2;", "Landroidx/datastore/core/SharedCounter;", "Lwh1;", "", "block", "withLazyCounter", "(Ls74;Lwh1;)Ljava/lang/Object;", "Lkotlin/Function1;", "lock", "(Le74;Lwh1;)Ljava/lang/Object;", "", "tryLock", "", "getVersion", "(Lwh1;)Ljava/lang/Object;", "incrementAndGetVersion", "Lkotlin/coroutines/d;", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "Lnz3;", "updateNotifications", "Lnz3;", "getUpdateNotifications", "()Lnz3;", "LOCK_SUFFIX", "Ljava/lang/String;", "VERSION_SUFFIX", "LOCK_ERROR_MESSAGE", "Lnw6;", "inMemoryMutex", "Lnw6;", "lockFile$delegate", "Lyi5;", "getLockFile", "lockFile", "Lyi5;", "lazySharedCounter", "getSharedCounter", "()Landroidx/datastore/core/SharedCounter;", "getSharedCounter$delegate", "(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/Object;", "sharedCounter", "Companion", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MultiProcessCoordinator implements InterProcessCoordinator {

    public static final Companion INSTANCE = new Companion(null);
    private static final String DEADLOCK_ERROR_MESSAGE = "Resource deadlock would occur";
    private static final long INITIAL_WAIT_MILLIS = 10;
    private static final long MAX_WAIT_MILLIS = 60000;
    private final String LOCK_ERROR_MESSAGE;
    private final String LOCK_SUFFIX;
    private final String VERSION_SUFFIX;
    private final d context;
    private final File file;
    private final nw6 inMemoryMutex;
    private final yi5 lazySharedCounter;

    private final yi5 lockFile;
    private final nz3 updateNotifications;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator$Companion;", "", MethodDecl.initName, "()V", "Ljava/io/FileOutputStream;", "lockFileStream", "Ljava/nio/channels/FileLock;", "getExclusiveFileLockWithRetryIfDeadlock", "(Ljava/io/FileOutputStream;Lwh1;)Ljava/lang/Object;", "", "DEADLOCK_ERROR_MESSAGE", "Ljava/lang/String;", "", "INITIAL_WAIT_MILLIS", "J", "MAX_WAIT_MILLIS", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(3:31|17|18) */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
        
            r12 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
        
            r1 = r12.getMessage();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
        
            if (r1 == null) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0070, code lost:
        
            r0.L$0 = r13;
            r0.J$0 = r4;
            r0.label = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x007a, code lost:
        
            if (kotlinx.coroutines.DelayKt.b(r4, r0) == r14) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x007c, code lost:
        
            return r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
        
            throw r12;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007a -> B:27:0x007d). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object getExclusiveFileLockWithRetryIfDeadlock(FileOutputStream fileOutputStream, wh1<? super FileLock> wh1Var) throws IOException {
            MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;
            long j;
            if (wh1Var instanceof MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) {
                multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 = (MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) wh1Var;
                int i = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.label = i - Integer.MIN_VALUE;
                } else {
                    multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 = new MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1(this, wh1Var);
                }
            } else {
                multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 = new MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1(this, wh1Var);
            }
            Object obj = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.result;
            Object objF = z45.f();
            int i2 = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.label;
            if (i2 == 0) {
                c.b(obj);
                j = MultiProcessCoordinator.INITIAL_WAIT_MILLIS;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.J$0;
                fileOutputStream = (FileOutputStream) multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.L$0;
                c.b(obj);
                j *= (long) 2;
            }
            if (j <= MultiProcessCoordinator.MAX_WAIT_MILLIS) {
                FileLock fileLockLock = fileOutputStream.getChannel().lock(0L, Long.MAX_VALUE, false);
                y45.i(fileLockLock, "lockFileStream.getChanne…LUE, /* shared= */ false)");
                return fileLockLock;
            }
            FileLock fileLockLock2 = fileOutputStream.getChannel().lock(0L, Long.MAX_VALUE, false);
            y45.i(fileLockLock2, "lockFileStream.getChanne…LUE, /* shared= */ false)");
            return fileLockLock2;
        }

        private Companion() {
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", l = {IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, 47, 48}, m = "lock")
    public static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.lock(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", l = {62, 87}, m = "tryLock")
    public static final class C04931<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        Object result;

        public C04931(wh1<? super C04931> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.tryLock(null, this);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lnk1;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2", f = "MultiProcessCoordinator.android.kt", l = {163}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final s74 $block;
        int label;
        final MultiProcessCoordinator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(s74 s74Var, MultiProcessCoordinator multiProcessCoordinator, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$block = s74Var;
            this.this$0 = multiProcessCoordinator;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.$block, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super T> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                s74 s74Var = this.$block;
                SharedCounter sharedCounter = this.this$0.getSharedCounter();
                this.label = 1;
                obj = s74Var.invoke(sharedCounter, this);
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

        public final Object invokeSuspend$$forInline(Object obj) {
            return this.$block.invoke(this.this$0.getSharedCounter(), this);
        }
    }

    public MultiProcessCoordinator(d dVar, File file) {
        y45.j(dVar, "context");
        y45.j(file, "file");
        this.context = dVar;
        this.file = file;
        this.updateNotifications = MulticastFileObserver.INSTANCE.observe(file);
        this.LOCK_SUFFIX = ".lock";
        this.VERSION_SUFFIX = ".version";
        this.LOCK_ERROR_MESSAGE = "fcntl failed: EAGAIN";
        this.inMemoryMutex = sw6.b(false, 1, null);
        this.lockFile = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final File invoke() throws IOException {
                MultiProcessCoordinator multiProcessCoordinator = this.this$0;
                File fileFileWithSuffix = multiProcessCoordinator.fileWithSuffix(multiProcessCoordinator.LOCK_SUFFIX);
                this.this$0.createIfNotExists(fileFileWithSuffix);
                return fileFileWithSuffix;
            }
        });
        this.lazySharedCounter = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final SharedCounter invoke() {
                SharedCounter.Companion companion = SharedCounter.INSTANCE;
                companion.loadLib();
                final MultiProcessCoordinator multiProcessCoordinator = this.this$0;
                return companion.create$datastore_core_release(new c74() {
                    {
                        super(0);
                    }

                    @Override
                    public final File invoke() throws IOException {
                        MultiProcessCoordinator multiProcessCoordinator2 = multiProcessCoordinator;
                        File fileFileWithSuffix = multiProcessCoordinator2.fileWithSuffix(multiProcessCoordinator2.VERSION_SUFFIX);
                        multiProcessCoordinator.createIfNotExists(fileFileWithSuffix);
                        return fileFileWithSuffix;
                    }
                });
            }
        });
    }

    public final void createIfNotExists(File file) throws IOException {
        createParentDirectories(file);
        if (file.exists()) {
            return;
        }
        file.createNewFile();
    }

    private final void createParentDirectories(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
                return;
            }
            throw new IOException("Unable to create parent directories of " + file);
        }
    }

    public final File fileWithSuffix(String suffix) {
        return new File(this.file.getAbsolutePath() + suffix);
    }

    private final File getLockFile() {
        return (File) this.lockFile.getValue();
    }

    public final SharedCounter getSharedCounter() {
        return (SharedCounter) this.lazySharedCounter.getValue();
    }

    private final <T> Object withLazyCounter(s74 s74Var, wh1<? super T> wh1Var) {
        if (this.lazySharedCounter.isInitialized()) {
            return s74Var.invoke(getSharedCounter(), wh1Var);
        }
        d dVar = this.context;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(s74Var, this, null);
        j05.c(0);
        Object objG = cl0.g(dVar, anonymousClass2, wh1Var);
        j05.c(1);
        return objG;
    }

    public final File getFile() {
        return this.file;
    }

    @Override
    public nz3 getUpdateNotifications() {
        return this.updateNotifications;
    }

    @Override
    public Object getVersion(wh1<? super Integer> wh1Var) {
        return this.lazySharedCounter.isInitialized() ? mk0.b(getSharedCounter().getValue()) : cl0.g(this.context, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), wh1Var);
    }

    @Override
    public Object incrementAndGetVersion(wh1<? super Integer> wh1Var) {
        return this.lazySharedCounter.isInitialized() ? mk0.b(getSharedCounter().incrementAndGetValue()) : cl0.g(this.context, new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this, null), wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bb A[Catch: all -> 0x00bf, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00bf, blocks: (B:41:0x00bb, B:55:0x00d9, B:56:0x00dc), top: B:77:0x0024, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d9 A[Catch: all -> 0x00bf, TRY_ENTER, TryCatch #7 {all -> 0x00bf, blocks: (B:41:0x00bb, B:55:0x00d9, B:56:0x00dc), top: B:77:0x0024, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [nw6] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v0, types: [e74, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [nw6] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [e74] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v23, types: [nw6] */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override
    public <T> Object lock(e74 e74Var, wh1<? super T> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        nw6 nw6Var;
        ?? r10;
        FileOutputStream fileOutputStream;
        Throwable th;
        ?? r11;
        ?? r9;
        ?? r2;
        java.io.Closeable closeable;
        FileLock fileLock;
        FileLock fileLock2;
        Object objInvoke;
        ?? r0;
        ?? r12;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(wh1Var);
        }
        ?? r13 = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        try {
            try {
                try {
                    if (i2 == 0) {
                        c.b(r13);
                        nw6Var = this.inMemoryMutex;
                        anonymousClass1.L$0 = this;
                        anonymousClass1.L$1 = e74Var;
                        anonymousClass1.L$2 = nw6Var;
                        anonymousClass1.label = 1;
                        if (nw6Var.c(null, anonymousClass1) == objF) {
                            r10 = e74Var;
                            r13 = nw6Var;
                            return objF;
                        }
                    } else {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 != 3) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                fileLock = (FileLock) anonymousClass1.L$2;
                                closeable = (java.io.Closeable) anonymousClass1.L$1;
                                nw6 nw6Var2 = (nw6) anonymousClass1.L$0;
                                try {
                                    c.b(r13);
                                    r0 = nw6Var2;
                                    r12 = r13;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    try {
                                        ly0.a(closeable, null);
                                        r0.b(null);
                                        return r12;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        r13 = r0;
                                        r13.b(null);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    throw th;
                                }
                            }
                            closeable = (java.io.Closeable) anonymousClass1.L$2;
                            r9 = (nw6) anonymousClass1.L$1;
                            e74 e74Var2 = (e74) anonymousClass1.L$0;
                            try {
                                c.b(r13);
                                r2 = e74Var2;
                                r9 = r9;
                                r11 = r13;
                                fileLock2 = (FileLock) r11;
                                try {
                                    anonymousClass1.L$0 = r9;
                                    anonymousClass1.L$1 = closeable;
                                    anonymousClass1.L$2 = fileLock2;
                                    anonymousClass1.label = 3;
                                    objInvoke = r2.invoke(anonymousClass1);
                                    if (objInvoke == objF) {
                                        return objF;
                                    }
                                    r0 = r9;
                                    fileLock = fileLock2;
                                    r12 = objInvoke;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    ly0.a(closeable, null);
                                    r0.b(null);
                                    return r12;
                                } catch (Throwable th4) {
                                    fileLock = fileLock2;
                                    th = th4;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                fileLock = null;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        }
                        nw6 nw6Var3 = (nw6) anonymousClass1.L$2;
                        e74 e74Var3 = (e74) anonymousClass1.L$1;
                        MultiProcessCoordinator multiProcessCoordinator = (MultiProcessCoordinator) anonymousClass1.L$0;
                        c.b(r13);
                        r13 = nw6Var3;
                        this = multiProcessCoordinator;
                        r10 = e74Var3;
                    }
                    Companion companion = INSTANCE;
                    anonymousClass1.L$0 = r10;
                    anonymousClass1.L$1 = r13;
                    anonymousClass1.L$2 = fileOutputStream;
                    anonymousClass1.label = 2;
                    Object exclusiveFileLockWithRetryIfDeadlock = companion.getExclusiveFileLockWithRetryIfDeadlock(fileOutputStream, anonymousClass1);
                    if (exclusiveFileLockWithRetryIfDeadlock == objF) {
                        return objF;
                    }
                    ?? r7 = r13;
                    r11 = exclusiveFileLockWithRetryIfDeadlock;
                    r9 = r7;
                    r2 = r10;
                    closeable = fileOutputStream;
                    fileLock2 = (FileLock) r11;
                    anonymousClass1.L$0 = r9;
                    anonymousClass1.L$1 = closeable;
                    anonymousClass1.L$2 = fileLock2;
                    anonymousClass1.label = 3;
                    objInvoke = r2.invoke(anonymousClass1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    r0 = r9;
                    fileLock = fileLock2;
                    r12 = objInvoke;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    ly0.a(closeable, null);
                    r0.b(null);
                    return r12;
                } catch (Throwable th6) {
                    th = th6;
                    fileLock = null;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
                r10 = e74Var;
                r13 = nw6Var;
                fileOutputStream = new FileOutputStream(this.getLockFile());
            } catch (Throwable th7) {
                th = th7;
                r13.b(null);
                throw th;
            }
        } catch (Throwable th8) {
            r13 = anonymousClass1;
            try {
                throw th8;
            } catch (Throwable th9) {
                ly0.a(e74Var, th8);
                throw th9;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007b  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e5 A[Catch: all -> 0x00e9, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00e9, blocks: (B:60:0x00e5, B:74:0x0100, B:75:0x0103), top: B:92:0x0029, outer: #5 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:74:0x0100 A[Catch: all -> 0x00e9, TRY_ENTER, TryCatch #7 {all -> 0x00e9, blocks: (B:60:0x00e5, B:74:0x0100, B:75:0x0103), top: B:92:0x0029, outer: #5 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.datastore.core.MultiProcessCoordinator] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v0, types: [s74] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [nw6] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.io.Closeable, java.lang.Object] */
    @Override
    public <T> Object tryLock(s74 s74Var, wh1<? super T> wh1Var) throws Throwable {
        C04931 c04931;
        String message;
        FileLock fileLockTryLock;
        FileLock fileLock;
        nw6 nw6Var;
        java.io.Closeable closeable;
        nw6 nw6Var2;
        boolean z;
        ?? r1 = this;
        ?? r2 = s74Var;
        if (wh1Var instanceof C04931) {
            c04931 = (C04931) wh1Var;
            int i = c04931.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04931.label = i - Integer.MIN_VALUE;
            } else {
                c04931 = new C04931(wh1Var);
            }
        } else {
            c04931 = new C04931(wh1Var);
        }
        Object objInvoke = c04931.result;
        ?? F = z45.f();
        int i2 = c04931.label;
        try {
            try {
                if (i2 == 0) {
                    c.b(objInvoke);
                    nw6 nw6Var3 = r1.inMemoryMutex;
                    boolean zA = nw6Var3.a(null);
                    try {
                        if (!zA) {
                            Boolean boolA = mk0.a(false);
                            c04931.L$0 = nw6Var3;
                            c04931.Z$0 = zA;
                            c04931.label = 1;
                            objInvoke = r2.invoke(boolA, c04931);
                            if (objInvoke == F) {
                                return F;
                            }
                            nw6Var2 = nw6Var3;
                            z = zA;
                            if (z) {
                                nw6Var2.b(null);
                            }
                            return objInvoke;
                        }
                        FileInputStream fileInputStream = new FileInputStream(getLockFile());
                        try {
                            try {
                                fileLockTryLock = fileInputStream.getChannel().tryLock(0L, Long.MAX_VALUE, true);
                            } catch (IOException e) {
                                String message2 = e.getMessage();
                                if ((message2 == null || !g1a.R(message2, r1.LOCK_ERROR_MESSAGE, false, 2, null)) && ((message = e.getMessage()) == null || !g1a.R(message, DEADLOCK_ERROR_MESSAGE, false, 2, null))) {
                                    throw e;
                                }
                                fileLockTryLock = null;
                            }
                            try {
                                Boolean boolA2 = mk0.a(fileLockTryLock != null);
                                c04931.L$0 = nw6Var3;
                                c04931.L$1 = fileInputStream;
                                c04931.L$2 = fileLockTryLock;
                                c04931.Z$0 = zA;
                                c04931.label = 2;
                                objInvoke = r2.invoke(boolA2, c04931);
                                if (objInvoke == F) {
                                    return F;
                                }
                                fileLock = fileLockTryLock;
                                nw6Var = nw6Var3;
                                r1 = zA;
                                closeable = fileInputStream;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                ly0.a(closeable, null);
                                if (r1 != 0) {
                                    nw6Var.b(null);
                                }
                                return objInvoke;
                            } catch (Throwable th) {
                                th = th;
                                fileLock = fileLockTryLock;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileLock = null;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        r2 = nw6Var3;
                        r1 = zA;
                    }
                } else {
                    if (i2 == 1) {
                        z = c04931.Z$0;
                        nw6Var2 = (nw6) c04931.L$0;
                        c.b(objInvoke);
                        if (z) {
                            nw6Var2.b(null);
                        }
                        return objInvoke;
                    }
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    boolean z2 = c04931.Z$0;
                    fileLock = (FileLock) c04931.L$2;
                    closeable = (java.io.Closeable) c04931.L$1;
                    nw6Var = (nw6) c04931.L$0;
                    try {
                        c.b(objInvoke);
                        r1 = z2;
                        if (fileLock != null) {
                            fileLock.release();
                        }
                        try {
                            ly0.a(closeable, null);
                            if (r1 != 0) {
                                nw6Var.b(null);
                            }
                            return objInvoke;
                        } catch (Throwable th4) {
                            th = th4;
                            r2 = nw6Var;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        if (fileLock != null) {
                            fileLock.release();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th6) {
                r2 = c04931;
                try {
                    throw th6;
                } catch (Throwable th7) {
                    ly0.a(F, th6);
                    throw th7;
                }
            }
        } catch (Throwable th8) {
            th = th8;
        }
        if (r1 != 0) {
            r2.b(null);
        }
        throw th;
    }
}
