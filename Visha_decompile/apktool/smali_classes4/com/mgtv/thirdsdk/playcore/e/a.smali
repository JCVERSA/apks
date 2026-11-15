.class public Lcom/mgtv/thirdsdk/playcore/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "a"


# instance fields
.field public a:Lcom/mgtv/thirdsdk/playcore/e;

.field public b:Ljava/lang/String;

.field private d:Lcom/hunantv/imgo/net/ImgoHttpParams;

.field private e:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "live"

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->y()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/e/a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->e()I

    move-result p0

    return p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 0

    const-string p0, "https://clp.bz.mgtv.com/union/live/source"

    return-object p0
.end method

.method private e()I
    .locals 0

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->c(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;I)Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 52
    :cond_0
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->sources:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 53
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    .line 54
    iget-object v3, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 55
    :cond_1
    iget v3, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->definition:I

    if-ne v3, p2, :cond_2

    iget-object v3, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 56
    :cond_2
    iget-object v3, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    iget-object v4, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->definition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 59
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->sources:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    :cond_5
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->h:Ljava/lang/String;

    iput-object p0, v0, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 42
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    .line 43
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->sources:Ljava/util/List;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ak:Ljava/util/List;

    .line 44
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->cameraId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->e()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;I)Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    .line 46
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 47
    iget v1, v1, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->definition:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    .line 48
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentDefinition:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->cameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->an:Ljava/lang/String;

    .line 50
    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->user:Lcom/hunantv/imgo/net/entity/LiveSourceEntity$User;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity$User;->isVip:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->R:Z

    if-eqz v2, :cond_2

    .line 51
    iget v0, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity$User;->isVip:I

    :cond_2
    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->a(I)V

    :cond_3
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->e:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, p2, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/e;->g()V

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->b()V

    .line 7
    new-instance p2, Lcom/hunantv/imgo/net/LiveHttpParams;

    invoke-direct {p2}, Lcom/hunantv/imgo/net/LiveHttpParams;-><init>()V

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    .line 8
    const-string v0, "GET"

    invoke-virtual {p2, v0}, Lcom/mgtv/task/http/HttpParams;->setMethod(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->g:Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "liveId"

    invoke-virtual {p2, v0, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSupportHDST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v1, "hdts"

    invoke-virtual {v0, v1, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 14
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/hunantv/imgo/util/f;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v2, "c"

    invoke-virtual {v1, v2, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 17
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v1, "t"

    invoke-virtual {p2, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 18
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "definition"

    invoke-virtual {p2, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 19
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "encrypted"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 20
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "cxid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 21
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "vcode"

    invoke-virtual {p2, v0, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 22
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "st"

    const-string v1, "sha256"

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 23
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 24
    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 25
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "ch_token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 27
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, p2, Lcom/mgtv/thirdsdk/playcore/e;->g:Lcom/mgtv/task/g;

    if-eqz v0, :cond_3

    .line 28
    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    invoke-virtual {p2, v0}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    .line 29
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p2, v0}, Lcom/hunantv/imgo/util/s;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v1, "sign"

    invoke-virtual {v0, v1, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->d()Ljava/lang/String;

    move-result-object p2

    .line 32
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSource-liveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->a(I)V

    .line 34
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    new-instance v5, Lcom/mgtv/thirdsdk/playcore/e/a$1;

    invoke-direct {v5, p0, p2}, Lcom/mgtv/thirdsdk/playcore/e/a$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/a;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4, v5}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    move-result-object p0

    iput-object p0, v1, Lcom/mgtv/thirdsdk/playcore/e;->g:Lcom/mgtv/task/g;

    .line 35
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o(Z)V

    .line 36
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(Z)V

    .line 37
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    .line 38
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i(Z)V

    .line 39
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c()V

    .line 41
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d()V

    :cond_5
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->reset(Z)V

    .line 4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setJustLookDuration(I)V

    :cond_0
    return-void
.end method
