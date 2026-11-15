.class Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

.field final synthetic Sj:Lorg/json/JSONObject;

.field final synthetic TKC:J

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Lorg/json/JSONObject;JJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->Sj:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->sP:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->TKC:J

    .line 8
    .line 9
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->EjP:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 10

    .line 1
    const-string v0, "duration"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->Sj:Lorg/json/JSONObject;

    .line 9
    .line 10
    const-string v3, "callback_start"

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->sP:J

    .line 19
    .line 20
    sub-long v2, v6, v2

    .line 21
    .line 22
    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->TKC:J

    .line 23
    .line 24
    sub-long/2addr v8, v6

    .line 25
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->Sj:Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->Sj:Lorg/json/JSONObject;

    .line 32
    .line 33
    const-string v7, "extra_data"

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    new-instance v6, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string v7, "thread_dispatch_duration"

    .line 47
    .line 48
    invoke-virtual {v6, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v2, "build_banner_ad_duration"

    .line 52
    .line 53
    invoke-virtual {v6, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v2, "ad_load_duration_full"

    .line 57
    .line 58
    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$2;->EjP:J

    .line 59
    .line 60
    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string v0, "ad_extra_data"

    .line 67
    .line 68
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :catchall_0
    :cond_1
    return-object v1
.end method
