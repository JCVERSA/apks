.class Lcom/transsion/transfer/androidasync/AsyncServer$8;
.super Ljava/lang/Thread;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$queue:Ljava/util/PriorityQueue;

.field final synthetic val$selector:Lcom/transsion/transfer/androidasync/x;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$selector:Lcom/transsion/transfer/androidasync/x;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->h()Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$selector:Lcom/transsion/transfer/androidasync/x;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->i(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->h()Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->h()Ljava/lang/ThreadLocal;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 33
    .line 34
    .line 35
    throw v0
.end method
