.class public Lcom/mbridge/msdk/thrid/okhttp/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/t$b;
    }
.end annotation


# static fields
.field static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;"
        }
    .end annotation
.end field

.field static final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/mbridge/msdk/thrid/okhttp/l;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
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

.field final g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

.field final h:Ljava/net/ProxySelector;

.field final i:Lcom/mbridge/msdk/thrid/okhttp/k;

.field final j:Ljavax/net/SocketFactory;

.field final k:Ljavax/net/ssl/SSLSocketFactory;

.field final l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

.field final m:Ljavax/net/ssl/HostnameVerifier;

.field final n:Lcom/mbridge/msdk/thrid/okhttp/e;

.field final o:Lcom/mbridge/msdk/thrid/okhttp/b;

.field final p:Lcom/mbridge/msdk/thrid/okhttp/b;

.field final q:Lcom/mbridge/msdk/thrid/okhttp/h;

.field final r:Lcom/mbridge/msdk/thrid/okhttp/m;

.field final s:Z

.field final t:Z

.field final u:Z

.field final v:I

.field final w:I

.field final x:I

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 3
    .line 4
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/u;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/t;->A:Ljava/util/List;

    .line 19
    .line 20
    new-array v0, v0, [Lcom/mbridge/msdk/thrid/okhttp/i;

    .line 21
    .line 22
    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/i;->h:Lcom/mbridge/msdk/thrid/okhttp/i;

    .line 23
    .line 24
    aput-object v1, v0, v3

    .line 25
    .line 26
    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/i;->j:Lcom/mbridge/msdk/thrid/okhttp/i;

    .line 27
    .line 28
    aput-object v1, v0, v4

    .line 29
    .line 30
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/t;->B:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/t$a;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/t$a;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/t;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t$b;)V

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 4
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->b:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->c:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->d:Ljava/util/List;

    .line 7
    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->e:Ljava/util/List;

    .line 8
    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->f:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    .line 10
    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->h:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    .line 12
    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->j:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->j:Ljavax/net/SocketFactory;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/thrid/okhttp/i;

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/i;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->k:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 18
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    goto :goto_2

    .line 19
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 20
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 22
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->d()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 23
    :cond_5
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/e;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;)Lcom/mbridge/msdk/thrid/okhttp/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    .line 25
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 26
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 27
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 28
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    .line 29
    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->s:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->s:Z

    .line 30
    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->t:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->t:Z

    .line 31
    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->u:Z

    .line 32
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->v:I

    .line 33
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->w:I

    .line 34
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->x:I

    .line 35
    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->y:I

    .line 36
    iget p1, p1, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->z:I

    .line 37
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 38
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 39
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->d()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->e()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    const-string v0, "No System TLS"

    invoke-static {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->j:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public a()Lcom/mbridge/msdk/thrid/okhttp/b;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    return-object v0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/d;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)Lcom/mbridge/msdk/thrid/okhttp/v;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Lcom/mbridge/msdk/thrid/okhttp/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Lcom/mbridge/msdk/thrid/okhttp/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/mbridge/msdk/thrid/okhttp/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/mbridge/msdk/thrid/okhttp/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lcom/mbridge/msdk/thrid/okhttp/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lcom/mbridge/msdk/thrid/okhttp/n$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method q()Lcom/mbridge/msdk/thrid/okhttp/internal/cache/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->b:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Lcom/mbridge/msdk/thrid/okhttp/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->h:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t;->u:Z

    .line 2
    .line 3
    return v0
.end method
