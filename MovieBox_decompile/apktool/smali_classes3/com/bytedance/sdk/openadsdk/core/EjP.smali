.class public Lcom/bytedance/sdk/openadsdk/core/EjP;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    const-string v0, "type"

    .line 9
    .line 10
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    const-string p2, "convert_track"

    .line 14
    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
