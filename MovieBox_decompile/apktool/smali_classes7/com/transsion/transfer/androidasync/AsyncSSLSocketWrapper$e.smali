.class Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;-><init>(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p:Z

    .line 10
    .line 11
    iput-object p1, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->q:Ljava/lang/Exception;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lst/a;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
