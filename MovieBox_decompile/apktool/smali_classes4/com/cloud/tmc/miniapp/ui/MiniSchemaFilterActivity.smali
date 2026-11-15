.class public final Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;
.super Landroid/app/Activity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;

.field public static final KEY_APPID:Ljava/lang/String; = "appId"

.field public static final KEY_BACK_TO_URL:Ljava/lang/String; = "extraMiniBackToUrl"

.field public static final KEY_CLEAR_ALL_PAGES:Ljava/lang/String; = "extraMiniClearAllPages"

.field public static final KEY_ENTRANCE_URL:Ljava/lang/String; = "entranceUrl"

.field public static final KEY_FIS_TYPE:Ljava/lang/String; = "fis_type"

.field public static final KEY_H5_PATH:Ljava/lang/String; = "h5Path"

.field public static final KEY_HYBRID_PATH:Ljava/lang/String; = "hybridPath"

.field public static final KEY_MASTS:Ljava/lang/String; = "massid"

.field public static final KEY_MFAH:Ljava/lang/String; = "mfah"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final KEY_PAGE:Ljava/lang/String; = "page"

.field public static final KEY_QUERY:Ljava/lang/String; = "query"

.field public static final KEY_QUICK_MODE:Ljava/lang/String; = "quickMode"

.field public static final KEY_SCENE_ID:Ljava/lang/String; = "scene_id"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mFlBaseLayout$delegate:Lkotlin/Lazy;

.field private start:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MiniSchemaFilterActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$mFlBaseLayout$2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$mFlBaseLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->mFlBaseLayout$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->onCreate$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->onResume$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getMFlBaseLayout()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->mFlBaseLayout$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-mFlBaseLayout>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getStartParams(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "entranceUrl"

    .line 53
    .line 54
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    instance-of v0, p1, Landroid/os/Bundle;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Landroid/os/Bundle;

    .line 64
    .line 65
    :cond_3
    :goto_1
    return-object v1
.end method

.method private static final onCreate$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "mFlBaseLayout click"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final onResume$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "MiniSchemaFilterActivity finish: "

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "oncreat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    .line 16
    .line 17
    .line 18
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->activity_layout_mini_scheme:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/high16 v0, 0x4000000

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/high16 v0, -0x80000000

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sget v0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_transparent:I

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->getMFlBaseLayout()Landroid/widget/FrameLayout;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/f1;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/f1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onDestroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "onNewIntent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onPause"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onResume"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSchemeInitStatus()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "launchMiniAppForId: \u5df2\u62c9\u8d77"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    .line 35
    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "launchMiniAppForId: start  \u5df2\u62c9\u8d77"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->getStartParams(Ljava/lang/Object;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->getStartParams(Ljava/lang/Object;)Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :cond_3
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const-string v0, "appId"

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_0
    if-eqz v1, :cond_5

    .line 94
    .line 95
    const-string v2, "scene_id"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_6

    .line 102
    .line 103
    :cond_5
    const-string v1, "200008"

    .line 104
    .line 105
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "palmplay://thirdlauncher.com?entryType=miniapp&_source=miniapps&appId="

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "&from=10&scene_id="

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "launchMiniApp: start  psDeeplink = "

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Landroid/content/Intent;

    .line 153
    .line 154
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v2, "android.intent.action.VIEW"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    const/high16 v2, 0x10000000

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    const-string v2, "MiniSchemaFilterActivity: "

    .line 185
    .line 186
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .line 188
    .line 189
    :goto_2
    sget-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    .line 190
    .line 191
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/g1;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/g1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    .line 194
    .line 195
    .line 196
    const-wide/16 v2, 0x3e8

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    .line 204
    .line 205
    const-string v2, "MiniSchemaFilterActivity:  finish "

    .line 206
    .line 207
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    .line 211
    .line 212
    .line 213
    :goto_3
    return-void
.end method

.method public final setStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    .line 2
    .line 3
    return-void
.end method
