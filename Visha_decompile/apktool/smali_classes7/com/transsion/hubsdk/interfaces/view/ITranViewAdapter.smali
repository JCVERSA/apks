.class public interface abstract Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearHwuiLightSourceGeometry(Landroid/view/View;)V
.end method

.method public abstract clearUnionRenderEffect(Landroid/view/View;)V
.end method

.method public abstract enableBackdropBlurFilter(Landroid/view/View;ZF)Z
.end method

.method public abstract enableBackdropBlurFilter(Landroid/view/View;ZFI)Z
.end method

.method public abstract forceRenderSdrUnderHdr(Landroid/view/View;Z)Z
.end method

.method public abstract getDefaultLightZWhenAttached(Landroid/view/View;)F
.end method

.method public abstract getForceClipOutShadow(Landroid/view/View;)Z
.end method

.method public abstract getLocalLightSourceTranslationEnabled(Landroid/view/View;)Z
.end method

.method public abstract getLocalLightSourceTranslationX(Landroid/view/View;)F
.end method

.method public abstract getLocalLightSourceTranslationY(Landroid/view/View;)F
.end method

.method public abstract getRecordingFrameCount(Landroid/view/View;)J
.end method

.method public abstract getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
.end method

.method public abstract hasSetKeyListener(Landroid/view/View;)Z
.end method

.method public abstract isRecreateDisplayList(Landroid/view/View;)Z
.end method

.method public abstract setForceClipOutShadow(Landroid/view/View;Z)V
.end method

.method public abstract setHwuiLightSourceGeometry(Landroid/view/View;FFFF)V
.end method

.method public abstract setLocalLightSourceTranslation(Landroid/view/View;FF)V
.end method

.method public abstract setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setPromoteLayerEnabled(Landroid/view/View;Z)Z
.end method

.method public abstract setSystemUiVisibility(Landroid/view/Window;I)V
.end method

.method public abstract setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V
.end method
