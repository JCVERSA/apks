.class Lcom/transsion/transfer/androidasync/AsyncServer$9;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

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
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Key Count: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "Key: "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method
