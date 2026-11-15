.class public final Lij4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->init(Landroid/app/Application;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Landroid/app/Activity;ZLhhb;)V
    .locals 0

    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    move-result-object p1

    new-instance p2, Lij4$a;

    invoke-direct {p2, p0, p3}, Lij4$a;-><init>(Lij4;Lhhb;)V

    invoke-virtual {p1, p2}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->checkUpgradeTask(Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;)V

    return-void
.end method

.method public c(Landroid/app/Activity;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;

    new-instance v1, Lij4$b;

    invoke-direct {v1, p0}, Lij4$b;-><init>(Lij4;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;-><init>(Landroid/app/Activity;ZLcom/transsion/upgradesdk/manager/UpgradeDialogCallback;)V

    const p0, 0x7f06012f

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->cancelButtonTextColor:Ljava/lang/Integer;

    invoke-static {p1}, Lvha;->o(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->confirmButtonTextColor:Ljava/lang/Integer;

    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->showUpgradeDialog(Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;)V

    return-void
.end method
