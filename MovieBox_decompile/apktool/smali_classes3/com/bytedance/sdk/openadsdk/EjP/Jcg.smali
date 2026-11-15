.class public Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:J

.field private HiB:J

.field private Sj:J

.field private TKC:J

.field private sP:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public EjP(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->EjP:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->EjP:J

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public HiB(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->HiB:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->HiB:J

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    if-nez p1, :cond_0

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p1, v0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 21
    const-string v4, "show_start"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 23
    const-string v4, "show_firstQuartile"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->TKC:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 25
    const-string v4, "show_mid"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->EjP:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 27
    const-string v4, "show_thirdQuartile"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->HiB:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 29
    const-string v2, "show_full"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    return-object p1
.end method

.method public Sj(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj:J

    :cond_0
    return-void
.end method

.method public Sj(JF)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(J)V

    :cond_0
    float-to-double v0, p3

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(J)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP(J)V

    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(J)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP(J)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->TKC(J)V

    :cond_2
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(J)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP(J)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->TKC(J)V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->EjP(J)V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_4

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(J)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP(J)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->TKC(J)V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->EjP(J)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->HiB(J)V

    :cond_4
    return-void
.end method

.method public Sj()Z
    .locals 4

    .line 3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public TKC(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->TKC:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->TKC:J

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public sP()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public sP(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->sP:J

    :cond_0
    return-void
.end method
