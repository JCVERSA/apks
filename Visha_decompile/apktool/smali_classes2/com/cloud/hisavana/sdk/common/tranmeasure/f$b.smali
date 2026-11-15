.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ScreenStateManager"

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "SCREEN_OFF"

    invoke-virtual {p1, v1, p2}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "USER_PRESENT"

    invoke-virtual {p1, v1, p2}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "SCREEN_ON"

    invoke-virtual {p1, v1, v0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "keyguard"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lged;

    invoke-direct {v1, p0, p2, p1}, Lged;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
