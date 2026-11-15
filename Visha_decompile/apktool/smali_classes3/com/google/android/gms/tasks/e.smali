.class public final Lcom/google/android/gms/tasks/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmhj;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:Lpe7;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lpe7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/e;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/e;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/e;->c:Lpe7;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/tasks/e;)Lpe7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/e;->c:Lpe7;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/tasks/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/e;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final c(Lxda;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/e;->c:Lpe7;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzi;-><init>(Lcom/google/android/gms/tasks/e;Lxda;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
