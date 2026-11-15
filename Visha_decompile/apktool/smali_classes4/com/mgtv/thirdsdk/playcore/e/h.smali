.class public Lcom/mgtv/thirdsdk/playcore/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mgtv/thirdsdk/playcore/e;

.field private c:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 101
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 102
    aget-char v0, p0, p1

    xor-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    aput-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 3

    .line 23
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x0

    iput-object v0, p4, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    .line 24
    invoke-virtual {p4}, Lcom/mgtv/thirdsdk/playcore/e;->a()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 25
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 26
    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    if-ge v1, p4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 28
    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    .line 29
    iget-object p4, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz p4, :cond_1

    .line 30
    invoke-virtual {p4, p1, p2, p3, p5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->c()V

    goto :goto_0

    :cond_2
    if-eq v1, p4, :cond_3

    const/4 v2, -0x1

    if-ne p4, v2, :cond_6

    .line 32
    :cond_3
    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    .line 33
    iget-object p4, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz p4, :cond_4

    .line 34
    invoke-virtual {p4, p1, p2, p3, p5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V

    :cond_4
    const/16 p2, 0xc8

    if-eq p3, p2, :cond_5

    .line 35
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_6

    .line 36
    const-string p2, "120101"

    invoke-interface {p0, p2, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_6

    .line 38
    const-string p1, "120100"

    const-string p2, "\u51fa\u9519\u4e86"

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    iget v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-virtual {v1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(I)V

    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)Ljava/lang/String;
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->b()V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/b;)V
    .locals 13

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-nez v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_0

    .line 6
    const-string p1, "120100"

    const-string v0, "\u51fa\u9519\u4e86"

    invoke-interface {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v1, "ok"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    .line 10
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    .line 12
    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    iget v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->Q:I

    if-gt v1, v2, :cond_6

    if-ne v1, v2, :cond_3

    .line 13
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->N:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 14
    :cond_3
    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    if-nez v1, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->f()V

    .line 16
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    .line 17
    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_6

    const v1, 0x10001

    .line 19
    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const-string v3, "02.100001"

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const/16 v10, 0xc8

    const/4 v11, 0x0

    .line 22
    const-string v8, "02.100003"

    const-string v9, ""

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v7 .. v12}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 64
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 66
    iget v4, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v5, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    if-ne v5, v2, :cond_3

    .line 68
    iget-object v4, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v4, :cond_3

    .line 69
    iput-object v4, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 70
    iget-object v0, v4, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v4, v4, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput v5, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    goto :goto_2

    :cond_4
    move v5, v3

    .line 73
    :goto_2
    invoke-static {v5}, Lcom/hunantv/imgo/util/b;->c(I)V

    if-nez v5, :cond_5

    .line 74
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->c()V

    goto/16 :goto_6

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    .line 76
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    .line 77
    iput v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "did"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v4, "suuid"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 82
    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    .line 84
    :cond_6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    .line 85
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    goto :goto_3

    .line 87
    :cond_7
    const-string v0, ""

    .line 88
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->au:Z

    goto :goto_4

    .line 90
    :cond_8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->au:Z

    :goto_4
    if-eqz p1, :cond_9

    .line 91
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-static {}, Lcom/mgtv/thirdsdk/config/a;->c()Z

    move-result v0

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    .line 92
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    if-nez v0, :cond_a

    .line 93
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e;->f()V

    goto :goto_5

    .line 94
    :cond_9
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e;->f()V

    .line 95
    :cond_a
    :goto_5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_b

    const/4 p1, 0x3

    .line 96
    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    :cond_b
    :goto_6
    return-void

    .line 97
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->c()V

    return-void
.end method

.method public a(ZLcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p2, :cond_6

    if-eqz v0, :cond_0

    .line 41
    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget v1, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 42
    :cond_0
    iget-object v0, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    if-ne v0, v1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    .line 45
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_2

    .line 46
    const-string p1, "130101"

    const-string p2, "\u9700\u4ed8\u8d39\u6e05\u6670\u5ea6"

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v0, :cond_4

    .line 48
    iget v2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(I)V

    .line 49
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {v0, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    .line 50
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    .line 51
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l(Z)V

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->h()V

    .line 53
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p2, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 54
    iget p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p2, v0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    .line 55
    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->d(I)V

    .line 56
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->reset(Z)V

    .line 57
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/mgtv/thirdsdk/playcore/e;->S:Z

    .line 58
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    .line 59
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    .line 60
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput v0, p2, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    if-eqz p1, :cond_5

    .line 61
    invoke-virtual {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Z)V

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->c()V

    :cond_6
    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoPrepare getPlayUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->c()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const-string v2, "\u51fa\u9519\u4e86"

    const-string v3, "120100"

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->a()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_3

    invoke-interface {p0, v3, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_5

    invoke-interface {p0, v3, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const-string v1, "\u51fa\u9519\u4e86"

    const-string v2, "120100"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_1

    const-string v0, "120101"

    const-string v1, "\u5f53\u524d\u65e0\u53ef\u7528\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u540e\u91cd\u8bd5"

    invoke-interface {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoPrepare handlerUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->d()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->c:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_6

    invoke-interface {p0, v2, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m(Z)V

    :cond_0
    new-instance v1, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v1}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v3, "suuid"

    invoke-virtual {v1, v3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    sget-object v2, Lcom/mgtv/task/http/HttpParams$Type;->GET:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v1, v2}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    iput-object v3, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    :cond_1
    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->e:Lcom/mgtv/task/g;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    invoke-virtual {v1, v2}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v2

    new-instance v3, Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {v3}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>()V

    new-instance v4, Lcom/mgtv/thirdsdk/playcore/e/h$1;

    invoke-direct {v4, p0}, Lcom/mgtv/thirdsdk/playcore/e/h$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/h;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    move-result-object p0

    iput-object p0, v1, Lcom/mgtv/thirdsdk/playcore/e;->e:Lcom/mgtv/task/g;

    return-void
.end method
