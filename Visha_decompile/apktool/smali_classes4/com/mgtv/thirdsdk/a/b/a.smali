.class public Lcom/mgtv/thirdsdk/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Lcom/mgtv/thirdsdk/a/a/b;

.field private c:Lcom/mgtv/thirdsdk/a/b;

.field private d:Lcom/mgtv/task/m;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/hunantv/imgo/net/ImgoHttpParams;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/thirdsdk/a/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->c:Lcom/mgtv/thirdsdk/a/b;

    new-instance p1, Lcom/mgtv/task/m;

    invoke-direct {p1, p2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->d:Lcom/mgtv/task/m;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->y()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a;->c:Lcom/mgtv/thirdsdk/a/b;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/a/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a;->b:Lcom/mgtv/thirdsdk/a/a/b;

    return-object p0
.end method

.method private b()Ljava/lang/String;
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


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->shadowSources:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->c:Lcom/mgtv/thirdsdk/a/b;

    iget v1, v0, Lcom/mgtv/thirdsdk/a/b;->d:I

    iget-object v2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->shadowSources:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/thirdsdk/a/b;->a(ILjava/util/List;)V

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->g:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/a/a/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->b:Lcom/mgtv/thirdsdk/a/a/b;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->d:Lcom/mgtv/task/m;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->e:Z

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->f:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    .line 8
    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->j:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v1}, Lcom/hunantv/imgo/util/f;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sha256"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/imgo/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v4, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v5, "c"

    invoke-virtual {v4, v5, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 13
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v4, "t"

    invoke-virtual {v0, v4, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 14
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v1, "fileSourceType"

    iget-object v4, p0, Lcom/mgtv/thirdsdk/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 15
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "definition"

    invoke-virtual {v0, v1, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 16
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "s"

    invoke-virtual {p2, v0, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 17
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "encrypted"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 18
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "cxid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 19
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "id"

    invoke-virtual {p2, v0, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 20
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p2, "st"

    invoke-virtual {p1, p2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 21
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p2, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 22
    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p2, "ch_token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p2, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 25
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "intelmgtv"

    goto :goto_0

    :cond_2
    const-string v0, "mgtv"

    :goto_0
    const-string v1, "src"

    invoke-virtual {p2, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 27
    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 28
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "paySupport"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 29
    :cond_3
    sget-object p2, Lcom/mgtv/thirdsdk/a/b/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSource-HttpParams\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-class v2, Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {v1, v2}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 30
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a;->d:Lcom/mgtv/task/m;

    const/16 v0, 0x1388

    invoke-virtual {p2, v0}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a;->g:Lcom/hunantv/imgo/net/ImgoHttpParams;

    new-instance v1, Lcom/mgtv/thirdsdk/a/b/a$1;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/a/b/a$1;-><init>(Lcom/mgtv/thirdsdk/a/b/a;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    :cond_4
    :goto_1
    return-void
.end method
