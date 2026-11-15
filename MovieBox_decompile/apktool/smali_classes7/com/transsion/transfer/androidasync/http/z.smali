.class public Lcom/transsion/transfer/androidasync/http/z;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/z$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/z;->a:Ljava/util/Hashtable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "GmsCore_OpenSSL"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public b(Ljavax/net/ssl/SSLEngine;Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/z;->c(Ljavax/net/ssl/SSLEngine;)Lcom/transsion/transfer/androidasync/http/z$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/z$a;->b(Ljavax/net/ssl/SSLEngine;Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method c(Ljavax/net/ssl/SSLEngine;)Lcom/transsion/transfer/androidasync/http/z$a;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/z;->a:Ljava/util/Hashtable;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/transsion/transfer/androidasync/http/z$a;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/transfer/androidasync/http/z$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/http/z$a;-><init>(Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/z;->a:Ljava/util/Hashtable;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v1
.end method
