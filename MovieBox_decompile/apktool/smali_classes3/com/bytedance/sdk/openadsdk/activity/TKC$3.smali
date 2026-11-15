.class Lcom/bytedance/sdk/openadsdk/activity/TKC$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TKC;->fF()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "duration"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "percent"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/activity/TKC;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "scene_type"

    .line 42
    .line 43
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 46
    .line 47
    iget v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj:I

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "pag_json_data"

    .line 59
    .line 60
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string v1, "ad_extra_data"

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :catchall_0
    :cond_0
    return-object v0
.end method
