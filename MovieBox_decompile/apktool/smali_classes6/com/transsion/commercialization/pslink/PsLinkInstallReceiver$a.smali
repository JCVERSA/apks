.class public final Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "package"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x21

    .line 43
    .line 44
    if-lt v1, v2, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-static {v1, v2, v0, v3}, Lcom/transsion/commercialization/pslink/c;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 71
    .line 72
    const-string v1, "PsLinkInstallReceiver --> registerInstallReceiver() --> registerReceiver PsLinkInstallReceiver success"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 23
    .line 24
    const-string v1, "PsLinkInstallReceiver --> registerInstallReceiver() --> unregisterReceiver PsLinkInstallReceiver success"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
