.class public Lcom/mgmi/ads/api/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/b;
.implements Lcom/mgmi/ads/api/a/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a/e$a;
    }
.end annotation


# static fields
.field protected static final m:Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/mgmi/ads/api/a/o;

.field protected c:Lcom/mgadplus/netlib/base/b;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/mgmi/e/a/d;

.field protected f:Lcom/mgmi/ads/api/a/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected g:Lcom/mgmi/ads/api/a/e$a;

.field protected h:Z

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Z

.field protected n:I

.field protected o:Ljava/lang/String;

.field protected p:I

.field protected q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected r:Z

.field protected s:Z

.field protected t:Lr7d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mgmi/ads/api/a/e;->m:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/ads/api/a/e;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    iput v0, p0, Lcom/mgmi/ads/api/a/e;->p:I

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->s:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    invoke-static {}, Lcom/mgmi/f/f;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->h:Z

    new-instance p1, Lr7d;

    invoke-direct {p1}, Lr7d;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->t:Lr7d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 180
    :try_start_0
    invoke-static {p1}, Lmpd;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "^"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    const-string p0, "mgmi"

    const-string p1, "generateAuthenticationtoken error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/ads/api/a/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_NOFITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 16
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 17
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_FLOAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_TYPE_SLIDEBANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 19
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_TYPE_DAMANG_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_TYPE_MIN_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_TYPE_INSIDE_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 22
    :cond_0
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_ONLINE_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ADS_TYPE_BARRAGE"

    const-string v2, "ADS_VIDEO_WIDGET_PROGRESS"

    const-string v3, "ADS_VIDEO_AI"

    const-string v4, "ADS_VIDEO_WIDGET_FOCUS"

    const-string v5, "ADS_TYPE_PAUSED"

    const-string v6, "ADS_VIDEO_WIDGET"

    const v7, 0x1ae1e

    const/16 v8, 0x11e4

    if-nez v0, :cond_7

    .line 23
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 24
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 29
    :cond_1
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_OFFVIDEO_ONLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x11ee

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgmi/g/a;->a(I)V

    .line 31
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mgmi/g/a;->i(I)Lcom/mgmi/g/a;

    .line 32
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-virtual {v0, v8}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 33
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object p2

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 36
    :cond_2
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ADS_TYPE_DOWNLOADING_OFFLINEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object p2

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    .line 38
    invoke-virtual {p2, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 39
    invoke-static {p1, p0, v2}, Lcom/mgmi/f/b;->b(Landroid/content/Context;Lcom/mgmi/model/n;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 40
    :cond_3
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_BOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p2

    const-wide/32 v0, 0x89545f

    .line 42
    invoke-virtual {p2, v0, v1}, Lcom/mgmi/g/a;->a(J)Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mgmi/g/a;->i(I)Lcom/mgmi/g/a;

    .line 43
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->k()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mgmi/g/a;->k(I)V

    .line 44
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->p()Z

    move-result p0

    invoke-static {p1, p2, v0, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 45
    :cond_4
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_TYPE_LOADING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p2

    const-wide/32 v0, 0x8954a2

    .line 47
    invoke-virtual {p2, v0, v1}, Lcom/mgmi/g/a;->a(J)Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mgmi/g/a;->i(I)Lcom/mgmi/g/a;

    .line 48
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 49
    :cond_5
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADS_TYPE_PULL_REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    const-wide/32 v1, 0x8954b0

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/mgmi/g/a;->a(J)Lcom/mgmi/g/a;

    .line 52
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2

    .line 53
    :cond_7
    :goto_0
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->t()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_8

    .line 54
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 55
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v7}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object v0

    const/16 v1, 0x1126

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 58
    invoke-static {p1, p0, p2}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 59
    :cond_8
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 60
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 61
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 62
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 63
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 64
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 65
    :cond_9
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mgmi/g/a;->i(I)Lcom/mgmi/g/a;

    .line 66
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-virtual {v0, v8}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 67
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/g/a;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object p2

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    .line 68
    invoke-virtual {p2, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 70
    :cond_a
    :goto_1
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 71
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/g/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/g/a;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object v0

    .line 72
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 73
    invoke-static {p1, p0, p2}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 74
    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->l:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mgmi/ads/api/a/e;->c:Lcom/mgadplus/netlib/base/b;

    .line 6
    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->t:Lr7d;

    invoke-static {v2}, Lcom/mgadplus/netlib/a/e;->a(Lr7d;)V

    .line 7
    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->k:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 9
    iput-object v1, p0, Lcom/mgmi/ads/api/a/e;->k:Ljava/util/List;

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->b:Lcom/mgmi/ads/api/a/o;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2, v0}, Lfnd;->a(Z)V

    .line 12
    iput-object v1, p0, Lcom/mgmi/ads/api/a/e;->b:Lcom/mgmi/ads/api/a/o;

    .line 13
    :cond_1
    invoke-static {}, Lcom/mgmi/b/b;->a()Lcom/mgmi/b/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/b/b;->b()V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;)V
    .locals 2

    .line 138
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_NOFITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 139
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 140
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_FLOAT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 141
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_SLIDEBANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 142
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_DAMANG_BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 143
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_MIN_BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 144
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_INSIDE_BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    .line 145
    :cond_0
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_ONLINE_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "/app/player"

    if-nez p0, :cond_a

    .line 146
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_TYPE_AUTO_PLAYER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 147
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_VIDEO_WIDGET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 148
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_TYPE_PAUSED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    .line 149
    :cond_1
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_VIDEO_WIDGET_PROGRESS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/progress"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 151
    :cond_2
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_VIDEO_AI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/ai_implant"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 153
    :cond_3
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_VIDEO_WIDGET_FOCUS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/focus"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 155
    :cond_4
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_OFFVIDEO_ONLINE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 157
    :cond_5
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_DOWNLOADING_OFFLINEAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/off/player"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 159
    :cond_6
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_BOOT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/json/app/boot"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 161
    :cond_7
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_LOADING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/player/loading"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 163
    :cond_8
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_PULL_REFRESH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/el"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto/16 :goto_2

    .line 165
    :cond_9
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_TYPE_BARRAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/barrage"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto :goto_2

    .line 167
    :cond_a
    :goto_0
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->t()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/live"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto :goto_2

    .line 169
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto :goto_2

    .line 170
    :cond_c
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/m/page"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    :cond_d
    :goto_2
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Lcom/mgmi/model/r;)V
    .locals 3
    .param p4    # Lcom/mgmi/model/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/mgmi/net/bean/b;

    invoke-direct {v0}, Lcom/mgmi/net/bean/b;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/net/bean/b;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 89
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/bean/b;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/net/bean/b;->a(J)V

    .line 91
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0, p3}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 94
    invoke-virtual {p4}, Lcom/mgmi/model/r;->n()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/mgmi/net/bean/b;->a(Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/net/bean/b;Lcom/mgmi/ads/api/a/d;)V

    .line 96
    :cond_4
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    if-eqz p0, :cond_5

    .line 97
    invoke-virtual {p0, v0}, Lcom/mgmi/e/a/d;->c(Lcom/mgmi/net/bean/b;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/mgmi/net/bean/b;

    invoke-direct {v0}, Lcom/mgmi/net/bean/b;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/net/bean/b;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 101
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/bean/b;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/net/bean/b;->a(J)V

    .line 103
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, p3}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {v0, p4}, Lcom/mgmi/net/bean/b;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p5}, Lcom/mgmi/net/bean/b;->b(I)V

    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/net/bean/b;Lcom/mgmi/ads/api/a/d;)V

    .line 109
    :cond_3
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    if-eqz p0, :cond_4

    .line 110
    invoke-virtual {p0, v0}, Lcom/mgmi/e/a/d;->d(Lcom/mgmi/net/bean/b;)V

    :cond_4
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->l:Z

    .line 77
    iput-object p3, p0, Lcom/mgmi/ads/api/a/e;->j:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    .line 79
    iput-object p2, p0, Lcom/mgmi/ads/api/a/e;->g:Lcom/mgmi/ads/api/a/e$a;

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e;->d(Lcom/mgmi/ads/api/a/d;)V

    .line 82
    invoke-virtual {p0, v5, p1}, Lcom/mgmi/ads/api/a/e;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;

    move-result-object v3

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 83
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/g/a;->t()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 84
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mgmi/ads/api/a/e;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mgmi/ads/api/a/e;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 0

    .line 14
    const-string p0, "BaseAdsLoader"

    const-string p1, "setAdsViewModelControl"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mgmi/net/bean/b;Lcom/mgmi/ads/api/a/d;)V
    .locals 3

    if-eqz p2, :cond_6

    .line 111
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_NOFITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 112
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_BANNER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 113
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_FLOAT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 114
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_TYPE_INSIDE_BANNER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    .line 115
    :cond_0
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADS_ONLINE_VIDEO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x4

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 116
    invoke-virtual {p1, p0}, Lcom/mgmi/net/bean/b;->b(Z)V

    .line 117
    invoke-virtual {p1, v1}, Lcom/mgmi/net/bean/b;->a(I)V

    goto :goto_2

    .line 118
    :cond_1
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ADS_OFFVIDEO_ONLINE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 119
    invoke-virtual {p1, v0}, Lcom/mgmi/net/bean/b;->b(Z)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/mgmi/net/bean/b;->a(I)V

    goto :goto_2

    .line 121
    :cond_2
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ADS_VIDEO_WIDGET"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 122
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ADS_TYPE_PAUSED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 123
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ADS_VIDEO_AI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 124
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ADS_VIDEO_WIDGET_PROGRESS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ADS_TYPE_DOWNLOADING_OFFLINEAD"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 126
    invoke-virtual {p1, v0}, Lcom/mgmi/net/bean/b;->b(Z)V

    const/16 p0, 0x9

    .line 127
    invoke-virtual {p1, p0}, Lcom/mgmi/net/bean/b;->a(I)V

    goto :goto_2

    .line 128
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/mgmi/net/bean/b;->b(Z)V

    .line 129
    invoke-virtual {p1, v1}, Lcom/mgmi/net/bean/b;->a(I)V

    goto :goto_2

    .line 130
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Lcom/mgmi/net/bean/b;->b(Z)V

    const/4 p0, 0x5

    .line 131
    invoke-virtual {p1, p0}, Lcom/mgmi/net/bean/b;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;)V
    .locals 0

    .line 132
    iput-object p4, p0, Lcom/mgmi/ads/api/a/e;->c:Lcom/mgadplus/netlib/base/b;

    .line 133
    iput-object p2, p0, Lcom/mgmi/ads/api/a/e;->d:Ljava/lang/String;

    .line 134
    iget-object p2, p0, Lcom/mgmi/ads/api/a/e;->b:Lcom/mgmi/ads/api/a/o;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 135
    invoke-virtual {p2, p3}, Lfnd;->a(Z)V

    .line 136
    :cond_0
    new-instance p2, Lcom/mgmi/ads/api/a/o;

    invoke-direct {p2, p0}, Lcom/mgmi/ads/api/a/o;-><init>(Lcom/mgmi/ads/api/a/o$a;)V

    iput-object p2, p0, Lcom/mgmi/ads/api/a/e;->b:Lcom/mgmi/ads/api/a/o;

    .line 137
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lfnd;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mgmi/ads/api/a/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgmi/ads/api/a/d;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 171
    invoke-static {p4}, Lfyd;->e(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    .line 172
    invoke-virtual {p0, p5}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    .line 173
    new-instance p5, Lcom/mgadplus/netlib/a/a;

    invoke-interface {p3}, Lcom/mgmi/ads/api/a/d;->i()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p5, p6}, Lcom/mgadplus/netlib/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lcom/mgadplus/netlib/a/a;->a(Ljava/util/Map;)Lcom/mgadplus/netlib/a/a;

    move-result-object p5

    .line 174
    invoke-interface {p3}, Lcom/mgmi/ads/api/a/d;->d()I

    move-result p3

    .line 175
    invoke-virtual {p5, p3}, Lcom/mgadplus/netlib/a/a;->a(I)Lcom/mgadplus/netlib/a/a;

    move-result-object p3

    .line 176
    sget-object p5, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    const-string p6, "auver"

    const-string v0, "v1"

    invoke-virtual {p3, p6, v0, p5}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 177
    iget-object p6, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {p0, p4, p6}, Lcom/mgmi/ads/api/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "Authentication"

    invoke-virtual {p3, v0, p6, p5}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 178
    new-instance p5, Lcom/mgmi/ads/api/a/e$1;

    invoke-direct {p5, p0, p1, p2}, Lcom/mgmi/ads/api/a/e$1;-><init>(Lcom/mgmi/ads/api/a/e;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p4, p3, p5}, Lcom/mgadplus/netlib/a/e;->a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/e;->j()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/e;->h:Z

    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    .line 187
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setErrorCode(I)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p0

    .line 189
    invoke-virtual {v0, p1, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/mgmi/e/a;)V
    .locals 0

    .line 3
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/mgmi/ads/api/a/d;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    const-string v1, "BaseAdsLoader"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/mgmi/model/r;)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->c:Lcom/mgadplus/netlib/base/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->c:Lcom/mgadplus/netlib/base/b;

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Lcom/mgmi/model/r;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e;->c(Lcom/mgmi/model/r;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v4

    iget-object v5, p0, Lcom/mgmi/ads/api/a/e;->c:Lcom/mgadplus/netlib/base/b;

    iget-object v6, p0, Lcom/mgmi/ads/api/a/e;->d:Ljava/lang/String;

    const-string v7, "vast xml data error"

    const v8, 0x19640

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/e;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b_()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/mgmi/ads/api/a/d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    return-void
.end method

.method public c(Lcom/mgmi/model/r;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->g:Lcom/mgmi/ads/api/a/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/mgmi/ads/api/a/e;->m:Landroid/os/Handler;

    new-instance v1, Lcom/mgmi/ads/api/a/e$2;

    invoke-direct {v1, p0, p1}, Lcom/mgmi/ads/api/a/e$2;-><init>(Lcom/mgmi/ads/api/a/e;Lcom/mgmi/model/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c_()V
    .locals 0

    return-void
.end method

.method public d(Lcom/mgmi/ads/api/a/d;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()Lcom/mgmi/ads/api/a/d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    return-object p0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->g:Lcom/mgmi/ads/api/a/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a/e;->m:Landroid/os/Handler;

    new-instance v1, Lcom/mgmi/ads/api/a/e$3;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/a/e$3;-><init>(Lcom/mgmi/ads/api/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/e;->h:Z

    return p0
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v3}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->k:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/mgmi/ads/api/a;->onADLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_NET_CALLBACK:Lcom/mgmi/ads/api/a$a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method
