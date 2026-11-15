.class public Lcom/mgtv/thirdsdk/playcore/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "g"


# instance fields
.field private b:Lcom/mgtv/thirdsdk/playcore/e;

.field private c:Lcom/hunantv/imgo/net/ImgoHttpParams;

.field private d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private e:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mgtv/ssp/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 28
    const-string v0, "detail"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "card"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "immersion"

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "video_definition"

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private a(ILjava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
            ">;)",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/e/g$1;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/e/g$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/g;)V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 12
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    iget v4, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    iget-object v4, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v3, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;

    iget v4, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    invoke-direct {v3, v4, v2}, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;-><init>(II)V

    .line 15
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 16
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v2, :cond_2

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 18
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v2, :cond_3

    .line 19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    :cond_3
    move v2, v1

    .line 20
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v4, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne p1, v4, :cond_4

    .line 22
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_7

    .line 24
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v4, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v4, :cond_6

    .line 25
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 26
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget p1, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    .line 27
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/e/g;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u7b2c\u4e00\u6b21\u9009\u62e9\u7684\u6e05\u6670\u5ea6-------->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 117
    const-string v0, "00000"

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->pstatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_0

    .line 119
    const-string v0, "199999"

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->pstatus:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->n:Ljava/lang/String;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->point:Ljava/util/List;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->j:Ljava/util/List;

    .line 36
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    if-nez v1, :cond_2

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_4

    .line 40
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 41
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-nez v1, :cond_3

    goto :goto_1

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(I)I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    if-eqz v2, :cond_5

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->R:Z

    .line 45
    const-string v1, "detail"

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "card"

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "immersion"

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 46
    :cond_6
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(ILjava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_4

    .line 47
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(ILjava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 48
    :goto_4
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v1, :cond_8

    .line 49
    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    :cond_8
    if-eqz p1, :cond_9

    .line 50
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    if-eqz v0, :cond_9

    .line 51
    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->a(I)V

    .line 52
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->g(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setUuid(Ljava/lang/String;)V

    .line 54
    :cond_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    return-void
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    .line 56
    iget-object v2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->freeTryTips:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$AuthButtons;

    iput-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->w:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$AuthButtons;

    .line 57
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iget v2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->previewTime:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setJustLookDuration(I)V

    .line 61
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setJustLookDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->previewTime:I

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_1

    .line 63
    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 64
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$string;->try_look:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "110102"

    invoke-interface {p1, v1, v0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/g;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 7
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 8
    aget-char v0, p0, p1

    xor-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    aput-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object v0
.end method

.method private b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    iget p0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->a(I)V

    .line 11
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->g(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setUuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->reset(Z)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->d:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setJustLookDuration(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    .line 7
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    .line 8
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->S:Z

    .line 9
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    .line 10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoPrepare   playerDataReset  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    .line 12
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setLastErrorCodeExtra(I)Lcom/hunantv/media/report/ReportParams;

    .line 13
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->w:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$AuthButtons;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    const/16 v0, -0x3e8

    .line 16
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    .line 17
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p0

    iput v1, p0, Lcom/hunantv/imgo/b/c;->o:I

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_0

    .line 19
    const-string v0, "110108"

    invoke-interface {p0, v0, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/union/video/source"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->i:Lcom/mgtv/ssp/c;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 2
    const-string v0, "vod"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/util/b;->af()Z

    move-result p0

    return p0

    .line 4
    :cond_0
    const-string v0, "card"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/b;->ah()Z

    move-result p0

    return p0

    .line 6
    :cond_1
    const-string v0, "immersion"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/util/b;->ag()Z

    move-result p0

    return p0

    .line 8
    :cond_2
    const-string v0, "detail"

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    invoke-static {}, Lcom/hunantv/imgo/util/b;->ai()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(I)I

    move-result v1

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    .line 121
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    .line 127
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->j:Ljava/util/List;

    .line 128
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    .line 129
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->R:Z

    .line 131
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->c()V

    .line 68
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 69
    invoke-static {}, Lcom/mgtv/thirdsdk/config/a;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->f:Z

    .line 70
    invoke-static {}, Lcom/mgtv/thirdsdk/config/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->g:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_1
    iput-boolean p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->f:Z

    .line 72
    const-string p1, "0"

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->g:Ljava/lang/String;

    .line 73
    :goto_0
    new-instance p1, Lcom/hunantv/imgo/net/ImgoHttpParams;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>(Z)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    .line 74
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Lcom/mgtv/task/http/HttpParams;->setMethod(Ljava/lang/String;)V

    .line 75
    sget-object p1, Lcom/mgtv/thirdsdk/playcore/e/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSource-videoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v2}, Lcom/hunantv/imgo/util/f;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 78
    invoke-direct {p0, v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(I)I

    move-result v3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "sha256"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/imgo/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v7, "c"

    invoke-virtual {v6, v7, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 81
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v6, "t"

    invoke-virtual {v1, v6, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 82
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "fileSourceType"

    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 83
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "definition"

    invoke-virtual {v1, v3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 84
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "s"

    invoke-virtual {v1, v2, v4}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 85
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "encrypted"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 86
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "cxid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 87
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 88
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "st"

    invoke-virtual {v1, v2, v5}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 89
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 90
    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "ch_token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 93
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "minSpeed"

    invoke-static {}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;->getMinSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 94
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "maxSpeed"

    invoke-static {}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;->getMaxSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 95
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->d()Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 97
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o(Z)V

    .line 98
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(Z)V

    .line 99
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    .line 100
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->f:Z

    invoke-virtual {p3, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i(Z)V

    .line 101
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Ljava/lang/String;)V

    .line 102
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "pvs getSource sendPv sendNewPv"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c()V

    .line 104
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d()V

    .line 105
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSupportHDST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 107
    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "hdts"

    invoke-virtual {p3, v2, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 108
    :cond_3
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->aL:Z

    if-nez p2, :cond_4

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->c()I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 109
    :cond_4
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p3, "vf"

    const-string v2, "h264"

    invoke-virtual {p2, p3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 110
    :cond_5
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "intelmgtv"

    goto :goto_1

    :cond_6
    const-string p3, "mgtv"

    :goto_1
    const-string v2, "src"

    invoke-virtual {p2, v2, p3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 111
    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 112
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p3, "paySupport"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 113
    :cond_7
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p3, p2, Lcom/mgtv/thirdsdk/playcore/e;->d:Lcom/mgtv/task/g;

    if-eqz p3, :cond_8

    .line 114
    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    invoke-virtual {p2, p3}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    .line 115
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSource-url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 116
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p2, p1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    const/16 p3, 0x1388

    invoke-virtual {p2, p3}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->c:Lcom/hunantv/imgo/net/ImgoHttpParams;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/g$2;

    invoke-direct {v0, p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/g$2;-><init>(Lcom/mgtv/thirdsdk/playcore/e/g;Ljava/lang/String;)V

    invoke-virtual {p2, v1, p3, v0}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    move-result-object p0

    iput-object p0, p1, Lcom/mgtv/thirdsdk/playcore/e;->d:Lcom/mgtv/task/g;

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Lcom/mgtv/ssp/c;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->i:Lcom/mgtv/ssp/c;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->h:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p0

    iput-object p1, p0, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    return-void
.end method

.method public a(ZLcom/hunantv/imgo/net/entity/b;)V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 133
    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->f:Z

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 136
    iget v5, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    if-ne v5, v1, :cond_1

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v5, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    if-ne v5, v1, :cond_4

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v5, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v5, :cond_3

    .line 139
    iput-object v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 140
    iget-object v0, v5, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v5, v5, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v6, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    if-ne v6, v4, :cond_3

    .line 143
    iget-object v5, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v5, :cond_3

    .line 144
    iput-object v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 145
    iget-object v0, v5, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v5, v5, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 147
    :goto_1
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput v0, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSourceType:I

    goto :goto_2

    :cond_5
    move v0, v2

    .line 148
    :goto_2
    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->c(I)V

    .line 149
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v3, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    if-nez v0, :cond_6

    .line 150
    iput-boolean v2, v3, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    .line 151
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_e

    .line 152
    invoke-interface {p0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    goto/16 :goto_6

    .line 153
    :cond_6
    iget v0, v3, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    iput v0, v3, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    .line 154
    iget-object v0, v3, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    iput-object v0, v3, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    .line 155
    iput v2, v3, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "did"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v3, "suuid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 160
    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    .line 162
    :cond_7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Z)V

    .line 163
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->aC:I

    invoke-virtual {v0, v1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILcom/hunantv/imgo/net/entity/b;)V

    .line 164
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz p2, :cond_8

    .line 165
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {p2, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    .line 166
    :cond_8
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p2, :cond_9

    .line 167
    iget-object p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    goto :goto_3

    .line 168
    :cond_9
    const-string p2, ""

    .line 169
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 170
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, p2, Lcom/mgtv/thirdsdk/playcore/e;->au:Z

    goto :goto_4

    .line 171
    :cond_a
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v4, p2, Lcom/mgtv/thirdsdk/playcore/e;->au:Z

    :goto_4
    if-eqz p1, :cond_b

    .line 172
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-static {}, Lcom/mgtv/thirdsdk/config/a;->c()Z

    move-result p2

    iput-boolean p2, p1, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    .line 173
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p2, p1, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    if-nez p2, :cond_c

    .line 174
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e;->f()V

    goto :goto_5

    .line 175
    :cond_b
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e;->f()V

    .line 176
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_e

    .line 177
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v4, p0, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    const/4 p0, 0x3

    .line 178
    invoke-interface {p1, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    goto :goto_6

    .line 179
    :cond_d
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_e

    .line 180
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    .line 181
    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    :cond_e
    :goto_6
    return-void

    .line 182
    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p1, :cond_10

    .line 183
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    .line 184
    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    :cond_10
    return-void
.end method
