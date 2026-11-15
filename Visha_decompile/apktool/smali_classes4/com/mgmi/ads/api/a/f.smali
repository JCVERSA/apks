.class public Lcom/mgmi/ads/api/a/f;
.super Lcom/mgmi/ads/api/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a/f$a;
    }
.end annotation


# instance fields
.field protected u:Lcom/mgtv/a/b/b;

.field protected v:Lcom/mgadplus/netlib/base/b;

.field w:Lcom/mgmi/net/bean/BootAdBean;

.field x:J

.field y:Z

.field private final z:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/a/f;->z:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;J)V
    .locals 9

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    .line 63
    invoke-direct/range {v0 .. v8}, Lcom/mgmi/ads/api/a/f;->a(ZLandroid/app/Activity;Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->z:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private a(ZLandroid/app/Activity;Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;J)V
    .locals 6

    .line 54
    const-string p1, "mgmiad"

    const-string p7, "BootAdsloader.playBoot"

    invoke-static {p1, p7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 55
    iget-object p1, p3, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 56
    const-string p2, "1"

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p3, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string p2, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p3, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string p2, "4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p4, p6, p5, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Lcom/mgmi/model/r;)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/mgmi/ads/api/a/f;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v4, "AD_VAST_REQUEST_ERROR_NOT_VAST_CONTENT"

    const v5, 0x19258

    move-object v0, p0

    move-object v1, p4

    move-object v2, p6

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0xaae61

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p2, p1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    .line 61
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    .line 62
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/mgmi/trace/a;->a(Lcom/mgmi/net/bean/BootAdBean;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/mgmi/c/a/a;

    new-instance v1, Lcom/mgmi/ads/api/a/f$1;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/a/f$1;-><init>(Lcom/mgmi/ads/api/a/f;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/mgmi/c/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/c/a/b;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/a/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/mgmi/net/bean/BootAdBean;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p0, :cond_0

    .line 5
    iget p1, p0, Lcom/mgmi/net/bean/BootDataItem;->interact_tpid:I

    if-lez p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->interact_online:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ley4;->b(Landroid/content/Context;Ljava/lang/String;Lsed;)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {p0}, Lyld;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/mgmi/ads/api/e/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mgmi/ads/api/e/c;->b()I

    move-result v0

    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lyld;->c(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private s()Z
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mgtv/a/b/b;

    invoke-direct {v0}, Lcom/mgtv/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    invoke-virtual {v0, p0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgtv/a/b/a/b;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgmi/ads/api/a;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 78
    :try_start_0
    invoke-static {p1}, Lmpd;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
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

    .line 80
    :catch_0
    const-string p0, "mgmi"

    const-string p1, "generateAuthenticationtoken error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public a()V
    .locals 0

    .line 14
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->a()V

    .line 15
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->s()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    const p2, 0x927c0

    if-ne p1, p2, :cond_1

    .line 73
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    sget-object p1, Lcom/mgmi/ads/api/a$a;->CLOSE_AD:Lcom/mgmi/ads/api/a$a;

    .line 75
    iget-object p2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p2

    new-instance v0, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v0}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->s()V

    :cond_1
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->l:Z

    .line 4
    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    .line 5
    iput-object p2, p0, Lcom/mgmi/ads/api/a/e;->g:Lcom/mgmi/ads/api/a/e$a;

    .line 6
    const-string p2, "BootAdsloader"

    iput-object p2, p0, Lcom/mgmi/ads/api/a/e;->j:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e;->d(Lcom/mgmi/ads/api/a/d;)V

    .line 9
    invoke-virtual {p0, v5, p1}, Lcom/mgmi/ads/api/a/e;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;

    move-result-object v3

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 10
    new-instance v1, Lcom/mgmi/ads/api/a/f$a;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/a/f$a;-><init>(Lcom/mgmi/ads/api/a/f;)V

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mgmi/ads/api/a/f$a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;ZI)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    new-instance p1, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    .line 13
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, p2, p1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 8

    .line 17
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/f;->d(Lcom/mgmi/net/bean/BootAdBean;)V

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->backup_url:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->backup_url:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mgmi/ads/api/a/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 22
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->backup_video_url:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->backup_video_url:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lyld;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 26
    invoke-static {}, Lcom/mgmi/ads/api/e/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mgmi/ads/api/e/c;->b()I

    move-result v3

    invoke-static {v2, v3, v1}, Lyld;->c(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_2
    const-string v0, "imax"

    const-string v1, "huge"

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 29
    iget-object v3, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    .line 30
    iget-object v5, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v5, v5, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v5, :cond_4

    .line 31
    iget-object v6, v5, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, v5, Lcom/mgmi/net/bean/BootDataItem;->backup_url:Ljava/util/List;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 32
    iget-object v5, v5, Lcom/mgmi/net/bean/BootDataItem;->backup_url:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/mgmi/ads/api/a/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_9

    .line 34
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p0, :cond_9

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 36
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_4
    if-ge v2, p0, :cond_9

    .line 37
    iget-object v3, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v3, :cond_8

    .line 38
    iget-object v4, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, v3, Lcom/mgmi/net/bean/BootDataItem;->backup_video_url:Ljava/util/List;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 39
    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->backup_video_url:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    invoke-static {v4}, Lyld;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 41
    invoke-static {}, Lcom/mgmi/ads/api/e/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mgmi/ads/api/e/c;->b()I

    move-result v6

    invoke-static {v5, v6, v4}, Lyld;->c(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->err:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 65
    const-string v0, "[ERRORCODE]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 66
    const-string p2, "null"

    if-nez p3, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v0, "[ERRORMSG]"

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-nez p4, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {p4}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string p3, "[ERRORURL]"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgadplus/netlib/base/b;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 82
    new-instance p0, Lcom/mgmi/net/bean/a;

    invoke-direct {p0}, Lcom/mgmi/net/bean/a;-><init>()V

    .line 83
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/net/bean/a;->b:J

    .line 84
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/net/bean/a;->a(J)V

    .line 85
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/net/bean/a;->b(J)V

    .line 86
    iget-object p2, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p2, :cond_0

    .line 87
    iget-object p2, p2, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgmi/net/bean/a;->f:Ljava/lang/String;

    .line 88
    :cond_0
    iput-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    :cond_1
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;I)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p1, Lcom/mgmi/net/bean/BootAdBean;->isWarmBoot:Z

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/mgmi/ads/api/a/f;->a(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgadplus/netlib/base/b;)V

    .line 44
    invoke-virtual {p0, p1, p3}, Lcom/mgmi/ads/api/a/f;->b(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgadplus/netlib/base/b;)V

    if-eqz p1, :cond_2

    .line 45
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46
    iput-object p1, p0, Lcom/mgmi/ads/api/a/f;->w:Lcom/mgmi/net/bean/BootAdBean;

    .line 47
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->i()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 48
    invoke-virtual {p3}, Lcom/mgadplus/netlib/base/b;->c()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p3}, Lcom/mgadplus/netlib/base/b;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/f;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    .line 50
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/f;->n()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/mgmi/ads/api/a/f;->a(Landroid/app/Activity;Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;J)V

    goto :goto_2

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    const-string v4, "AD_VAST_REQUEST_ERROR_NOT_VAST_CONTENT"

    const v8, 0x19258

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    const v1, 0xaae61

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    .line 53
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/f;->r()V

    return-void
.end method

.method public a(ZI)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 69
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    .line 71
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance v0, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v0}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setErrorCode(I)Lcom/mgmi/net/bean/CustomBootAdBean;

    move-result-object p2

    const-string v0, "ADS_BOOT"

    invoke-virtual {p2, v0}, Lcom/mgmi/net/bean/CustomBootAdBean;->setWidgetType(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/mgmi/e/a;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/b/a/a;->a(ZLcom/mgmi/e/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->b()V

    .line 58
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/ads/api/a/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgmi/ads/api/a/f;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;)V

    return-void
.end method

.method public b(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0xaae61

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 5
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/f;->c(Lcom/mgmi/net/bean/BootAdBean;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-boolean v2, v0, Lcom/mgmi/net/bean/BootDataItem;->hasExposed:Z

    .line 7
    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "4"

    if-nez v0, :cond_8

    .line 8
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {v0}, Lg4d;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move v4, v2

    .line 9
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_9

    .line 10
    aget-object v5, v0, v4

    .line 11
    invoke-static {v5}, Lg4d;->q(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    iget-object v6, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v5, v6, Lcom/mgmi/net/bean/BootDataItem;->realUrl:Ljava/lang/String;

    .line 13
    iget v7, v6, Lcom/mgmi/net/bean/BootDataItem;->interact_tpid:I

    if-lez v7, :cond_1

    .line 14
    iput-object v3, v6, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    .line 15
    iput-object v5, v6, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 16
    :cond_1
    invoke-static {}, Lcom/mgmi/ads/api/e/f;->a()Lcom/mgmi/ads/api/e/f;

    invoke-static {v5}, Lcom/mgmi/ads/api/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 17
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v5, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    .line 18
    iput-object v3, v0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    goto/16 :goto_2

    .line 19
    :cond_2
    iget-object v6, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v5, v6, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    .line 20
    iget v7, v6, Lcom/mgmi/net/bean/BootDataItem;->interact_tpid:I

    if-lez v7, :cond_3

    iget-object v6, v6, Lcom/mgmi/net/bean/BootDataItem;->interact_online:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 21
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v3, v0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    .line 22
    iput-object v5, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    .line 23
    iput-object v5, v0, Lcom/mgmi/net/bean/BootDataItem;->realUrl:Ljava/lang/String;

    goto :goto_2

    .line 24
    :cond_3
    iget-object v6, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v6, v6, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 25
    iget-object v6, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v6, v6, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 26
    invoke-static {v5}, Lg4d;->o(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    iget-object v5, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    const-string v6, "1"

    iput-object v6, v5, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const/4 v6, 0x1

    .line 28
    iput-boolean v6, v5, Lcom/mgmi/net/bean/BootDataItem;->isBackUp:Z

    goto :goto_1

    .line 29
    :cond_4
    invoke-static {v5}, Lg4d;->p(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 30
    iget-object v5, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    const-string v6, "2"

    iput-object v6, v5, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    const v0, 0xaae69

    .line 32
    const-string v1, "unKnown media type"

    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/mgmi/ads/api/a/f;->a(Lcom/mgmi/net/bean/BootAdBean;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 34
    :cond_7
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    .line 35
    invoke-virtual {p0, v2, v1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    return-void

    .line 36
    :cond_8
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/f;->c(Lcom/mgmi/net/bean/BootAdBean;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v3, v0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    .line 38
    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->interact_online:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    .line 39
    iput-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->realUrl:Ljava/lang/String;

    .line 40
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/mgmi/ads/api/a/f;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    invoke-virtual {v0, p1}, Lcom/mgtv/a/b/a/a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 42
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_a

    .line 43
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mgtv/a/b/b;->b(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/a/b/b;->a(Landroid/view/View;)V

    .line 45
    :cond_a
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->t()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 46
    :cond_b
    iget-object p1, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->d()V

    .line 47
    :cond_c
    :goto_3
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/mgmi/ads/api/a/f;->x:J

    invoke-virtual {p1, v0, v1}, Lcom/mgmi/trace/a;->b(J)V

    .line 48
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/f;->l()V

    goto :goto_4

    .line 49
    :cond_d
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    .line 51
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/mgmi/trace/a;->a(Lcom/mgmi/net/bean/BootAdBean;Z)V

    :goto_4
    return-void
.end method

.method public b(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgadplus/netlib/base/b;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 52
    new-instance p0, Lcom/mgmi/net/bean/d;

    invoke-direct {p0}, Lcom/mgmi/net/bean/d;-><init>()V

    .line 53
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/net/bean/d;->b:J

    .line 54
    iput-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->thirdPartSdkCostItem:Lcom/mgmi/net/bean/d;

    .line 55
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string p2, "3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 56
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->thirdPartSdkCostItem:Lcom/mgmi/net/bean/d;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgmi/net/bean/d;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->c()V

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->u:Lcom/mgtv/a/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->d()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/f;->w:Lcom/mgmi/net/bean/BootAdBean;

    const-string v2, "ADS_BOOT"

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v3, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v3}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {v3, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setWidgetType(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;

    move-result-object v2

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f;->w:Lcom/mgmi/net/bean/BootAdBean;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->ssp_win_price:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/mgmi/net/bean/CustomBootAdBean;->setECpm(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance v1, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v1}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setWidgetType(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_NET_CALLBACK:Lcom/mgmi/ads/api/a$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance v1, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v1}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_0
    return-void
.end method

.method public n()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/f;->y:Z

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_RENDER_SUCCESS:Lcom/mgmi/ads/api/a$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance v1, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v1}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_FINISH:Lcom/mgmi/ads/api/a$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance v1, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v1}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_0
    return-void
.end method
