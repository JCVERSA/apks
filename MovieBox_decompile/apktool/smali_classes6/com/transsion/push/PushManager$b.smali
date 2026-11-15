.class Lcom/transsion/push/PushManager$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/transsion/push/PushManager;


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/PushManager$b;->b:Lcom/transsion/push/PushManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/PushManager$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    const-string v1, "gslb sdk init fail"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    const-string v0, "gslb sdk init success"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "service_type"

    .line 14
    .line 15
    const-string v1, "force_update"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/push/PushManager$b;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Lcom/transsion/push/utils/ServiceUtils;->startJobThread(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 30
    .line 31
    const-string v0, "gslb success, force update info to server"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
