.class public Lcom/mbridge/msdk/mbnative/controller/NativeController$n;
.super Lcom/mbridge/msdk/mbnative/service/net/b;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/task/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/mbridge/msdk/mbnative/controller/NativeController;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/service/net/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->c:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->e:Z

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->f:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController$n;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    invoke-static {p1, v0, p2, v1}, Lcom/mbridge/msdk/foundation/same/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z

    .line 87
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->c:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result p1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbnative/controller/d;->b(ILjava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iget-object v0, v0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->a()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->e:Z

    if-eqz p1, :cond_4

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->e:Z

    if-eqz p1, :cond_4

    .line 95
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->c:Z

    if-nez v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iget-object v1, v1, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 101
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Frame;

    .line 102
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/out/Campaign;

    .line 105
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 106
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/out/Campaign;->loadImageUrlAsyncWithBlock(Lcom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 107
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/out/Campaign;->loadIconUrlAsyncWithBlock(Lcom/mbridge/msdk/out/OnImageLoadListener;)V

    goto :goto_0

    .line 108
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 109
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z

    .line 110
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;

    move-result-object p1

    const-string v0, "ads in frame is empty"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdLoadError(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdFramesLoaded(Ljava/util/List;)V

    goto :goto_3

    .line 113
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 114
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z

    .line 115
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;

    move-result-object p1

    const-string v0, "frame is empty"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdLoadError(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public a(Ljava/util/List;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/g;",
            ">;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z

    .line 3
    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/j;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/db/j;->a()V

    .line 5
    iget-object v4, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->d:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iget-object v5, v5, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/mbnative/controller/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_19

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    .line 10
    iget-object v5, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v8

    const/4 v9, 0x2

    if-gtz v8, :cond_4

    .line 15
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v8

    const/4 v10, -0x3

    if-ne v8, v10, :cond_2

    .line 16
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v8, v10}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    goto :goto_0

    .line 17
    :cond_2
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v10

    invoke-static {v8, v10}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    .line 18
    :goto_0
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getTemplate()I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 19
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v10

    invoke-static {v8, v10}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    .line 20
    :cond_3
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getTemplate()I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    .line 21
    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v10

    invoke-static {v8, v10}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    :cond_4
    move v8, v4

    .line 22
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, "APP ALREADY INSTALLED"

    if-ge v8, v10, :cond_11

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    iget-object v12, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 25
    iget-object v12, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v12}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 26
    iget-object v12, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v12}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v10, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 28
    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_6

    .line 29
    invoke-virtual {v10, v13}, Lcom/mbridge/msdk/out/Campaign;->loadIconUrlAsyncWithBlock(Lcom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 30
    invoke-virtual {v10, v13}, Lcom/mbridge/msdk/out/Campaign;->loadImageUrlAsyncWithBlock(Lcom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 31
    :cond_6
    iget-object v12, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v12}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10}, Lcom/mbridge/msdk/out/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    .line 32
    iget-object v14, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v14}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/mbridge/msdk/mbnative/controller/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 33
    iget-object v14, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v14}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v14

    const/16 v15, 0x63

    if-ge v8, v14, :cond_b

    .line 34
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v14

    if-eq v14, v15, :cond_b

    .line 35
    invoke-static {v10}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v12, :cond_7

    move v14, v3

    goto :goto_2

    :cond_7
    move v14, v9

    .line 36
    :goto_2
    invoke-virtual {v10, v14}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 37
    :cond_8
    iget-object v14, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v14}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/mbridge/msdk/foundation/same/c;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 38
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 40
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_9
    iget-object v14, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->x:I

    invoke-static {v14, v10, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 42
    iget-object v3, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v3, v11}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    :cond_a
    :goto_3
    invoke-direct {v0, v10, v13, v13}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    .line 44
    :cond_b
    iget-object v3, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v3

    if-ge v8, v3, :cond_f

    .line 45
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v3

    if-eq v3, v15, :cond_f

    .line 46
    invoke-static {v10}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v12, :cond_c

    const/4 v3, 0x1

    goto :goto_4

    :cond_c
    move v3, v9

    .line 47
    :goto_4
    invoke-virtual {v10, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    :cond_d
    if-nez v12, :cond_e

    .line 48
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 49
    :cond_e
    invoke-static {v10}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 50
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_f
    :goto_5
    invoke-virtual {v10}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 52
    new-instance v3, Lcom/mbridge/msdk/foundation/entity/g;

    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/entity/g;-><init>()V

    .line 53
    invoke-virtual {v10}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/mbridge/msdk/foundation/entity/g;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/mbridge/msdk/foundation/entity/g;->b(I)V

    .line 55
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/mbridge/msdk/foundation/entity/g;->c(I)V

    .line 56
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/foundation/entity/g;->a(I)V

    .line 57
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/foundation/entity/g;->d(I)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/mbridge/msdk/foundation/entity/g;->a(J)V

    .line 59
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/db/j;->b(Lcom/mbridge/msdk/foundation/entity/g;)V

    .line 60
    :cond_10
    iget-object v3, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v11

    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v11, v10}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 61
    :cond_11
    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v2, v7}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v2

    goto :goto_6

    :cond_12
    const/4 v2, 0x1

    .line 64
    :goto_6
    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 65
    iget-object v7, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    iget-object v8, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v6, v8}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :cond_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_15

    .line 67
    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INSTALLED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 68
    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->a()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, v11, v3, v5, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 69
    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    const v2, 0xd6d95

    invoke-direct {v1, v2, v11}, Lcom/mbridge/msdk/foundation/error/b;-><init>(ILjava/lang/String;)V

    goto :goto_7

    .line 70
    :cond_14
    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->a()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/mbnative/service/net/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v4, "v3 response error"

    invoke-virtual {v2, v4, v3, v5, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 71
    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    const v2, 0xd6d83

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    :goto_7
    return-void

    .line 72
    :cond_15
    iget-object v1, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1, v5}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/controller/NativeController;ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)Z

    .line 73
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 74
    iget-object v1, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mbridge/msdk/mbnative/controller/d;->a(ILjava/lang/String;)V

    goto :goto_a

    .line 75
    :cond_16
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 76
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_17

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_8

    :cond_17
    const/4 v3, 0x1

    .line 78
    :goto_8
    iget-object v1, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->n(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v3, :cond_18

    goto :goto_9

    :cond_18
    move v4, v1

    .line 79
    :goto_9
    iget-object v1, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1, v4}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    goto :goto_a

    .line 80
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 81
    iget-object v1, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mbridge/msdk/mbnative/controller/d;->b(ILjava/lang/String;)V

    .line 82
    iget-object v1, v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1, v4}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I

    :goto_a
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->c:Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->f:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->e:Z

    return-void
.end method
