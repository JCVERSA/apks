.class public Lcom/mgmi/activity/IncentiveVideoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/activity/IncentiveVideoActivity$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/ssp/IncentiveVideoAd;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Lcom/mgmi/ssp/IncentiveVideoListener;

.field public static e:I

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Landroid/widget/FrameLayout;

.field public static j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/activity/IncentiveVideoActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private l:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 17
    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ssp/IncentiveVideoAd;

    sget-boolean v1, Lcom/mgmi/activity/IncentiveVideoActivity;->f:Z

    invoke-virtual {v0, v1}, Lcom/mgmi/ssp/IncentiveVideoAd;->loadAd(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZZZI)V
    .locals 11
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mgmi/ssp/IncentiveVideoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    .line 1
    invoke-static {}, Lcom/mgmi/activity/IncentiveVideoActivity;->c()V

    .line 2
    sput-boolean p6, Lcom/mgmi/activity/IncentiveVideoActivity;->h:Z

    .line 3
    sput-boolean p7, Lcom/mgmi/activity/IncentiveVideoActivity;->g:Z

    .line 4
    sput-object p1, Lcom/mgmi/activity/IncentiveVideoActivity;->b:Ljava/lang/String;

    .line 5
    sput-object p2, Lcom/mgmi/activity/IncentiveVideoActivity;->c:Ljava/lang/String;

    .line 6
    sput-object p3, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    .line 7
    sput p4, Lcom/mgmi/activity/IncentiveVideoActivity;->e:I

    .line 8
    sput-boolean p5, Lcom/mgmi/activity/IncentiveVideoActivity;->f:Z

    .line 9
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->i:Landroid/widget/FrameLayout;

    .line 10
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->j:Ljava/lang/ref/WeakReference;

    .line 12
    new-instance v9, Ljava/lang/ref/WeakReference;

    new-instance v10, Lcom/mgmi/ssp/IncentiveVideoAd;

    sget-object v2, Lcom/mgmi/activity/IncentiveVideoActivity;->i:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/mgmi/activity/IncentiveVideoActivity;->b:Ljava/lang/String;

    sget-object v4, Lcom/mgmi/activity/IncentiveVideoActivity;->c:Ljava/lang/String;

    new-instance v5, Lcom/mgmi/activity/IncentiveVideoActivity$1;

    invoke-direct {v5}, Lcom/mgmi/activity/IncentiveVideoActivity$1;-><init>()V

    sget v6, Lcom/mgmi/activity/IncentiveVideoActivity;->e:I

    sget-boolean v7, Lcom/mgmi/activity/IncentiveVideoActivity;->f:Z

    move-object v0, v10

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/mgmi/ssp/IncentiveVideoAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v9, Lcom/mgmi/activity/IncentiveVideoActivity;->a:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ssp/IncentiveVideoAd;

    sget-boolean v1, Lcom/mgmi/activity/IncentiveVideoActivity;->g:Z

    invoke-virtual {v0, v1}, Lcom/mgmi/ssp/IncentiveVideoAd;->setResizeVideo(Z)V

    .line 15
    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ssp/IncentiveVideoAd;

    sget-boolean v1, Lcom/mgmi/activity/IncentiveVideoActivity;->h:Z

    invoke-virtual {v0, v1}, Lcom/mgmi/ssp/IncentiveVideoAd;->setCloseBtnVisible(Z)V

    .line 16
    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ssp/IncentiveVideoAd;

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/mgmi/ssp/IncentiveVideoAd;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/mgmi/activity/IncentiveVideoActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/mgmi/activity/IncentiveVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lh2d;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    const-string v0, ""

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->b:Ljava/lang/String;

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    const/16 v1, 0x3e8

    sput v1, Lcom/mgmi/activity/IncentiveVideoActivity;->e:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mgmi/activity/IncentiveVideoActivity;->f:Z

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->i:Landroid/widget/FrameLayout;

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->j:Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    sput-boolean v1, Lcom/mgmi/activity/IncentiveVideoActivity;->h:Z

    sput-boolean v1, Lcom/mgmi/activity/IncentiveVideoActivity;->g:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const-string p0, "IncentiveVideoActivity"

    const-string v0, "onBackPressed = "

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/activity/a;->c()V

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->a()V

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/activity/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mgmi/activity/a;->a(Landroid/app/Activity;)V

    sget p1, Lcom/mgmi/R$layout;->mgad_incentive_video_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    :try_start_0
    sget p1, Lcom/mgmi/R$id;->container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgmi/activity/IncentiveVideoActivity;->l:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/activity/IncentiveVideoActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Lcom/mgmi/activity/a;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string p0, "IncentiveVideoActivity"

    const-string v0, "onDestroy = "

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->a()V

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/activity/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    :try_start_0
    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    :try_start_0
    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgmi/activity/a;->a()Lcom/mgmi/activity/a;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/activity/a;->a:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
