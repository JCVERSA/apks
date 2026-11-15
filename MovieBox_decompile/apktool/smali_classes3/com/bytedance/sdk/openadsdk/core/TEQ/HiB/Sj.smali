.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;
.super Lcom/bytedance/sdk/component/adexpress/sP/Fmk;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;
    }
.end annotation


# instance fields
.field private EjP:F

.field private Sj:Lorg/json/JSONObject;

.field private TKC:F

.field private sP:Lcom/bytedance/adsdk/ugeno/core/Zq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->Sj:Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->sP:Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->TKC:F

    .line 21
    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->EjP:F

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public LD()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->Sj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public LqL()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->TKC:F

    .line 2
    .line 3
    return v0
.end method

.method public Yf()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->EjP:F

    .line 2
    .line 3
    return v0
.end method

.method public fF()Lcom/bytedance/adsdk/ugeno/core/Zq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->sP:Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 2
    .line 3
    return-object v0
.end method
