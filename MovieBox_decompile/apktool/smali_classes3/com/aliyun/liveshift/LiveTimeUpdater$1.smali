.class Lcom/aliyun/liveshift/LiveTimeUpdater$1;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/liveshift/LiveTimeUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;


# direct methods
.method constructor <init>(Lcom/aliyun/liveshift/LiveTimeUpdater;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    invoke-static {}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$000()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$100(Lcom/aliyun/liveshift/LiveTimeUpdater;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 18
    .line 19
    const/16 v0, 0x3c

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$200(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    invoke-static {}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$300()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$400(Lcom/aliyun/liveshift/LiveTimeUpdater;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$508(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$608(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-static {p1, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    return-void
.end method
