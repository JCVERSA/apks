.class public Lcom/sun/jna/internal/Cleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/internal/Cleaner$a;,
        Lcom/sun/jna/internal/Cleaner$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/sun/jna/internal/Cleaner;


# instance fields
.field public final a:Ljava/lang/ref/ReferenceQueue;

.field public final b:Ljava/lang/Thread;

.field public c:Lcom/sun/jna/internal/Cleaner$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/jna/internal/Cleaner;

    invoke-direct {v0}, Lcom/sun/jna/internal/Cleaner;-><init>()V

    sput-object v0, Lcom/sun/jna/internal/Cleaner;->d:Lcom/sun/jna/internal/Cleaner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/internal/Cleaner;->a:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/sun/jna/internal/Cleaner$1;

    invoke-direct {v0, p0}, Lcom/sun/jna/internal/Cleaner$1;-><init>(Lcom/sun/jna/internal/Cleaner;)V

    iput-object v0, p0, Lcom/sun/jna/internal/Cleaner;->b:Ljava/lang/Thread;

    const-string p0, "JNA Cleaner"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/sun/jna/internal/Cleaner;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/sun/jna/internal/Cleaner;->a:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method public static synthetic b(Lcom/sun/jna/internal/Cleaner;Lcom/sun/jna/internal/Cleaner$b;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/jna/internal/Cleaner;->f(Lcom/sun/jna/internal/Cleaner$b;)Z

    move-result p0

    return p0
.end method

.method public static d()Lcom/sun/jna/internal/Cleaner;
    .locals 1

    sget-object v0, Lcom/sun/jna/internal/Cleaner;->d:Lcom/sun/jna/internal/Cleaner;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized c(Lcom/sun/jna/internal/Cleaner$b;)Lcom/sun/jna/internal/Cleaner$b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner;->c:Lcom/sun/jna/internal/Cleaner$b;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner;->c:Lcom/sun/jna/internal/Cleaner$b;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sun/jna/internal/Cleaner$b;->c(Lcom/sun/jna/internal/Cleaner$b;)V

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner;->c:Lcom/sun/jna/internal/Cleaner$b;

    invoke-virtual {v0, p1}, Lcom/sun/jna/internal/Cleaner$b;->d(Lcom/sun/jna/internal/Cleaner$b;)V

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner;->c:Lcom/sun/jna/internal/Cleaner$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/sun/jna/internal/Cleaner$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/jna/internal/Cleaner$b;

    iget-object v1, p0, Lcom/sun/jna/internal/Cleaner;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/sun/jna/internal/Cleaner$b;-><init>(Lcom/sun/jna/internal/Cleaner;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/sun/jna/internal/Cleaner;->c(Lcom/sun/jna/internal/Cleaner$b;)Lcom/sun/jna/internal/Cleaner$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Lcom/sun/jna/internal/Cleaner$b;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner;->c:Lcom/sun/jna/internal/Cleaner$b;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->a()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/internal/Cleaner;->c:Lcom/sun/jna/internal/Cleaner$b;

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->b()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->b()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->a()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/jna/internal/Cleaner$b;->c(Lcom/sun/jna/internal/Cleaner$b;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->a()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->a()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->b()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/jna/internal/Cleaner$b;->d(Lcom/sun/jna/internal/Cleaner$b;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->b()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$b;->a()Lcom/sun/jna/internal/Cleaner$b;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/jna/internal/Cleaner$b;->c(Lcom/sun/jna/internal/Cleaner$b;)V

    invoke-virtual {p1, v0}, Lcom/sun/jna/internal/Cleaner$b;->d(Lcom/sun/jna/internal/Cleaner$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
