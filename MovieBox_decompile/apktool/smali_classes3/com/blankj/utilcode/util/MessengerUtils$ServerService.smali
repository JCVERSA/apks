.class public Lcom/blankj/utilcode/util/MessengerUtils$ServerService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerService"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$a;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->b:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v1, Landroid/os/Messenger;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->c:Landroid/os/Messenger;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic a(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->e(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->d(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "MESSENGER_UTILS"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/MessengerUtils;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private e(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/Messenger;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->c:Landroid/os/Messenger;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p3, 0x1a

    .line 4
    .line 5
    if-lt p2, p3, :cond_0

    .line 6
    .line 7
    sget-object p2, Lcom/blankj/utilcode/util/s$a;->b:Lcom/blankj/utilcode/util/s$a;

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/e0;->q(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 p3, 0x1

    .line 15
    invoke-virtual {p0, p3, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p2, 0x2

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->b:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->c:Landroid/os/Messenger;

    .line 34
    .line 35
    iput-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p3}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->e(Landroid/os/Message;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p3}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->d(Landroid/os/Message;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return p2
.end method
