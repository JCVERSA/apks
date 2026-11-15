.class public final Lhnd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhnd$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Object;

.field public final f:Lcom/transsion/http/request/HttpMethod;

.field public final g:Z

.field public final h:Ljava/util/Map;

.field public final i:Landroid/content/Context;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/transsion/http/request/a;

.field public final l:Z

.field public final m:Ljavax/net/ssl/SSLSocketFactory;

.field public final n:Ljavax/net/ssl/HostnameVerifier;

.field public final o:Z

.field public final p:Z


# direct methods
.method public constructor <init>(Lhnd$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lhnd$a;->a(Lhnd$a;)I

    move-result v0

    iput v0, p0, Lhnd;->a:I

    invoke-static {p1}, Lhnd$a;->m(Lhnd$a;)I

    move-result v0

    iput v0, p0, Lhnd;->b:I

    invoke-static {p1}, Lhnd$a;->A(Lhnd$a;)Z

    invoke-static {p1}, Lhnd$a;->B(Lhnd$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnd;->c:Ljava/lang/String;

    invoke-static {p1}, Lhnd$a;->C(Lhnd$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnd;->d:Ljava/lang/String;

    invoke-static {p1}, Lhnd$a;->D(Lhnd$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lhnd$a;->D(Lhnd$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lhnd;->e:Ljava/lang/Object;

    invoke-static {p1}, Lhnd$a;->E(Lhnd$a;)Lcom/transsion/http/request/HttpMethod;

    move-result-object v0

    iput-object v0, p0, Lhnd;->f:Lcom/transsion/http/request/HttpMethod;

    invoke-static {p1}, Lhnd$a;->F(Lhnd$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhnd;->h:Ljava/util/Map;

    invoke-static {p1}, Lhnd$a;->G(Lhnd$a;)Z

    move-result v0

    iput-boolean v0, p0, Lhnd;->g:Z

    invoke-static {p1}, Lhnd$a;->H(Lhnd$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhnd;->i:Landroid/content/Context;

    invoke-static {p1}, Lhnd$a;->p(Lhnd$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnd;->j:Ljava/lang/String;

    invoke-static {p1}, Lhnd$a;->s(Lhnd$a;)Lcom/transsion/http/request/a;

    move-result-object v0

    iput-object v0, p0, Lhnd;->k:Lcom/transsion/http/request/a;

    invoke-static {p1}, Lhnd$a;->u(Lhnd$a;)Z

    move-result v0

    iput-boolean v0, p0, Lhnd;->l:Z

    invoke-static {p1}, Lhnd$a;->v(Lhnd$a;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lhnd;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1}, Lhnd$a;->x(Lhnd$a;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lhnd;->n:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {p1}, Lhnd$a;->y(Lhnd$a;)Z

    move-result v0

    iput-boolean v0, p0, Lhnd;->o:Z

    invoke-static {p1}, Lhnd$a;->z(Lhnd$a;)Z

    move-result p1

    iput-boolean p1, p0, Lhnd;->p:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lhnd;->a:I

    return p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lhnd;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhnd;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lcom/transsion/http/request/a;
    .locals 0

    iget-object p0, p0, Lhnd;->k:Lcom/transsion/http/request/a;

    return-object p0
.end method

.method public e()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lhnd;->i:Landroid/content/Context;

    return-object p0
.end method

.method public f()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lhnd;->h:Ljava/util/Map;

    return-object p0
.end method

.method public g()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lhnd;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public h()Lcom/transsion/http/request/HttpMethod;
    .locals 0

    iget-object p0, p0, Lhnd;->f:Lcom/transsion/http/request/HttpMethod;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhnd;->j:Ljava/lang/String;

    return-object p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lhnd;->b:I

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lhnd;->l:Z

    return p0
.end method

.method public l()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lhnd;->m:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public m()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhnd;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhnd;->c:Ljava/lang/String;

    return-object p0
.end method

.method public o()Z
    .locals 0

    iget-boolean p0, p0, Lhnd;->o:Z

    return p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lhnd;->g:Z

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lhnd;->p:Z

    return p0
.end method
