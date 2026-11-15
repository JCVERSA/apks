.class public final Lwe3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe3$a;
    }
.end annotation


# static fields
.field public static final c:Lkj5;


# instance fields
.field public a:Lwe3$a;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkj5;

    const-class v1, Lwe3;

    invoke-direct {v0, v1}, Lkj5;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lwe3;->c:Lkj5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lwe3;->c:Lkj5;

    invoke-virtual {v1}, Lkj5;->a()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lwe3;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lwe3$a;

    iget-object v1, p0, Lwe3;->a:Lwe3$a;

    invoke-direct {v0, p1, p2, v1}, Lwe3$a;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lwe3$a;)V

    iput-object v0, p0, Lwe3;->a:Lwe3$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Lwe3;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lwe3;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe3;->b:Z

    iget-object v0, p0, Lwe3;->a:Lwe3$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lwe3;->a:Lwe3$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, v0, Lwe3$a;->c:Lwe3$a;

    iput-object v1, v0, Lwe3$a;->c:Lwe3$a;

    move-object v1, v0

    move-object v0, p0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object p0, v1, Lwe3$a;->a:Ljava/lang/Runnable;

    iget-object v0, v1, Lwe3$a;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lwe3;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v1, Lwe3$a;->c:Lwe3$a;

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
