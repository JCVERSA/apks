.class Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/j;


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
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l:Lst/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lst/j;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
