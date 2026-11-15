.class public Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Sj:I

.field private final TKC:F

.field private final sP:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->Sj:I

    .line 5
    .line 6
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->sP:I

    .line 7
    .line 8
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->TKC:F

    .line 9
    .line 10
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->Sj:I

    .line 7
    .line 8
    const-string v2, "width"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "height"

    .line 14
    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->sP:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->TKC:F

    .line 21
    .line 22
    float-to-double v1, p0

    .line 23
    const-string p0, "alpha"

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
