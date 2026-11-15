.class public abstract Lcom/mgmi/ads/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a$b;,
        Lcom/mgmi/ads/api/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDisplayFloatAd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAdViewParentCover(Lcom/mgmi/ads/api/a$a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdViewParentCover(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/a/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentCurrentPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentDuration()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDefinition()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPlaySpeed()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoFormat()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public gotoMiniProgram(Lcom/mgmi/ads/api/a$b;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/d;)V
    .locals 0

    return-void
.end method

.method public isAdComplete(Z)V
    .locals 0

    return-void
.end method

.method public isContentPlaying()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isContentResourceAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFullScreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMutilScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenBarrage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoFullScreenSwitchOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/a/b/a/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V
    .locals 0
    .param p2    # Lcom/mgmi/ads/api/AdWidgetInfoImp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V
    .locals 0
    .param p2    # Lcom/mgmi/net/bean/CustomBootAdBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/ads/api/a$a;",
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/render/AdWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 3
    return-void
.end method

.method public onPCornerPrepared(Lcom/mgtv/a/b/a/a;)V
    .locals 0

    return-void
.end method

.method public onUpdateStatus(ZZZ)V
    .locals 0

    return-void
.end method

.method public requestChangeSize(ZF)V
    .locals 0

    return-void
.end method
