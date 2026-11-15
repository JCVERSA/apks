.class public abstract Lil/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Object;

.field protected final c:Lcom/transsion/http/d/h;

.field protected final d:Z

.field protected final e:Ljava/util/Map;

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Ljavax/net/ssl/SSLSocketFactory;

.field protected j:Ljavax/net/ssl/HostnameVerifier;

.field protected k:Lil/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lil/e$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lil/e$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lil/c;->k:Lil/e$a;

    .line 10
    .line 11
    iput-object p1, p0, Lil/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lil/c;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p3, p0, Lil/c;->c:Lcom/transsion/http/d/h;

    .line 16
    .line 17
    iput-object p4, p0, Lil/c;->e:Ljava/util/Map;

    .line 18
    .line 19
    iput-boolean p5, p0, Lil/c;->d:Z

    .line 20
    .line 21
    iput p6, p0, Lil/c;->f:I

    .line 22
    .line 23
    iput p7, p0, Lil/c;->g:I

    .line 24
    .line 25
    iput-boolean p8, p0, Lil/c;->h:Z

    .line 26
    .line 27
    iput-object p9, p0, Lil/c;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 28
    .line 29
    iput-object p10, p0, Lil/c;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lil/e$a;->n(Ljava/lang/String;)Lil/e$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lil/e$a;->e(Ljava/lang/Object;)Lil/e$a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p3}, Lil/e$a;->d(Lcom/transsion/http/d/h;)Lil/e$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p4}, Lil/e$a;->f(Ljava/util/Map;)Lil/e$a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p5}, Lil/e$a;->o(Z)Lil/e$a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p0, Lil/c;->f:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lil/e$a;->b(I)Lil/e$a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p2, p0, Lil/c;->g:I

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lil/e$a;->l(I)Lil/e$a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-boolean p2, p0, Lil/c;->h:Z

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lil/e$a;->i(Z)Lil/e$a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lil/c;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lil/e$a;->h(Ljavax/net/ssl/SSLSocketFactory;)Lil/e$a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, p0, Lil/c;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lil/e$a;->g(Ljavax/net/ssl/HostnameVerifier;)Lil/e$a;

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public a()Lel/b;
    .locals 1

    .line 1
    new-instance v0, Lel/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lel/b;-><init>(Lil/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected abstract b()Lil/e;
.end method

.method public c()Lil/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lil/c;->b()Lil/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
