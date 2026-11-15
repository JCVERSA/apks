.class public Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;


# instance fields
.field private mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    invoke-direct {p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    :cond_0
    return-void
.end method

.method private getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    return-object p0
.end method


# virtual methods
.method public disableAutoInvalidateWhenCrossWindowUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public disableBackdropBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableBackdropBlur()V

    return-void
.end method

.method public disableBlendColorDark()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableBlendColorDark()V

    return-void
.end method

.method public disableBlendColorLight()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableBlendColorLight()V

    return-void
.end method

.method public disableCrossWindowBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableCrossWindowBlur()V

    return-void
.end method

.method public disableGlobalBlurRadius()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableGlobalBlurRadius()V

    return-void
.end method

.method public disableLocalBlurRadius()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableLocalBlurRadius()V

    return-void
.end method

.method public disableMaxCrossFadeRadius()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableMaxCrossFadeRadius()V

    return-void
.end method

.method public disableMirrorScale()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableMirrorScale()V

    return-void
.end method

.method public disableRoundCorner()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableRoundCorner()V

    return-void
.end method

.method public disableStaticBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableStaticBlur()V

    return-void
.end method

.method public disableUnionBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableUnionBlur()V

    return-void
.end method

.method public enableAutoInvalidateWhenCrossWindowUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public enableBackdropBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBackdropBlur()V

    return-void
.end method

.method public enableBlendColorDark(IIIIII)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorDark(IIIIII)V

    return-void
.end method

.method public enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableBlendColorLight(IIIIII)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorLight(IIIIII)V

    return-void
.end method

.method public enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableCrossWindowBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableCrossWindowBlur()V

    return-void
.end method

.method public enableDynamicBlendColorDark(IIIIIIIII)V
    .locals 10

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableDynamicBlendColorDark(IIIIIIIII)V

    return-void
.end method

.method public enableDynamicBlendColorLight(IIIIIIIII)V
    .locals 10

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableDynamicBlendColorLight(IIIIIIIII)V

    return-void
.end method

.method public enableGlobalBlurRadius(F)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableGlobalBlurRadius(F)V

    return-void
.end method

.method public enableLocalBlurRadius(F)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableLocalBlurRadius(F)V

    return-void
.end method

.method public enableMaxCrossFadeRadius(F)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableMaxCrossFadeRadius(F)V

    return-void
.end method

.method public enableMirrorScale(F)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableMirrorScale(F)V

    return-void
.end method

.method public enableRoundCorner(FZF)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableRoundCorner(FZF)V

    return-void
.end method

.method public enableStaticBlur(Landroid/graphics/Bitmap;ZF)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableStaticBlur(Landroid/graphics/Bitmap;ZF)V

    return-void
.end method

.method public enableUnionBlur()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableUnionBlur()V

    return-void
.end method

.method public getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    return-object p0
.end method

.method public isAutoInvalidate()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isAutoInvalidate()Z

    move-result p0

    return p0
.end method

.method public isBackdropBlur()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isBackdropBlur()Z

    move-result p0

    return p0
.end method

.method public isStaticBlur()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isStaticBlur()Z

    move-result p0

    return p0
.end method

.method public isUnionBlur()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isUnionBlur()Z

    move-result p0

    return p0
.end method

.method public requestFrameSpacing(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->requestFrameSpacing(I)Z

    move-result p0

    return p0
.end method

.method public requiresNoEffect()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->requiresNoEffect()Z

    move-result p0

    return p0
.end method

.method public setApiMode(I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setApiMode(I)V

    return-void
.end method

.method public setBlurAlgorithm(I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setBlurAlgorithm(I)V

    return-void
.end method

.method public setCustomBlender(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setCustomBlender(Ljava/lang/Object;)V

    return-void
.end method

.method public setOffscreenRenderingOptimization(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setOffscreenRenderingOptimization(Z)V

    return-void
.end method

.method public setRealObject(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    return-void
.end method

.method public setRequestWindowType(I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setRequestWindowType(I)V

    return-void
.end method
