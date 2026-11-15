.class public Lcom/transsion/hubsdk/api/view/TranView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHwuiLightSourceGeometry(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->clearHwuiLightSourceGeometry(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearUnionRenderEffect(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->clearUnionRenderEffect(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZF)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->enableBackdropBlurFilter(Landroid/view/View;ZF)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZFI)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->enableBackdropBlurFilter(Landroid/view/View;ZFI)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceRenderSdrUnderHdr(Landroid/view/View;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->forceRenderSdrUnderHdr(Landroid/view/View;Z)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultLightZWhenAttached(Landroid/view/View;)F
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getDefaultLightZWhenAttached(Landroid/view/View;)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getForceClipOutShadow(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getForceClipOutShadow(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocalLightSourceTranslationEnabled(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getLocalLightSourceTranslationEnabled(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocalLightSourceTranslationX(Landroid/view/View;)F
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getLocalLightSourceTranslationX(Landroid/view/View;)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocalLightSourceTranslationY(Landroid/view/View;)F
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getLocalLightSourceTranslationY(Landroid/view/View;)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRecordingFrameCount(Landroid/view/View;)J
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getRecordingFrameCount(Landroid/view/View;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranView;->TAG:Ljava/lang/String;

    const-string v0, "TranThubView"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubView;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubView;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubView;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubView;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranView;->TAG:Ljava/lang/String;

    const-string v0, "TranAospView"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospView;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    :cond_2
    return-object p1
.end method

.method public getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasSetKeyListener(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranAospView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/view/TranAospView;->hasSetKeyListener(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRecreateDisplayList(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranAospView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/view/TranAospView;->isRecreateDisplayList(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setForceClipOutShadow(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setForceClipOutShadow(Landroid/view/View;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHwuiLightSourceGeometry(Landroid/view/View;FFFF)V
    .locals 7

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setHwuiLightSourceGeometry(Landroid/view/View;FFFF)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocalLightSourceTranslation(Landroid/view/View;FF)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setLocalLightSourceTranslation(Landroid/view/View;FF)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPromoteLayerEnabled(Landroid/view/View;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setPromoteLayerEnabled(Landroid/view/View;Z)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemUiVisibility(Landroid/view/Window;I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setSystemUiVisibility(Landroid/view/Window;I)V

    return-void
.end method

.method public setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
