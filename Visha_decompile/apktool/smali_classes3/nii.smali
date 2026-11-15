.class public final Lnii;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lnii;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnii;

    invoke-direct {v0}, Lnii;-><init>()V

    sput-object v0, Lnii;->b:Lnii;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lkji;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkji;-><init>(Lmji;)V

    new-instance v3, Lnji;

    invoke-direct {v3, v1, v2}, Lnji;-><init>(Lkji;Lmji;)V

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Lnii;
    .locals 1

    sget-object v0, Lnii;->b:Lnii;

    return-object v0
.end method


# virtual methods
.method public final b(Lb9i;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnji;

    invoke-virtual {p0, p1, p2}, Lnji;->c(Lb9i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized c(Ljji;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnji;

    new-instance v2, Lkji;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lkji;-><init>(Lnji;Lmji;)V

    invoke-virtual {v2, p1}, Lkji;->a(Ljji;)Lkji;

    new-instance p1, Lnji;

    invoke-direct {p1, v2, v3}, Lnji;-><init>(Lkji;Lmji;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Ltji;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnji;

    new-instance v2, Lkji;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lkji;-><init>(Lnji;Lmji;)V

    invoke-virtual {v2, p1}, Lkji;->b(Ltji;)Lkji;

    new-instance p1, Lnji;

    invoke-direct {p1, v2, v3}, Lnji;-><init>(Lkji;Lmji;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
