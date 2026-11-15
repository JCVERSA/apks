.class public Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableAutoInvalidateWhenCrossWindowUpdate()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableAutoInvalidateWhenCrossWindowUpdate not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableBackdropBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableBackdropBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableBlendColorDark()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableBlendColorDark not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableBlendColorLight()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableBlendColorLight not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableCrossWindowBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableCrossWindowBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableGlobalBlurRadius()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableGlobalBlurRadius not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableLocalBlurRadius()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableLocalBlurRadius not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableMaxCrossFadeRadius()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableMaxCrossFadeRadius not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableMirrorScale()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableMirrorScale not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableRoundCorner()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableRoundCorner not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableStaticBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableStaticBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableUnionBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableUnionBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableAutoInvalidateWhenCrossWindowUpdate()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableAutoInvalidateWhenCrossWindowUpdate not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBackdropBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableBackdropBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorDark(IIIIII)V
    .locals 0

    .line 2
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorDark not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorDark not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorLight(IIIIII)V
    .locals 0

    .line 2
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorLight not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorLight not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableCrossWindowBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableCrossWindowBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableDynamicBlendColorDark(IIIIIIIII)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableDynamicBlendColorDark not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableDynamicBlendColorLight(IIIIIIIII)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableDynamicBlendColorLight not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableGlobalBlurRadius(F)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableGlobalBlurRadius not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableLocalBlurRadius(F)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableLocalBlurRadius not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableMaxCrossFadeRadius(F)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableMaxCrossFadeRadius not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableMirrorScale(F)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableMirrorScale not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableRoundCorner(FZF)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableRoundCorner not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableStaticBlur(Landroid/graphics/Bitmap;ZF)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableStaticBlur not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableUnionBlur()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableUnionBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "getRealObject not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAutoInvalidate()Z
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isAutoInvalidate not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isBackdropBlur()Z
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isBackdropBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isStaticBlur()Z
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isStaticBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isUnionBlur()Z
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isUnionBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requestFrameSpacing(I)Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "requestFrameSpacing not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requiresNoEffect()Z
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "requiresNoEffect not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setApiMode(I)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setApiMode not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlurAlgorithm(I)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setBlurAlgorithm not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCustomBlender(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setCustomBlender not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOffscreenRenderingOptimization(Z)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setOffscreenRenderingOptimization not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRequestWindowType(I)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setRequestWindowType not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
