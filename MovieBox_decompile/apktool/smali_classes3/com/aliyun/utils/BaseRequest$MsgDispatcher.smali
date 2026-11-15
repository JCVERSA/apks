.class Lcom/aliyun/utils/BaseRequest$MsgDispatcher;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/utils/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgDispatcher"
.end annotation


# instance fields
.field private mBaseRequest:Lcom/aliyun/utils/BaseRequest;


# direct methods
.method public constructor <init>(Lcom/aliyun/utils/BaseRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/aliyun/utils/BaseRequest;->access$100(Lcom/aliyun/utils/BaseRequest;Landroid/os/Message;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
