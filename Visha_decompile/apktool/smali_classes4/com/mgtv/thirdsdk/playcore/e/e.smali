.class public Lcom/mgtv/thirdsdk/playcore/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private c:Landroid/content/Context;

.field private d:Lcom/mgtv/thirdsdk/playcore/e;

.field private e:Lcom/mgtv/thirdsdk/playcore/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/e;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/e;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 6

    .line 53
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "201"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    if-eqz p5, :cond_0

    .line 54
    instance-of v0, p5, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 55
    const-string p4, "203000"

    :cond_0
    :goto_0
    move-object v3, p4

    goto :goto_1

    .line 56
    :cond_1
    instance-of p5, p5, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz p5, :cond_0

    .line 57
    const-string p4, "202000"

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p6

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 6

    if-eqz p3, :cond_2

    .line 59
    iget-object v0, p3, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p3, p3, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz p3, :cond_2

    const-string v0, "ok"

    .line 61
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILcom/hunantv/imgo/net/entity/b;)V

    .line 63
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p2, p1, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    iput-object p2, p1, Lcom/mgtv/thirdsdk/playcore/e;->H:Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_1

    const/4 p1, 0x5

    .line 65
    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    :goto_1
    const-string v3, "02.100003"

    const/16 v4, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V
    .locals 12

    move-object v0, p0

    .line 68
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v2, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    if-ge v3, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 70
    iput v3, v2, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    .line 71
    iget-object v1, v2, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-direct {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/e;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    .line 72
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v5, 0x4

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    goto :goto_0

    :cond_0
    if-eq v3, v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 73
    :cond_1
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    const-string v8, ""

    const/4 v9, 0x1

    const/4 v6, 0x4

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v3 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    .line 74
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    .line 75
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v1, :cond_2

    .line 76
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "130106"

    invoke-interface {v1, v2, v0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-object p0
.end method

.method private b(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->c(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    .line 8
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "130106"

    invoke-interface {p1, v0, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    .line 11
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_4

    .line 12
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "130107"

    invoke-interface {p1, v0, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/e/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method private c(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->d(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->f:Lcom/mgtv/task/g;

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    invoke-virtual {v1, v2}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v2

    new-instance v3, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v3}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    new-instance v4, Lcom/mgtv/thirdsdk/playcore/e/e$1;

    invoke-direct {v4, p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/e;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    move-result-object p0

    iput-object p0, v1, Lcom/mgtv/thirdsdk/playcore/e;->f:Lcom/mgtv/task/g;

    return-void
.end method

.method private d(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->J:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->e()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->J:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Z)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(I)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    .line 9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    .line 10
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l(Z)V

    .line 11
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    const/16 v0, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(II)V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->E:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->a()V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->J:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)Ljava/lang/String;
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->I:Z

    .line 45
    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->F:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    iput-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 46
    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    iput-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    .line 47
    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->H:Ljava/lang/String;

    iput-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->N:Ljava/lang/String;

    .line 48
    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 49
    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    .line 50
    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->d(I)V

    .line 51
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iput v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    .line 52
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->c()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 4

    .line 22
    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    .line 24
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_0

    .line 25
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "130105"

    invoke-interface {p1, p2, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    .line 27
    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->E:I

    iget v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->Q:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    add-int/2addr v1, v3

    .line 28
    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->E:I

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(IIZ)V

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    .line 30
    invoke-virtual {p0, p1, p2, v3}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(IIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(IIZ)V
    .locals 10

    if-nez p3, :cond_2

    .line 31
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x2

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->E:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&svrip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/e;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    const-string v1, ""

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    .line 42
    :goto_1
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e;->F:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;ILjava/lang/String;IIZ)V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    .line 6
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/e;->a:Ljava/lang/String;

    const-string v2, "asyncChangeDefinition():play"

    invoke-static {v0, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p1, :cond_7

    if-nez v2, :cond_1

    .line 8
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-eq v0, v3, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    iget v0, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget v2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    if-ne v0, v1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_5

    .line 13
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/mgtv/ssp/R$string;->pay_d:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "130101"

    invoke-interface {p1, v0, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v3, 0x0

    .line 15
    iput v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    .line 16
    iput v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->E:I

    .line 17
    iput-boolean v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->J:Z

    .line 18
    iput-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    .line 19
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->I:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->e()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->I:Z

    .line 18
    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    .line 19
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 22
    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->n:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 0

    if-nez p2, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->d()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    .line 15
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_1

    .line 16
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "130108"

    invoke-interface {p1, p2, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e;->d:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 7
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->n:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 8
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->F:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 9
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->H:Ljava/lang/String;

    return-void
.end method
