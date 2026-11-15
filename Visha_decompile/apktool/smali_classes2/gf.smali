.class public Lgf;
.super Leea;
.source "SourceFile"


# static fields
.field public static volatile c:Lgf;

.field public static d:Ljava/util/concurrent/Executor;

.field public static e:Ljava/util/concurrent/Executor;


# instance fields
.field public a:Leea;

.field public b:Leea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgf$a;

    invoke-direct {v0}, Lgf$a;-><init>()V

    sput-object v0, Lgf;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lgf$b;

    invoke-direct {v0}, Lgf$b;-><init>()V

    sput-object v0, Lgf;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leea;-><init>()V

    new-instance v0, Lh52;

    invoke-direct {v0}, Lh52;-><init>()V

    iput-object v0, p0, Lgf;->b:Leea;

    iput-object v0, p0, Lgf;->a:Leea;

    return-void
.end method

.method public static f()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lgf;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static g()Leea;
    .locals 2

    sget-object v0, Lgf;->c:Lgf;

    if-nez v0, :cond_0

    const-class v0, Lgf;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lgf;

    invoke-direct {v1}, Lgf;-><init>()V

    sput-object v1, Lgf;->c:Lgf;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lgf;->c:Lgf;

    return-object v0
.end method

.method public static h()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lgf;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lgf;->a:Leea;

    invoke-virtual {p0, p1}, Leea;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lgf;->a:Leea;

    invoke-virtual {p0, p1}, Leea;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lgf;->a:Leea;

    invoke-virtual {p0}, Leea;->c()Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lgf;->a:Leea;

    invoke-virtual {p0, p1}, Leea;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lgf;->a:Leea;

    invoke-virtual {p0, p1}, Leea;->e(Ljava/lang/Runnable;)V

    return-void
.end method
