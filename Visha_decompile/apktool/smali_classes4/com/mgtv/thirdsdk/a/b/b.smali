.class public Lcom/mgtv/thirdsdk/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "com.mgtv.thirdsdk.a.b.b"


# instance fields
.field private b:Lcom/mgtv/thirdsdk/a/a/b;

.field private c:Lcom/mgtv/thirdsdk/a/b;

.field private d:Lcom/mgtv/task/m;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/thirdsdk/a/b;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->e:I

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    new-instance p1, Lcom/mgtv/task/m;

    invoke-direct {p1, p2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b;->d:Lcom/mgtv/task/m;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b;->b:Lcom/mgtv/thirdsdk/a/a/b;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/a/b/b;)I
    .locals 2

    iget v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mgtv/thirdsdk/a/b/b;->e:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->e:I

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->f:I

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/a/b/b;->b()V

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b;->b:Lcom/mgtv/thirdsdk/a/a/b;

    const-string v0, "070705"

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/a/b/b;->a()V

    :goto_2
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/a/a/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b;->b:Lcom/mgtv/thirdsdk/a/a/b;

    return-void
.end method

.method public b()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->d:Lcom/mgtv/task/m;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->e:I

    iget v1, p0, Lcom/mgtv/thirdsdk/a/b/b;->f:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->type:Ljava/lang/String;

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/a/b;->g:Ljava/util/List;

    iget v2, p0, Lcom/mgtv/thirdsdk/a/b/b;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    .line 7
    :goto_0
    sget-object v1, Lcom/mgtv/thirdsdk/a/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/a/b/b;->c:Lcom/mgtv/thirdsdk/a/b;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 8
    sget-object v1, Lcom/mgtv/thirdsdk/a/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL=="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 9
    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b;->d:Lcom/mgtv/task/m;

    invoke-virtual {v1, v3}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v1

    new-instance v2, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v2}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    new-instance v3, Lcom/mgtv/thirdsdk/a/b/b$1;

    invoke-direct {v3, p0}, Lcom/mgtv/thirdsdk/a/b/b$1;-><init>(Lcom/mgtv/thirdsdk/a/b/b;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void

    .line 11
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b;->b:Lcom/mgtv/thirdsdk/a/a/b;

    if-eqz p0, :cond_4

    .line 12
    const-string v0, "070703"

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
