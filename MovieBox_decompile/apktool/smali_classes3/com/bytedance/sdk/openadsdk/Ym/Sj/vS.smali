.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;
.super Lcom/bytedance/sdk/component/Sj/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Sj/HiB<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/Yf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/HiB;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;->Sj:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string p1, "interactiveFinish"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    const-string p2, "reduce_duration"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;->Sj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    .line 7
    :try_start_0
    const-string v3, "finish"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const/4 v3, -0x1

    .line 8
    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vb()I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    move v2, v5

    :goto_1
    if-ltz p1, :cond_3

    if-ltz v2, :cond_3

    .line 10
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    if-ltz p1, :cond_4

    goto :goto_2

    :cond_4
    if-ltz v2, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v5

    :goto_2
    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(I)V

    goto :goto_3

    :cond_6
    move v5, v3

    .line 12
    :goto_3
    const-string v1, "code"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 14
    :goto_4
    const-string p2, "InteractiveFinishMethod"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-object v0
.end method
