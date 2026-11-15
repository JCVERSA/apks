.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;
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
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private final sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/HiB;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->sP:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;

    const-string v1, "endcardDynamicCreatives"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;

    const-string v1, "multiOpenCovert"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;

    const-string v1, "skipToNextAd"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    const-string p2, "endcardDynamicCreatives"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->sP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Jcg(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    const-string p2, "multiOpenCovert"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->sP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Dq(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 9
    :cond_1
    const-string p2, "skipToNextAd"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->sP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->sP:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
