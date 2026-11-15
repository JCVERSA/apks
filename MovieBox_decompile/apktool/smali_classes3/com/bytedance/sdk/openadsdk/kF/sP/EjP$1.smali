.class final Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/kF/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Aw()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cX()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    .line 24
    .line 25
    const-string v2, "show_urls"

    .line 26
    .line 27
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    :try_start_0
    const-string v3, "root_view"

    .line 57
    .line 58
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;->Sj:I

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    if-eq v2, v3, :cond_2

    .line 73
    .line 74
    const-string v4, "dynamic_show_type"

    .line 75
    .line 76
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    .line 80
    .line 81
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;->sP:I

    .line 82
    .line 83
    if-eq v2, v3, :cond_3

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :catchall_0
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 91
    .line 92
    const-string v3, "mrc_show"

    .line 93
    .line 94
    invoke-static {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
