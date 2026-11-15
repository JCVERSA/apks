.class public Lcom/transsion/push/service/PushJobIntentService;
.super Lcom/transsion/push/service/JobIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/service/JobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/push/service/PushServiceHelper;->g(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/push/service/JobIntentService;->onCreate()V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PushJobIntentService---------->onCreate"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PushJobIntentService---------->onDestroy"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/transsion/push/service/JobIntentService;->onDestroy()V

    return-void
.end method
