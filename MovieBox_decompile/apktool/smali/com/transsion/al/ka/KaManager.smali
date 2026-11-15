.class public Lcom/transsion/al/ka/KaManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final NOTIFICATION_GROUP_FULLSCREEN:Ljava/lang/String; = "fullScreen"

.field public static final TAG:Ljava/lang/String; = "KaManager"


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

.method private static addAutoStartList(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2}, Lcom/transsion/al/ka/SystemApiUtil;->setAutoStartEnable(Landroid/app/ActivityManager;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/al/ka/SystemApiUtil;->isItel()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v0, v1}, Lcom/transsion/al/ka/SystemApiUtil;->setForbiddenAutoRunPackages(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p0, v0, v1}, Lcom/transsion/al/ka/SystemApiUtil;->setForbiddenLinkRunPackages(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private static addCleanProtectList(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, p0, v1}, Lcom/transsion/al/ka/SystemApiUtil;->setCleanProtect(Landroid/app/ActivityManager;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "KaManager"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/transsion/al/ka/KaManager;->addAutoStartList(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/transsion/al/ka/KaManager;->addCleanProtectList(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/transsion/al/ka/AccountUtils;->autoSyncStart(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const-string p0, "hook auto live success"

    .line 13
    .line 14
    invoke-static {v0, p0}, Lcom/transsion/al/ka/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-static {v0, p0, v1}, Lcom/transsion/al/ka/c;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
