.class public Lcom/bytedance/sdk/component/adexpress/vS/TEQ;
.super Lcom/bytedance/adsdk/sP/vS;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/vS/TEQ$Sj;
    }
.end annotation


# instance fields
.field private Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->Sj:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/TEQ;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->Sj:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Dq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->sP:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setProgress(F)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->sP:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/vS/TEQ$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/TEQ;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setImageAssetDelegate(Lcom/bytedance/adsdk/sP/EjP;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setAnimationsLoop(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setImageLottieTosPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->sP:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLottieAdDescMaxLength(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setLottieAdTitleMaxLength(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setLottieAppNameMaxLength(I)V
    .locals 0

    .line 1
    return-void
.end method
