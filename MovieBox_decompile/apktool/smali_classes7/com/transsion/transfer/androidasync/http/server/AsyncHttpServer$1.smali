.class Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->k(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Lcom/transsion/transfer/androidasync/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;Lcom/transsion/transfer/androidasync/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/c;->Y(Lcom/transsion/transfer/androidasync/j;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->resume()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
