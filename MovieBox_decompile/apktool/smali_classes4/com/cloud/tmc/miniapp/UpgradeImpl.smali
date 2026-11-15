.class public final Lcom/cloud/tmc/miniapp/UpgradeImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/proxy/platform/IUpgradeProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/UpgradeImpl;->showFwUpdateTipsDialog$lambda$0(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final showFwUpdateTipsDialog$lambda$0(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "$prepareCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "com.transsion.hilauncher.upgrade"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "com.transsion.XOSLauncher.upgrade"

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->showUpgradeHintPrompt(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->killActivity(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method


# virtual methods
.method public showFwUpdateTipsDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 1

    .line 1
    const-string v0, "prepareCallback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/k;

    .line 10
    .line 11
    invoke-direct {v0, p1, p3, p2}, Lcom/cloud/tmc/miniapp/k;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
