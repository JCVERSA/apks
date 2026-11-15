.class public Lcom/bytedance/sdk/openadsdk/core/model/Zq;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "easy_playable"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    .line 16
    .line 17
    const-string v1, "components"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;-><init>(Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tX()Lcom/bytedance/sdk/openadsdk/core/model/Zq;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_2
    return v0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tX()Lcom/bytedance/sdk/openadsdk/core/model/Zq;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    .line 13
    .line 14
    return-object p0
.end method
