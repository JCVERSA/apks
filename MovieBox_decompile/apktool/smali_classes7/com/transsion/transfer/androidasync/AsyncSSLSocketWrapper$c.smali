.class Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 5
    .line 6
    invoke-interface {v1, p1, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 11
    .line 12
    new-instance v1, Ljavax/net/ssl/SSLException;

    .line 13
    .line 14
    const-string v2, "socket closed during handshake"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
