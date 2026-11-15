.class public abstract Lcom/bytedance/sdk/component/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sj/Jcg;",
            ">;"
        }
    .end annotation
.end field

.field protected EjP:Landroid/os/Handler;

.field protected HiB:Ljava/lang/String;

.field Jcg:Lcom/bytedance/sdk/component/Sj/Jcg;

.field protected Sj:Landroid/content/Context;

.field protected TKC:Lcom/bytedance/sdk/component/Sj/Dq;

.field protected sP:Lcom/bytedance/sdk/component/Sj/Fmk;

.field protected volatile vS:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->EjP:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Dq:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Sj/Sj;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/Sj/uvD;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/Sj/uvD;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/Sj/uvD;
    .locals 7

    .line 31
    const-string v0, "params"

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 32
    :cond_0
    const-string v1, "__callback_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v3, "func"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    .line 35
    :cond_1
    :try_start_0
    const-string v2, "__msg_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v4, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 38
    instance-of v4, v5, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 39
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_2
    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 41
    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    :cond_3
    :goto_0
    move-object v0, v4

    goto :goto_1

    .line 42
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_1
    const-string v4, "JSSDK"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v5, "namespace"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    const-string v6, "__iframe_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/component/Sj/uvD;->Sj()Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v6

    .line 48
    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v4

    .line 49
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->vS(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->Sj()Lcom/bytedance/sdk/component/Sj/uvD;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    const/4 p1, -0x1

    .line 56
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/Sj/uvD;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/component/Sj/uvD;

    move-result-object p1

    return-object p1
.end method

.method private sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/Jcg;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->HiB:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/Sj/Jcg;

    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Jcg:Lcom/bytedance/sdk/component/Sj/Jcg;

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected abstract Sj(Lcom/bytedance/sdk/component/Sj/TEQ;)Landroid/content/Context;
.end method

.method protected abstract Sj()Ljava/lang/String;
.end method

.method final Sj(Lcom/bytedance/sdk/component/Sj/TEQ;Lcom/bytedance/sdk/component/Sj/dx;)V
    .locals 1

    .line 25
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Sj/TEQ;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Sj:Landroid/content/Context;

    .line 26
    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->EjP:Lcom/bytedance/sdk/component/Sj/Dq;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/Sj/Dq;

    .line 27
    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->uA:Lcom/bytedance/sdk/component/Sj/Fmk;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->sP:Lcom/bytedance/sdk/component/Sj/Fmk;

    .line 28
    new-instance v0, Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-direct {v0, p1, p0, p2}, Lcom/bytedance/sdk/component/Sj/Jcg;-><init>(Lcom/bytedance/sdk/component/Sj/TEQ;Lcom/bytedance/sdk/component/Sj/Sj;Lcom/bytedance/sdk/component/Sj/dx;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Jcg:Lcom/bytedance/sdk/component/Sj/Jcg;

    .line 29
    iget-object p2, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Ym:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Sj;->HiB:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Lcom/bytedance/sdk/component/Sj/TEQ;)V

    return-void
.end method

.method protected final Sj(Lcom/bytedance/sdk/component/Sj/uvD;)V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/uvD;->Jcg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/Jcg;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->sP:Lcom/bytedance/sdk/component/Sj/Fmk;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj()Ljava/lang/String;

    .line 9
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/Sj/TzV;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Namespace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bytedance/sdk/component/Sj/uvD;->Jcg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x4

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/Sj/TzV;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    return-void

    .line 10
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/component/Sj/vS;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/Sj/vS;-><init>()V

    .line 11
    iput-object v0, v2, Lcom/bytedance/sdk/component/Sj/vS;->sP:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Sj:Landroid/content/Context;

    iput-object v0, v2, Lcom/bytedance/sdk/component/Sj/vS;->Sj:Landroid/content/Context;

    .line 13
    iput-object v1, v2, Lcom/bytedance/sdk/component/Sj/vS;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    .line 14
    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    move-result-object v0

    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->sP:Lcom/bytedance/sdk/component/Sj/Fmk;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj()Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/Sj/TzV;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/Sj/TzV;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    return-void

    .line 19
    :cond_5
    iget-boolean v1, v0, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;->Sj:Z

    if-eqz v1, :cond_6

    .line 20
    iget-object v0, v0, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;->sP:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->sP:Lcom/bytedance/sdk/component/Sj/Fmk;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    .line 23
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    return-void
.end method

.method protected abstract Sj(Ljava/lang/String;)V
.end method

.method protected Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method protected invokeMethod(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->EjP:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/bytedance/sdk/component/Sj/Sj$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/component/Sj/Sj;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Jcg:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->Dq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Sj/Jcg;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->EjP:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    return-void
.end method

.method protected abstract sP(Lcom/bytedance/sdk/component/Sj/TEQ;)V
.end method

.method final sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V
    .locals 3

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p2, Lcom/bytedance/sdk/component/Sj/uvD;->vS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal callback data: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/uA;->Sj(Ljava/lang/RuntimeException;)V

    .line 10
    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/Sj/Zq;->Sj()Lcom/bytedance/sdk/component/Sj/Zq;

    move-result-object p1

    const-string v1, "__msg_type"

    const-string v2, "callback"

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/Sj/Zq;->Sj(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/Sj/Zq;

    move-result-object p1

    const-string v1, "__callback_id"

    iget-object v2, p2, Lcom/bytedance/sdk/component/Sj/uvD;->vS:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/Sj/Zq;->Sj(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/Sj/Zq;

    move-result-object p1

    const-string v1, "__params"

    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/Sj/Zq;->Sj(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/Sj/Zq;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sj/Zq;->sP()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    return-void
.end method
