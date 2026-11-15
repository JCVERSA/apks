.class public Lcom/bytedance/sdk/component/uA/EjP;
.super Lcom/bytedance/sdk/component/uA/TKC;
.source "source.java"


# instance fields
.field private Dq:F

.field private final EjP:Landroid/content/Context;

.field private final HiB:Lcom/bytedance/sdk/component/uA/vS;

.field private Jcg:J

.field private final Sj:Landroid/view/View$OnTouchListener;

.field private TEQ:Ljava/lang/String;

.field private final TKC:J

.field private final sP:I

.field private uA:F

.field private vS:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;IJLcom/bytedance/sdk/component/uA/vS;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/uA/TKC;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/EjP;->Jcg:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->EjP:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bytedance/sdk/component/uA/EjP;->Sj:Landroid/view/View$OnTouchListener;

    .line 11
    .line 12
    iput p3, p0, Lcom/bytedance/sdk/component/uA/EjP;->sP:I

    .line 13
    .line 14
    iput-wide p4, p0, Lcom/bytedance/sdk/component/uA/EjP;->TKC:J

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bytedance/sdk/component/uA/EjP;->HiB:Lcom/bytedance/sdk/component/uA/vS;

    .line 17
    .line 18
    return-void
.end method

.method private Sj(IFF)V
    .locals 4

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :try_start_0
    const-string v2, "is_interceptor"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string p1, "click_x"

    float-to-double v2, p2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 13
    const-string p1, "click_y"

    float-to-double p2, p3

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    const-string p2, "lp_click_type"

    iget p3, p0, Lcom/bytedance/sdk/component/uA/EjP;->sP:I

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    const-string p2, "lp_click_interval"

    iget-wide v2, p0, Lcom/bytedance/sdk/component/uA/EjP;->TKC:J

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17
    const-string p2, "pag_json_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string p1, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    const-string p2, "LpClickIntervalTouchListener"

    const-string p3, "sendLpClickInterceptEvent"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/uA/Sj/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP()Lcom/bytedance/sdk/component/uA/Sj/sP;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/uA/Sj/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP()Lcom/bytedance/sdk/component/uA/Sj/sP;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/uA/EjP;->HiB:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/uA/vS;->getMaterialMeta()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    iget-object p3, p0, Lcom/bytedance/sdk/component/uA/EjP;->TEQ:Ljava/lang/String;

    const-string v1, "click_interval_intercept"

    invoke-interface {p1, p2, p3, v1, v0}, Lcom/bytedance/sdk/component/uA/Sj/sP;->Sj(Lcom/bytedance/sdk/component/uA/sP/Sj;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private Sj(J)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/uA/EjP;->Jcg:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->Jcg:J

    return v3

    .line 3
    :cond_0
    iget v2, p0, Lcom/bytedance/sdk/component/uA/EjP;->sP:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    sub-long v0, p1, v0

    .line 4
    iget-wide v5, p0, Lcom/bytedance/sdk/component/uA/EjP;->TKC:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_1

    return v4

    .line 5
    :cond_1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->Jcg:J

    return v3

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    sub-long v0, p1, v0

    .line 6
    iget-wide v5, p0, Lcom/bytedance/sdk/component/uA/EjP;->TKC:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_3

    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->Jcg:J

    return v4

    .line 8
    :cond_3
    iput-wide p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->Jcg:J

    :cond_4
    return v3
.end method


# virtual methods
.method public Sj(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->vS:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/EjP;->TEQ:Ljava/lang/String;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v10, 0x1

    .line 23
    if-eq v0, v10, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v4, p0, Lcom/bytedance/sdk/component/uA/EjP;->Dq:F

    .line 27
    .line 28
    iget v5, p0, Lcom/bytedance/sdk/component/uA/EjP;->uA:F

    .line 29
    .line 30
    iget-object v6, p0, Lcom/bytedance/sdk/component/uA/EjP;->EjP:Landroid/content/Context;

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    move v2, v7

    .line 34
    move v3, v8

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/uA/TKC;->Sj(FFFFLandroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/uA/EjP;->Sj(J)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v10, v7, v8}, Lcom/bytedance/sdk/component/uA/EjP;->Sj(IFF)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, v9, v7, v8}, Lcom/bytedance/sdk/component/uA/EjP;->Sj(IFF)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iput v7, p0, Lcom/bytedance/sdk/component/uA/EjP;->Dq:F

    .line 64
    .line 65
    iput v8, p0, Lcom/bytedance/sdk/component/uA/EjP;->uA:F

    .line 66
    .line 67
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/EjP;->Sj:Landroid/view/View$OnTouchListener;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/EjP;->vS:Landroid/view/View$OnTouchListener;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 79
    .line 80
    .line 81
    :cond_5
    return v9
.end method
