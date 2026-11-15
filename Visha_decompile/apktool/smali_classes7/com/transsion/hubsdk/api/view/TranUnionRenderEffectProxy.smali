.class public Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;
    }
.end annotation


# static fields
.field public static final API_MODE_CANVAS_PAINT:I = 0x1

.field public static final API_MODE_VIEW_BACKGROUND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TranUnionRenderEffectProxy"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;Z)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->setRealObject(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->TAG:Ljava/lang/String;

    const-string p1, "re-establish TranUnionRenderEffectProxy fail: mAospService not support."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private convertFrom(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->G1:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_G1:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->G2:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_G2:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->G3:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_G3:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_2
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L1_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L1_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_3
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L2_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_4

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L2_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_4
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L3_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_5

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L3_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_5
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L4_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_6

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L4_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_6
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L1_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_7

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L1_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_7
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L2_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_8

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L2_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_8
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L3_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_9

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L3_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_9
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L4_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_a

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L4_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_a
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT1_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_b

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT1_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_b
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT2_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_c

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT2_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_c
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT3_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_d

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT3_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_d
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT4_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_e

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT4_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_e
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT1_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_f

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT1_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_f
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT2_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_10

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT2_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT3_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_11

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT3_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT4_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_12

    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT4_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    :cond_12
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_NONE:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0
.end method

.method public static final getApiLevel()I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->getApiLevel()I

    move-result v0

    return v0
.end method

.method public static isUnionRenderEffectSupport()Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isUnionRenderEffectSupport()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disableAutoInvalidateWhenCrossWindowUpdate()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public disableBackdropBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableBackdropBlur()V

    return-void
.end method

.method public disableBlendColorDark()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableBlendColorDark()V

    return-void
.end method

.method public disableBlendColorLight()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableBlendColorLight()V

    return-void
.end method

.method public disableCrossWindowBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableCrossWindowBlur()V

    return-void
.end method

.method public disableGlobalBlurRadius()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableGlobalBlurRadius()V

    return-void
.end method

.method public disableLocalBlurRadius()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableLocalBlurRadius()V

    return-void
.end method

.method public disableMaxCrossFadeRadius()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableMaxCrossFadeRadius()V

    return-void
.end method

.method public disableMirrorScale()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableMirrorScale()V

    return-void
.end method

.method public disableRoundCorner()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableRoundCorner()V

    return-void
.end method

.method public disableStaticBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableStaticBlur()V

    return-void
.end method

.method public disableUnionBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableUnionBlur()V

    return-void
.end method

.method public enableAutoInvalidateWhenCrossWindowUpdate()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public enableBackdropBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBackdropBlur()V

    return-void
.end method

.method public enableBlendColorDark(IIIIII)V
    .locals 8

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorDark(IIIIII)V

    return-void
.end method

.method public enableBlendColorDark(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->convertFrom(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableBlendColorLight(IIIIII)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorLight(IIIIII)V

    return-void
.end method

.method public enableBlendColorLight(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->convertFrom(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableCrossWindowBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableCrossWindowBlur()V

    return-void
.end method

.method public enableDynamicBlendColorDark(IIIIIIIII)V
    .locals 11

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableDynamicBlendColorDark(IIIIIIIII)V

    return-void
.end method

.method public enableDynamicBlendColorLight(IIIIIIIII)V
    .locals 11

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableDynamicBlendColorLight(IIIIIIIII)V

    return-void
.end method

.method public enableGlobalBlurRadius(F)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableGlobalBlurRadius(F)V

    return-void
.end method

.method public enableLocalBlurRadius(F)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableLocalBlurRadius(F)V

    return-void
.end method

.method public enableMaxCrossFadeRadius(F)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableMaxCrossFadeRadius(F)V

    return-void
.end method

.method public enableMirrorScale(F)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableMirrorScale(F)V

    return-void
.end method

.method public enableRoundCorner(FZF)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableRoundCorner(FZF)V

    return-void
.end method

.method public enableStaticBlur(Landroid/graphics/Bitmap;ZF)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableStaticBlur(Landroid/graphics/Bitmap;ZF)V

    return-void
.end method

.method public enableUnionBlur()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableUnionBlur()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;Z)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;Z)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUnionRenderEffect"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    invoke-direct {p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    :cond_0
    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->TAG:Ljava/lang/String;

    const-string p2, "TranAospUnionRenderEffect"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

    :cond_2
    return-object p1
.end method

.method public isAutoInvalidate()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isAutoInvalidate()Z

    move-result p0

    return p0
.end method

.method public isBackdropBlur()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isBackdropBlur()Z

    move-result p0

    return p0
.end method

.method public isStaticBlur()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isStaticBlur()Z

    move-result p0

    return p0
.end method

.method public isUnionBlur()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isUnionBlur()Z

    move-result p0

    return p0
.end method

.method public refRealObject()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public requestFrameSpacing(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->requestFrameSpacing(I)Z

    move-result p0

    return p0
.end method

.method public requiresNoEffect()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->requiresNoEffect()Z

    move-result p0

    return p0
.end method

.method public setApiMode(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setApiMode(I)V

    return-void
.end method

.method public setBlurAlgorithm(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setBlurAlgorithm(I)V

    return-void
.end method

.method public setCustomBlender(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setCustomBlender(Ljava/lang/Object;)V

    return-void
.end method

.method public setOffscreenRenderingOptimization(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setOffscreenRenderingOptimization(Z)V

    return-void
.end method

.method public setRequestWindowType(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setRequestWindowType(I)V

    return-void
.end method
