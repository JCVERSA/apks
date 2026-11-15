.class public final Lcom/mbridge/msdk/thrid/okhttp/t$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Lcom/mbridge/msdk/thrid/okhttp/l;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

.field h:Ljava/net/ProxySelector;

.field i:Lcom/mbridge/msdk/thrid/okhttp/k;

.field j:Ljavax/net/SocketFactory;

.field k:Ljavax/net/ssl/SSLSocketFactory;

.field l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

.field m:Ljavax/net/ssl/HostnameVerifier;

.field n:Lcom/mbridge/msdk/thrid/okhttp/e;

.field o:Lcom/mbridge/msdk/thrid/okhttp/b;

.field p:Lcom/mbridge/msdk/thrid/okhttp/b;

.field q:Lcom/mbridge/msdk/thrid/okhttp/h;

.field r:Lcom/mbridge/msdk/thrid/okhttp/m;

.field s:Z

.field t:Z

.field u:Z

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/l;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/l;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 5
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/t;->A:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/t;->B:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/n;->NONE:Lcom/mbridge/msdk/thrid/okhttp/n;

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->factory(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/n$c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/proxy/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/proxy/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    .line 10
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/k;->a:Lcom/mbridge/msdk/thrid/okhttp/k;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    .line 11
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->j:Ljavax/net/SocketFactory;

    .line 12
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/tls/d;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/d;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 13
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/e;->c:Lcom/mbridge/msdk/thrid/okhttp/e;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    .line 14
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/b;->a:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 15
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 16
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/h;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 17
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/m;->a:Lcom/mbridge/msdk/thrid/okhttp/m;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->s:Z

    .line 19
    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->t:Z

    .line 20
    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    const/16 v1, 0x2710

    .line 22
    iput v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    .line 23
    iput v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    .line 24
    iput v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    .line 25
    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->f:Ljava/util/List;

    .line 29
    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 30
    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->b:Ljava/net/Proxy;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b:Ljava/net/Proxy;

    .line 31
    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->c:Ljava/util/List;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    .line 32
    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->d:Ljava/util/List;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d:Ljava/util/List;

    .line 33
    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    .line 36
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    .line 37
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    .line 38
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->j:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->j:Ljavax/net/SocketFactory;

    .line 39
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 40
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    .line 41
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->m:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 42
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    .line 43
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 44
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 45
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 46
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    .line 47
    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->s:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->s:Z

    .line 48
    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->t:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->t:Z

    .line 49
    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->u:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    .line 50
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->v:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    .line 51
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->w:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    .line 52
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->x:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    .line 53
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->y:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    .line 54
    iget p1, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->z:I

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    .line 1
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/h;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/l;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/m;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dns == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 23
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/n;->factory(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/n$c;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    return-object p0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;)",
            "Lcom/mbridge/msdk/thrid/okhttp/t$b;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/u;->f:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/u;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/u;->d:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    return-object p0

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    return-object p0
.end method

.method public a()Lcom/mbridge/msdk/thrid/okhttp/t;
    .locals 1

    .line 25
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/t;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t$b;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    .line 1
    const-string v0, "timeout"

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    .line 8
    .line 9
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    .line 1
    const-string v0, "interval"

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    .line 8
    .line 9
    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    .line 1
    const-string v0, "timeout"

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    .line 8
    .line 9
    return-object p0
.end method

.method public e(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    .line 1
    const-string v0, "timeout"

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    .line 8
    .line 9
    return-object p0
.end method
