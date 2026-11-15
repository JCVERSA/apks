.class public abstract Lcom/aliyun/utils/BaseRequest;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/utils/BaseRequest$MsgDispatcher;,
        Lcom/aliyun/utils/BaseRequest$OnRequestListener;
    }
.end annotation


# static fields
.field public static final DATA_KEY_EXTRA:Ljava/lang/String; = "data_extra"

.field public static final WHAT_FAIL:I = 0x0

.field public static final WHAT_SUCCESS:I = 0x1

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

.field private innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

.field public mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

.field protected wantStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/aliyun/utils/BaseRequest;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 11
    .line 12
    new-instance v0, Lcom/aliyun/utils/BaseRequest$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/aliyun/utils/BaseRequest$1;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/utils/BaseRequest;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/utils/BaseRequest;->dealMsg(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private dealMsg(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "data_extra"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 21
    .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-interface {v0, p1, v1}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 31
    .line 32
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v0, v2, p1, v1}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAsync()V
    .locals 2

    .line 1
    new-instance v0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/utils/BaseRequest;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v1, Lcom/aliyun/utils/BaseRequest$2;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/aliyun/utils/BaseRequest$2;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getSync()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/utils/BaseRequest;->runInBackground()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract runInBackground()V
.end method

.method public sendFailResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput v1, v0, Landroid/os/Message;->what:I

    .line 22
    .line 23
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p2, "data_extra"

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "data_extra"

    .line 29
    .line 30
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/aliyun/utils/BaseRequest;->stopInner()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public abstract stopInner()V
.end method
