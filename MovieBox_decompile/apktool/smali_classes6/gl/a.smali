.class public Lgl/a;
.super Lgl/b;
.source "source.java"


# instance fields
.field private j:Z

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgl/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgl/a;->k:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e()Lel/b;
    .locals 14

    .line 1
    new-instance v13, Lil/d;

    .line 2
    .line 3
    iget-object v1, p0, Lgl/a;->k:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lgl/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lgl/a;->j:Z

    .line 8
    .line 9
    iget-object v4, p0, Lgl/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v5, Lcom/transsion/http/d/h;->a:Lcom/transsion/http/d/h;

    .line 12
    .line 13
    iget-object v6, p0, Lgl/b;->c:Ljava/util/Map;

    .line 14
    .line 15
    iget-boolean v7, p0, Lgl/b;->d:Z

    .line 16
    .line 17
    iget v8, p0, Lgl/b;->e:I

    .line 18
    .line 19
    iget v9, p0, Lgl/b;->f:I

    .line 20
    .line 21
    iget-boolean v10, p0, Lgl/b;->g:Z

    .line 22
    .line 23
    iget-object v11, p0, Lgl/b;->h:Ljavax/net/ssl/SSLSocketFactory;

    .line 24
    .line 25
    iget-object v12, p0, Lgl/b;->i:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    .line 27
    move-object v0, v13

    .line 28
    invoke-direct/range {v0 .. v12}, Lil/d;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v13}, Lil/c;->a()Lel/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public f(Z)Lgl/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lgl/a;->j:Z

    .line 2
    .line 3
    return-object p0
.end method
