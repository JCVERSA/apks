.class public final Lbya;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbya;

.field public static final b:Ljava/lang/Object;

.field public static volatile c:Z

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile f:Lc74;

.field public static volatile g:Le74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbya;

    invoke-direct {v0}, Lbya;-><init>()V

    sput-object v0, Lbya;->a:Lbya;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbya;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lbya;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lbya;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lzxa;

    invoke-direct {v0}, Lzxa;-><init>()V

    sput-object v0, Lbya;->f:Lc74;

    sget-object v0, Lbx9;->a:Lbx9;

    invoke-virtual {v0}, Lbx9;->q()Le74;

    move-result-object v0

    sput-object v0, Lbya;->g:Le74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lzfb;
    .locals 1

    invoke-static {}, Lbya;->g()Lzfb;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lzfb;
    .locals 1

    invoke-static {}, Lbya;->d()Lzfb;

    move-result-object v0

    return-object v0
.end method

.method public static final c()V
    .locals 4

    sget-boolean v0, Lbya;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lbya;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lbya;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lbya;->f:Lc74;

    invoke-interface {v1}, Lc74;->invoke()Ljava/lang/Object;

    const/4 v1, 0x1

    sput-boolean v1, Lbya;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    sget-object v2, Lbya;->a:Lbya;

    const-string v3, "ensureLoaded failed"

    invoke-virtual {v2, v3, v1}, Lbya;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static final d()Lzfb;
    .locals 1

    sget v0, Lcom/transsion/tranplayer/MediaMetadataRetriever;->METADATA_SEEK_TYPE_FUZZY:I

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

.method public static final f()V
    .locals 3

    sget-boolean v0, Lbya;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lbya;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lbya;->g:Le74;

    new-instance v1, Laya;

    invoke-direct {v1}, Laya;-><init>()V

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final g()Lzfb;
    .locals 3

    sget-object v0, Lbya;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lbya;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lbya;->a:Lbya;

    const-string v2, "warmup failed"

    invoke-virtual {v1, v2, v0}, Lbya;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

.method public static final h()V
    .locals 2

    sget-object v0, Lbya;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    const-string p0, "TranRetrieverNative"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
