.class Lcom/blankj/utilcode/util/ThreadUtils$Task$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ThreadUtils$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;->val$throwable:Ljava/lang/Throwable;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;->val$throwable:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onFail(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onDone()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
