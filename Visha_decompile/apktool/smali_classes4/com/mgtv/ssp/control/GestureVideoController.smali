.class public abstract Lcom/mgtv/ssp/control/GestureVideoController;
.super Lcom/mgtv/ssp/control/BaseVideoController;
.source "SourceFile"


# static fields
.field protected static timeout:I = 0x190


# instance fields
.field protected clickCount:I

.field protected handler:Landroid/os/Handler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBrightness:F

.field private mCanChangePosition:Z

.field private mCanSlide:Z

.field private mChangeBrightness:Z

.field private mChangePosition:Z

.field private mChangeVolume:Z

.field private mCurPlayState:I

.field private mEnableInNormal:Z

.field private mFirstTouch:Z

.field protected mIsDoubleTapTogglePlayEnabled:Z

.field private mIsGestureEnabled:Z

.field private mSeekPosition:I

.field private mStreamVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsGestureEnabled:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCanChangePosition:Z

    .line 5
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsDoubleTapTogglePlayEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/control/BaseVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    .line 8
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsGestureEnabled:Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCanChangePosition:Z

    .line 10
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsDoubleTapTogglePlayEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/control/BaseVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    .line 13
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsGestureEnabled:Z

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCanChangePosition:Z

    .line 15
    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsDoubleTapTogglePlayEnabled:Z

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->initView()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method public isInPlaybackState()Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCurPlayState:I

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCanChangePosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCanChangePosition:Z

    return-void
.end method

.method public setDoubleTapTogglePlayEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsDoubleTapTogglePlayEnabled:Z

    return-void
.end method

.method public setEnableInNormal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mEnableInNormal:Z

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsGestureEnabled:Z

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->setPlayState(I)V

    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCurPlayState:I

    return-void
.end method

.method public setPlayerState(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->setPlayerState(I)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mEnableInNormal:Z

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCanSlide:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mCanSlide:Z

    :cond_1
    :goto_0
    return-void
.end method
