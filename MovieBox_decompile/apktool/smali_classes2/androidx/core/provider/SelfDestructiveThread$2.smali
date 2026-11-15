.class Landroidx/core/provider/SelfDestructiveThread$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/core/provider/l;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$calleeHandler:Landroid/os/Handler;

.field final synthetic val$reply:Landroidx/core/provider/l$a;


# direct methods
.method constructor <init>(Landroidx/core/provider/l;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$calleeHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$calleeHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v2, Landroidx/core/provider/SelfDestructiveThread$2$1;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Landroidx/core/provider/SelfDestructiveThread$2$1;-><init>(Landroidx/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
