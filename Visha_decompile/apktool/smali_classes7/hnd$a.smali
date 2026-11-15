.class public final Lhnd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:Lcom/transsion/http/request/HttpMethod;

.field public i:Z

.field public j:Landroid/content/Context;

.field public k:Ljava/lang/String;

.field public l:Lcom/transsion/http/request/a;

.field public m:Ljava/util/Map;

.field public n:Z

.field public o:Ljavax/net/ssl/SSLSocketFactory;

.field public p:Ljavax/net/ssl/HostnameVerifier;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhnd$a;->r:Z

    sget-object v0, Lhf1;->a:Lup5;

    iget-boolean p0, p0, Lhnd$a;->a:Z

    invoke-interface {v0, p0}, Lup5;->a(Z)V

    return-void
.end method

.method public static synthetic A(Lhnd$a;)Z
    .locals 0

    iget-boolean p0, p0, Lhnd$a;->d:Z

    return p0
.end method

.method public static synthetic B(Lhnd$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhnd$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic C(Lhnd$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhnd$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic D(Lhnd$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhnd$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic E(Lhnd$a;)Lcom/transsion/http/request/HttpMethod;
    .locals 0

    iget-object p0, p0, Lhnd$a;->h:Lcom/transsion/http/request/HttpMethod;

    return-object p0
.end method

.method public static synthetic F(Lhnd$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lhnd$a;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic G(Lhnd$a;)Z
    .locals 0

    iget-boolean p0, p0, Lhnd$a;->i:Z

    return p0
.end method

.method public static synthetic H(Lhnd$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lhnd$a;->j:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lhnd$a;)I
    .locals 0

    iget p0, p0, Lhnd$a;->b:I

    return p0
.end method

.method public static synthetic m(Lhnd$a;)I
    .locals 0

    iget p0, p0, Lhnd$a;->c:I

    return p0
.end method

.method public static synthetic p(Lhnd$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhnd$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lhnd$a;)Lcom/transsion/http/request/a;
    .locals 0

    iget-object p0, p0, Lhnd$a;->l:Lcom/transsion/http/request/a;

    return-object p0
.end method

.method public static synthetic u(Lhnd$a;)Z
    .locals 0

    iget-boolean p0, p0, Lhnd$a;->n:Z

    return p0
.end method

.method public static synthetic v(Lhnd$a;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lhnd$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public static synthetic x(Lhnd$a;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lhnd$a;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public static synthetic y(Lhnd$a;)Z
    .locals 0

    iget-boolean p0, p0, Lhnd$a;->q:Z

    return p0
.end method

.method public static synthetic z(Lhnd$a;)Z
    .locals 0

    iget-boolean p0, p0, Lhnd$a;->r:Z

    return p0
.end method


# virtual methods
.method public b(I)Lhnd$a;
    .locals 0

    iput p1, p0, Lhnd$a;->b:I

    return-object p0
.end method

.method public c(Landroid/content/Context;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->j:Landroid/content/Context;

    return-object p0
.end method

.method public d(Lcom/transsion/http/request/HttpMethod;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->h:Lcom/transsion/http/request/HttpMethod;

    return-object p0
.end method

.method public e(Lcom/transsion/http/request/a;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->l:Lcom/transsion/http/request/a;

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/util/Map;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->m:Ljava/util/Map;

    return-object p0
.end method

.method public i(Ljavax/net/ssl/HostnameVerifier;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public j(Ljavax/net/ssl/SSLSocketFactory;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public k(Z)Lhnd$a;
    .locals 0

    iput-boolean p1, p0, Lhnd$a;->q:Z

    return-object p0
.end method

.method public l()Lhnd;
    .locals 1

    iget-object v0, p0, Lhnd$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhnd$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    new-instance v0, Lk9d;

    invoke-direct {v0}, Lk9d;-><init>()V

    invoke-virtual {v0}, Lk9d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lhnd$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    iget-object v0, p0, Lhnd$a;->p:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    new-instance v0, Lk6d;

    invoke-direct {v0}, Lk6d;-><init>()V

    invoke-virtual {v0}, Lk6d;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lhnd$a;->p:Ljavax/net/ssl/HostnameVerifier;

    :cond_1
    new-instance v0, Lhnd;

    invoke-direct {v0, p0}, Lhnd;-><init>(Lhnd$a;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(I)Lhnd$a;
    .locals 0

    iput p1, p0, Lhnd$a;->c:I

    return-object p0
.end method

.method public o(Z)Lhnd$a;
    .locals 0

    iput-boolean p1, p0, Lhnd$a;->d:Z

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lhnd$a;
    .locals 0

    iput-object p1, p0, Lhnd$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public r(Z)Lhnd$a;
    .locals 0

    iput-boolean p1, p0, Lhnd$a;->i:Z

    return-object p0
.end method

.method public t(Z)Lhnd$a;
    .locals 1

    iput-boolean p1, p0, Lhnd$a;->a:Z

    sget-object v0, Lhf1;->a:Lup5;

    invoke-interface {v0, p1}, Lup5;->a(Z)V

    return-object p0
.end method

.method public w(Z)Lhnd$a;
    .locals 0

    iput-boolean p1, p0, Lhnd$a;->r:Z

    return-object p0
.end method
