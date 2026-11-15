.class public final Lil/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lil/e$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/transsion/http/d/h;

.field private final g:Z

.field private final h:Ljava/util/Map;

.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/transsion/http/d/a;

.field private final l:Z

.field private final m:Ljavax/net/ssl/SSLSocketFactory;

.field private final n:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Lil/e$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lil/e$a;->a(Lil/e$a;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lil/e;->a:I

    .line 9
    .line 10
    invoke-static {p1}, Lil/e$a;->k(Lil/e$a;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lil/e;->b:I

    .line 15
    .line 16
    invoke-static {p1}, Lil/e$a;->u(Lil/e$a;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lil/e$a;->v(Lil/e$a;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lil/e;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Lil/e$a;->w(Lil/e$a;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lil/e;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Lil/e$a;->x(Lil/e$a;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {p1}, Lil/e$a;->x(Lil/e$a;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, p0

    .line 43
    :goto_0
    iput-object v0, p0, Lil/e;->e:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {p1}, Lil/e$a;->y(Lil/e$a;)Lcom/transsion/http/d/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lil/e;->f:Lcom/transsion/http/d/h;

    .line 50
    .line 51
    invoke-static {p1}, Lil/e$a;->z(Lil/e$a;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lil/e;->h:Ljava/util/Map;

    .line 56
    .line 57
    invoke-static {p1}, Lil/e$a;->A(Lil/e$a;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput-boolean v0, p0, Lil/e;->g:Z

    .line 62
    .line 63
    invoke-static {p1}, Lil/e$a;->B(Lil/e$a;)Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lil/e;->i:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {p1}, Lil/e$a;->p(Lil/e$a;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lil/e;->j:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1}, Lil/e$a;->q(Lil/e$a;)Lcom/transsion/http/d/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lil/e;->k:Lcom/transsion/http/d/a;

    .line 80
    .line 81
    invoke-static {p1}, Lil/e$a;->r(Lil/e$a;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput-boolean v0, p0, Lil/e;->l:Z

    .line 86
    .line 87
    invoke-static {p1}, Lil/e$a;->s(Lil/e$a;)Ljavax/net/ssl/SSLSocketFactory;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lil/e;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    .line 93
    invoke-static {p1}, Lil/e$a;->t(Lil/e$a;)Ljavax/net/ssl/HostnameVerifier;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lil/e;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lil/e;->a:I

    .line 2
    .line 3
    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lil/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/transsion/http/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->k:Lcom/transsion/http/d/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lcom/transsion/http/d/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->f:Lcom/transsion/http/d/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lil/e;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lil/e;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lil/e;->g:Z

    .line 2
    .line 3
    return v0
.end method
