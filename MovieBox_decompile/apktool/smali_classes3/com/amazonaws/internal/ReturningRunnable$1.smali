.class Lcom/amazonaws/internal/ReturningRunnable$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazonaws/internal/ReturningRunnable;

.field final synthetic val$callback:Lcom/amazonaws/async/Callback;


# direct methods
.method constructor <init>(Lcom/amazonaws/internal/ReturningRunnable;Lcom/amazonaws/async/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/amazonaws/internal/ReturningRunnable;->b()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/lang/Exception;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v2, v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
