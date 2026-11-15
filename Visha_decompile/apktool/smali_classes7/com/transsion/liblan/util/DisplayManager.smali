.class public Lcom/transsion/liblan/util/DisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;,
        Lcom/transsion/liblan/util/DisplayManager$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LAN/DisplayManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

.field private mPresentationId:I

.field private mRendererItem:Lcom/transsion/liblan/RendererItem;

.field private mRendererObs:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/transsion/liblan/RendererItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedRenderer:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/liblan/RendererItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureView:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/lifecycle/LiveData;ZZZ)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/liblan/RendererItem;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentationId:I

    new-instance v0, Lcom/transsion/liblan/util/DisplayManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/util/DisplayManager$1;-><init>(Lcom/transsion/liblan/util/DisplayManager;)V

    iput-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererObs:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/transsion/liblan/util/DisplayManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/util/DisplayManager$2;-><init>(Lcom/transsion/liblan/util/DisplayManager;)V

    iput-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/transsion/liblan/util/DisplayManager;->mSelectedRenderer:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/media/MediaRouter;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iput-boolean p3, p0, Lcom/transsion/liblan/util/DisplayManager;->mTextureView:Z

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/util/DisplayManager;->createPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    iget-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mSelectedRenderer:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/liblan/RendererItem;

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererItem:Lcom/transsion/liblan/RendererItem;

    iget-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mSelectedRenderer:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererObs:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    if-eqz p5, :cond_2

    sget-object p1, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->PRIMARY:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/liblan/util/DisplayManager;->getCurrentDisplayType()Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/util/DisplayManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/liblan/util/DisplayManager;)Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/liblan/util/DisplayManager;)I
    .locals 0

    iget p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentationId:I

    return p0
.end method

.method private createPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;
    .locals 4

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v2, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    iget-object v3, p0, Lcom/transsion/liblan/util/DisplayManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v0}, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;-><init>(Lcom/transsion/liblan/util/DisplayManager;Landroid/content/Context;Landroid/view/Display;)V

    iget-object v3, p0, Lcom/transsion/liblan/util/DisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentationId:I
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentationId:I

    :cond_2
    return-object v1
.end method

.method public static bridge synthetic d(Lcom/transsion/liblan/util/DisplayManager;)Lcom/transsion/liblan/RendererItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererItem:Lcom/transsion/liblan/RendererItem;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/liblan/util/DisplayManager;Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/liblan/util/DisplayManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentationId:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/liblan/util/DisplayManager;Lcom/transsion/liblan/RendererItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererItem:Lcom/transsion/liblan/RendererItem;

    return-void
.end method

.method private getCurrentDisplayType()Lcom/transsion/liblan/util/DisplayManager$DisplayType;
    .locals 2

    iget v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->PRESENTATION:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererItem:Lcom/transsion/liblan/RendererItem;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->RENDERER:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->PRIMARY:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/liblan/util/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/util/DisplayManager;->removePresentation()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/liblan/util/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/util/DisplayManager;->updateDisplayType()V

    return-void
.end method

.method private removePresentation()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    :cond_1
    invoke-direct {p0}, Lcom/transsion/liblan/util/DisplayManager;->updateDisplayType()V

    return-void
.end method

.method private updateDisplayType()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    invoke-direct {p0}, Lcom/transsion/liblan/util/DisplayManager;->getCurrentDisplayType()Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/transsion/liblan/util/DisplayManager$3;

    invoke-direct {v1, p0}, Lcom/transsion/liblan/util/DisplayManager$3;-><init>(Lcom/transsion/liblan/util/DisplayManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayType()Lcom/transsion/liblan/util/DisplayManager$DisplayType;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    return-object p0
.end method

.method public getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    return-object p0
.end method

.method public isOnRenderer()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    sget-object v0, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->RENDERER:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrimary()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    sget-object v0, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->PRIMARY:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecondary()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mDisplayType:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    sget-object v0, Lcom/transsion/liblan/util/DisplayManager$DisplayType;->PRESENTATION:Lcom/transsion/liblan/util/DisplayManager$DisplayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mPresentation:Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mSelectedRenderer:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mRendererObs:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public removeMediaRouterCallback()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    return-void
.end method

.method public setMediaRouterCallback()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/liblan/util/DisplayManager$4;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/util/DisplayManager$4;-><init>(Lcom/transsion/liblan/util/DisplayManager;)V

    iput-object v0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
