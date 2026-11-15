.class public abstract Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final EjP:Ljava/lang/Runnable;

.field private final Sj:Landroid/content/Context;

.field private TKC:Z

.field protected final sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->TKC:Z

    .line 13
    .line 14
    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;-><init>(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->EjP:Ljava/lang/Runnable;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method

.method private Sj()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->TKC:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->EjP:Ljava/lang/Runnable;

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->sP()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->TKC:Z

    :cond_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->TKC:Z

    return p1
.end method


# virtual methods
.method public EjP(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public HiB()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Jcg()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected TKC(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TKC()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_2
    return-void
.end method

.method public abstract sP()Ljava/lang/String;
.end method
