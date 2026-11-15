.class public Lpe0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpe0;->z(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lpe0;


# direct methods
.method public constructor <init>(Lpe0;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lpe0$a;->b:Lpe0;

    iput-object p2, p0, Lpe0$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lpe0$a;->b:Lpe0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpe0;->j(Lpe0;Z)V

    const-string v0, "Google billing service Disconnected!"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lpe0$a;->b:Lpe0;

    invoke-static {v0}, Lpe0;->i(Lpe0;)Lf90;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lpe0$a;->b:Lpe0;

    invoke-static {p0}, Lpe0;->i(Lpe0;)Lf90;

    move-result-object p0

    const/16 v0, -0x3ea

    const-string v1, "Google billing service Disconnected"

    invoke-virtual {p0, v0, v1}, Lf90;->d(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBillingSetupFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lpe0$a;->b:Lpe0;

    invoke-static {p1}, Lpe0;->i(Lpe0;)Lf90;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpe0$a;->b:Lpe0;

    invoke-static {p1}, Lpe0;->i(Lpe0;)Lf90;

    move-result-object p1

    invoke-virtual {p1}, Lf90;->b()V

    :cond_0
    iget-object p1, p0, Lpe0$a;->b:Lpe0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lpe0;->j(Lpe0;Z)V

    const-string p1, "Google billing service connect success!"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lpe0$a;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google billing service connect fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lpe0$a;->b:Lpe0;

    invoke-static {v0}, Lpe0;->i(Lpe0;)Lf90;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lpe0$a;->b:Lpe0;

    invoke-static {p0}, Lpe0;->i(Lpe0;)Lf90;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf90;->d(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
