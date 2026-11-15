.class public Lcom/transsion/transfer/androidasync/http/n;
.super Lcom/transsion/transfer/androidasync/http/t;
.source "source.java"


# instance fields
.field protected j:Ljavax/net/ssl/SSLContext;

.field protected k:[Ljavax/net/ssl/TrustManager;

.field protected l:Ljavax/net/ssl/HostnameVerifier;

.field protected m:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V
    .locals 2

    .line 1
    const-string v0, "https"

    .line 2
    .line 3
    const/16 v1, 0x1bb

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/http/t;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/transfer/androidasync/http/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected B(Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/n;->D()Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/transsion/transfer/androidasync/http/m;

    .line 23
    .line 24
    invoke-interface {v2, v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/m;->a(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/transsion/transfer/androidasync/http/m;

    .line 47
    .line 48
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/m;->b(Ljavax/net/ssl/SSLEngine;Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-object v2
.end method

.method protected C(Lcom/transsion/transfer/androidasync/http/g$a;Lst/b;)Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;
    .locals 0

    .line 1
    new-instance p1, Lcom/transsion/transfer/androidasync/http/n$a;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Lcom/transsion/transfer/androidasync/http/n$a;-><init>(Lcom/transsion/transfer/androidasync/http/n;Lst/b;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public D()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n;->j:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p()Ljavax/net/ssl/SSLContext;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    return-object v0
.end method

.method protected E(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILst/b;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/n;->B(Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/n;->k:[Ljavax/net/ssl/TrustManager;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/n;->l:Ljavax/net/ssl/HostnameVerifier;

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    invoke-virtual {p0, p2, p5}, Lcom/transsion/transfer/androidasync/http/n;->C(Lcom/transsion/transfer/androidasync/http/g$a;Lst/b;)Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    move-object v0, p1

    .line 23
    move v2, p4

    .line 24
    invoke-static/range {v0 .. v7}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLst/b;)Lst/b;
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/transfer/androidasync/http/n$b;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p5

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    move v6, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/n$b;-><init>(Lcom/transsion/transfer/androidasync/http/n;Lst/b;ZLcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method
