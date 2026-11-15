.class public final Lcom/cloud/tmc/miniutils/util/PermissionUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;,
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;,
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;,
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;,
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;,
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;,
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

.field private static sSimpleCallback4DrawOverlays:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

.field private static sSimpleCallback4WriteSettings:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# instance fields
.field private mFullCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;

.field private mOnExplainListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;

.field private mOnRationaleListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;

.field private mPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDenied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDeniedForever:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsGranted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsParam:[Ljava/lang/String;

.field private mPermissionsRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

.field private mSingleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;

.field private mThemeCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    .line 5
    .line 6
    sput-object p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sInstance:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnExplainListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mThemeCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnExplainListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic g(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    .line 3
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPermissionsStatus(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method private static varargs getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->getPermissions()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    array-length v3, p0

    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    :goto_0
    if-ge v5, v3, :cond_3

    .line 19
    .line 20
    aget-object v6, p0, v5

    .line 21
    .line 22
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->getPermissions(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    array-length v8, v7

    .line 27
    move v9, v4

    .line 28
    move v10, v9

    .line 29
    :goto_1
    if-ge v9, v8, :cond_1

    .line 30
    .line 31
    aget-object v11, v7, v9

    .line 32
    .line 33
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    if-eqz v12, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/4 v10, 0x1

    .line 43
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    if-nez v10, :cond_2

    .line 47
    .line 48
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v8, "U should add the permission of "

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v6, " in manifest."

    .line 65
    .line 66
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v7, "PermissionUtils"

    .line 74
    .line 75
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method static bridge synthetic h(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->requestCallback()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->shouldRationale(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isGranted(Ljava/lang/String;)Z
    .locals 1

    .line 7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs isGranted([Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 2
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isGrantedDrawOverlays()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isGrantedWriteSettings()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method static bridge synthetic j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sInstance:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic k()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic l()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static launchAppDetailsSettings()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static bridge synthetic m(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic n(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic o(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->startOverlayPermissionActivity(Landroid/app/Activity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onRequestPermissionsResult(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->requestCallback()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic p(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->startWriteSettingsActivity(Landroid/app/Activity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs permission([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;-><init>([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private rationalInner(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnRationaleListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;

    .line 5
    .line 6
    new-instance v1, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;

    .line 7
    .line 8
    invoke-direct {v1, p0, p2, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;-><init>(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/lang/Runnable;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;->rationale(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener$ShouldRequest;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private requestCallback()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSingleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;->callback(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSingleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v2, 0x22

    .line 44
    .line 45
    if-lt v0, v2, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 48
    .line 49
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 58
    .line 59
    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    :cond_2
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 68
    .line 69
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onDenied()V

    .line 84
    .line 85
    .line 86
    :goto_0
    iput-object v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mFullCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-lez v0, :cond_6

    .line 107
    .line 108
    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mFullCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v0, v2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;->onGranted(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mFullCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v0, v2, v3}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;->onDenied(Ljava/util/List;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    iput-object v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mFullCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;

    .line 133
    .line 134
    :cond_8
    iput-object v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnRationaleListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mThemeCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;

    .line 137
    .line 138
    return-void
.end method

.method public static requestDrawOverlays(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGrantedDrawOverlays()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    sput-object p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static requestWriteSettings(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGrantedWriteSettings()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    sput-object p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private shouldRationale(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnRationaleListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->rationalInner(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnRationaleListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;

    .line 36
    .line 37
    :cond_2
    return v1
.end method

.method private static startOverlayPermissionActivity(Landroid/app/Activity;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "package:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->launchAppDetailsSettings()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private startPermissionActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static startWriteSettingsActivity(Landroid/app/Activity;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "package:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->launchAppDetailsSettings()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mFullCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$FullCallback;

    return-object p0
.end method

.method public callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    return-object p0
.end method

.method public callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSingleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SingleCallback;

    return-object p0
.end method

.method public explain(Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnExplainListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public rationale(Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mOnRationaleListener:Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public request()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x22

    .line 13
    .line 14
    if-lt v0, v1, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    if-ge v0, v3, :cond_4

    .line 21
    .line 22
    aget-object v2, v2, v0

    .line 23
    .line 24
    const-string v3, "STORAGE_READ"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    const-string v3, "STORAGE_WRITE"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 49
    .line 50
    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mSimpleCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    .line 97
    .line 98
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Ljava/util/Collection;

    .line 101
    .line 102
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 106
    .line 107
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Ljava/util/Collection;

    .line 110
    .line 111
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    if-lt v0, v1, :cond_7

    .line 117
    .line 118
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    .line 119
    .line 120
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 121
    .line 122
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_9

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    iget-object v3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    iget-object v3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    iget-object v3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_8

    .line 193
    .line 194
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_8
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->requestCallback()V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_a
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->startPermissionActivity()V

    .line 219
    .line 220
    .line 221
    :goto_4
    return-void

    .line 222
    :cond_b
    :goto_5
    const-string v0, "PermissionUtils"

    .line 223
    .line 224
    const-string v1, "No permissions to request."

    .line 225
    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public theme(Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->mThemeCallback:Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;

    .line 2
    .line 3
    return-object p0
.end method
