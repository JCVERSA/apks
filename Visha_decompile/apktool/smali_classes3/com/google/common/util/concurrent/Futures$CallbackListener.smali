.class final Lcom/google/common/util/concurrent/Futures$CallbackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final callback:Lj94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj94;"
        }
    .end annotation
.end field

.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lj94;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lj94;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lj94;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lj45;

    if-eqz v1, :cond_0

    check-cast v0, Lj45;

    invoke-static {v0}, Lk45;->a(Lj45;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lj94;

    invoke-interface {p0, v0}, Lj94;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->e(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lj94;

    invoke-interface {p0, v0}, Lj94;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lj94;

    invoke-interface {p0, v0}, Lj94;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lj94;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lj94;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lzq6;->b(Ljava/lang/Object;)Lzq6$b;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lj94;

    invoke-virtual {v0, p0}, Lzq6$b;->j(Ljava/lang/Object;)Lzq6$b;

    move-result-object p0

    invoke-virtual {p0}, Lzq6$b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
