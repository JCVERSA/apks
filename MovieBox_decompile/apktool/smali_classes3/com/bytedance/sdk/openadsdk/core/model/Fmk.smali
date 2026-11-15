.class public Lcom/bytedance/sdk/openadsdk/core/model/Fmk;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final EjP:I

.field private final Sj:I

.field private final TKC:I

.field private final sP:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "auto_click"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->Sj:I

    .line 12
    .line 13
    const-string v0, "close_jump_probability"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->sP:I

    .line 20
    .line 21
    const-string v0, "skip_jump_probability"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->TKC:I

    .line 28
    .line 29
    const-string v0, "hidden_bar"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->EjP:I

    .line 36
    .line 37
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DPc()Lcom/bytedance/sdk/openadsdk/core/model/Fmk;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DPc()Lcom/bytedance/sdk/openadsdk/core/model/Fmk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->EjP()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public EjP()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->EjP:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public HiB()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->Sj:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v3, "auto_click"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->sP:I

    .line 17
    .line 18
    const/16 v3, 0x64

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    if-gt v1, v3, :cond_1

    .line 23
    .line 24
    const-string v4, "close_jump_probability"

    .line 25
    .line 26
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->TKC:I

    .line 30
    .line 31
    if-lez v1, :cond_2

    .line 32
    .line 33
    if-gt v1, v3, :cond_2

    .line 34
    .line 35
    const-string v3, "skip_jump_probability"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->EjP:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const-string v1, "hidden_bar"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_3
    return-object v0

    .line 50
    :catch_0
    const/4 v0, 0x0

    .line 51
    return-object v0
.end method

.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->Sj:I

    return v0
.end method

.method public TKC()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->TKC:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public sP()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;->sP:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method
