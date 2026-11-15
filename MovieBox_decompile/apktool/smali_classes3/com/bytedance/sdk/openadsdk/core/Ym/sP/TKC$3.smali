.class final Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->sP(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Z

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Z

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->sP:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->TKC:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->EjP:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->HiB:Z

    .line 10
    .line 11
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->vS:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "type"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->Sj:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "success"

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->sP:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->TKC:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "description"

    .line 31
    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->TKC:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string v1, "url"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->EjP:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    .line 45
    .line 46
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->TKC:F

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    cmpl-float v2, v1, v2

    .line 50
    .line 51
    if-ltz v2, :cond_1

    .line 52
    .line 53
    const-string v2, "progress"

    .line 54
    .line 55
    const/high16 v3, 0x42c80000    # 100.0f

    .line 56
    .line 57
    mul-float/2addr v1, v3

    .line 58
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-double v3, v1

    .line 63
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 64
    .line 65
    div-double/2addr v3, v5

    .line 66
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->HiB:Z

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    const-string v1, "retry"

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->vS:Ljava/lang/String;

    .line 84
    .line 85
    const-string v3, "dsp_track_link_result"

    .line 86
    .line 87
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
