.class public Lcom/transsion/hubsdk/core/view/TranThubView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;


# instance fields
.field private mTranView:Lcom/transsion/hubsdk/view/TranView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubView;->mTranView:Lcom/transsion/hubsdk/view/TranView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubView;->mTranView:Lcom/transsion/hubsdk/view/TranView;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubView;->mTranView:Lcom/transsion/hubsdk/view/TranView;

    return-object p0
.end method


# virtual methods
.method public clearHwuiLightSourceGeometry(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clearHwuiLightSourceGeometry"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->clearHwuiLightSourceGeometry(Landroid/view/View;)V

    return-void
.end method

.method public clearUnionRenderEffect(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clearUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->clearUnionRenderEffect(Landroid/view/View;)V

    return-void
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZF)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranView;->enableBackdropBlurFilter(Landroid/view/View;ZF)Z

    move-result p0

    return p0
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZFI)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/view/TranView;->enableBackdropBlurFilter(Landroid/view/View;ZFI)Z

    move-result p0

    return p0
.end method

.method public forceRenderSdrUnderHdr(Landroid/view/View;Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceRenderSdrUnderHdr"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->forceRenderSdrUnderHdr(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public getDefaultLightZWhenAttached(Landroid/view/View;)F
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefaultLightZWhenAttached"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getDefaultLightZWhenAttached(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public getForceClipOutShadow(Landroid/view/View;)Z
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getForceClipOutShadow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getForceClipOutShadow(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public getLocalLightSourceTranslationEnabled(Landroid/view/View;)Z
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLocalLightSourceTranslationEnabled"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getLocalLightSourceTranslationEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public getLocalLightSourceTranslationX(Landroid/view/View;)F
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLocalLightSourceTranslationX"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getLocalLightSourceTranslationX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public getLocalLightSourceTranslationY(Landroid/view/View;)F
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLocalLightSourceTranslationY"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getLocalLightSourceTranslationY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public getRecordingFrameCount(Landroid/view/View;)J
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRecordingFrameCount"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x5

    return-wide p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getRecordingFrameCount(Landroid/view/View;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->getUnionRenderObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;-><init>(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public hasSetKeyListener(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecreateDisplayList(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setForceClipOutShadow(Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setForceClipOutShadow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setForceClipOutShadow(Landroid/view/View;Z)V

    return-void
.end method

.method public setHwuiLightSourceGeometry(Landroid/view/View;FFFF)V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setHwuiLightSourceGeometry"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/hubsdk/view/TranView;->setHwuiLightSourceGeometry(Landroid/view/View;FFFF)V

    return-void
.end method

.method public setLocalLightSourceTranslation(Landroid/view/View;FF)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setLocalLightSourceTranslation"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranView;->setLocalLightSourceTranslation(Landroid/view/View;FF)V

    return-void
.end method

.method public setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setLocalLightSourceTranslationEnabled"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-class v2, Landroid/graphics/Bitmap;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMaterialNoise"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-class v2, Ljava/util/function/Consumer;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setOnUnionRenderFrameAvailableListener"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public setPromoteLayerEnabled(Landroid/view/View;Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPromoteLayerEnabled"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setPromoteLayerEnabled(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public setSystemUiVisibility(Landroid/view/Window;I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setSystemUiVisibility(Landroid/view/Window;I)V

    return-void
.end method

.method public setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-class v2, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    return-void
.end method
