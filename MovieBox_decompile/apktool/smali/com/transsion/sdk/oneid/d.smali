.class public Lcom/transsion/sdk/oneid/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler$Callback;

.field private c:Landroid/os/Messenger;

.field private final d:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Messenger;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/sdk/oneid/d$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsion/sdk/oneid/d$a;-><init>(Lcom/transsion/sdk/oneid/d;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/sdk/oneid/d;->d:Landroid/os/Messenger;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/sdk/oneid/d;->a:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/transsion/sdk/oneid/d;->b:Landroid/os/Handler$Callback;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/transsion/sdk/oneid/d;)Landroid/os/Handler$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/sdk/oneid/d;->b:Landroid/os/Handler$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method static c(Lcom/transsion/sdk/oneid/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/d;->c:Landroid/os/Messenger;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/sdk/oneid/d;->c:Landroid/os/Messenger;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/sdk/oneid/d;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.hoffnung"

    .line 7
    .line 8
    const-string v2, "com.transsion.dataservice.binder.DCService"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/sdk/oneid/d;->a:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string p1, "onServiceConnected"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/16 v0, 0x64

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "key"

    .line 19
    .line 20
    const-string v2, "oneid"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/sdk/oneid/d;->d:Landroid/os/Messenger;

    .line 29
    .line 30
    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 31
    .line 32
    new-instance v0, Landroid/os/Messenger;

    .line 33
    .line 34
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsion/sdk/oneid/d;->c:Landroid/os/Messenger;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const-string p1, "onServiceDisconnected"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
