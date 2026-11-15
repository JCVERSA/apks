.class public abstract Ljhd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/transsion/http/request/HttpMethod;

.field public final d:Z

.field public final e:Ljava/util/Map;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljavax/net/ssl/SSLSocketFactory;

.field public j:Ljavax/net/ssl/HostnameVerifier;

.field public k:Z

.field public l:Lhnd$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhnd$a;

    invoke-direct {v0}, Lhnd$a;-><init>()V

    iput-object v0, p0, Ljhd;->l:Lhnd$a;

    iput-object p1, p0, Ljhd;->a:Ljava/lang/String;

    iput-object p2, p0, Ljhd;->b:Ljava/lang/Object;

    iput-object p3, p0, Ljhd;->c:Lcom/transsion/http/request/HttpMethod;

    iput-object p4, p0, Ljhd;->e:Ljava/util/Map;

    iput-boolean p5, p0, Ljhd;->d:Z

    iput p6, p0, Ljhd;->f:I

    iput p7, p0, Ljhd;->g:I

    iput-boolean p8, p0, Ljhd;->h:Z

    iput-object p9, p0, Ljhd;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p10, p0, Ljhd;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-boolean p11, p0, Ljhd;->k:Z

    invoke-virtual {v0, p1}, Lhnd$a;->q(Ljava/lang/String;)Lhnd$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lhnd$a;->f(Ljava/lang/Object;)Lhnd$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lhnd$a;->d(Lcom/transsion/http/request/HttpMethod;)Lhnd$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lhnd$a;->h(Ljava/util/Map;)Lhnd$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lhnd$a;->t(Z)Lhnd$a;

    move-result-object p1

    iget p2, p0, Ljhd;->f:I

    invoke-virtual {p1, p2}, Lhnd$a;->b(I)Lhnd$a;

    move-result-object p1

    iget p2, p0, Ljhd;->g:I

    invoke-virtual {p1, p2}, Lhnd$a;->n(I)Lhnd$a;

    move-result-object p1

    iget-boolean p2, p0, Ljhd;->h:Z

    invoke-virtual {p1, p2}, Lhnd$a;->o(Z)Lhnd$a;

    move-result-object p1

    iget-object p2, p0, Ljhd;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, p2}, Lhnd$a;->j(Ljavax/net/ssl/SSLSocketFactory;)Lhnd$a;

    move-result-object p1

    iget-object p2, p0, Ljhd;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, p2}, Lhnd$a;->i(Ljavax/net/ssl/HostnameVerifier;)Lhnd$a;

    move-result-object p1

    iget-boolean p0, p0, Ljhd;->k:Z

    invoke-virtual {p1, p0}, Lhnd$a;->w(Z)Lhnd$a;

    return-void
.end method


# virtual methods
.method public a()Lct8;
    .locals 1

    new-instance v0, Lct8;

    invoke-direct {v0, p0}, Lct8;-><init>(Ljhd;)V

    return-object v0
.end method

.method public abstract b()Lhnd;
.end method

.method public c()Lhnd;
    .locals 0

    invoke-virtual {p0}, Ljhd;->b()Lhnd;

    move-result-object p0

    return-object p0
.end method
